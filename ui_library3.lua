
local Release = "Prerelease Beta 5.03Meow"
local debugV = false

local function _rndStr(len)
	len = len or 12
	local chars = "abcdefghijklmnopqrstuvwxyz0123456789"
	local buf = {}
	for i = 1, len do
		local r = math.random(1, #chars)
		buf[i] = chars:sub(r, r)
	end
	return table.concat(buf)
end
local _uid = _rndStr(8)

-- ═══════════════════════════════════════════════════════════════
--  Emulation layer: cloneref game, shielded calls, core-GUI disguise
-- ═══════════════════════════════════════════════════════════════
local _cref = typeof(cloneref) == "function" and cloneref or function(x) return x end
local _game = _cref(game)
local _ncc = typeof(newcclosure) == "function" and newcclosure or function(f) return f end

local function _shieldedHttpGet(url)
	return _game:HttpGet(url)
end

local function _shieldedGetObjects(assetId)
	local s = "rbxassetid://" .. tostring(assetId)
	local ok, res = pcall(_game.GetObjects, _game, s)
	if ok and res and res[1] then return res[1] end
	return nil
end

local function _hideProp(inst, prop, value)
	if typeof(sethiddenproperty) == "function" then
		pcall(sethiddenproperty, inst, prop, value)
	end
end

local Starlight = {

 InterfaceBuild = "B5B9",

 WindowKeybind = "K",

 Minimized = false,
 Maximized = false,
 NotificationsOpen = false,
 DialogOpen = false,

 Window = nil,
 Notifications = nil,
 Instance = nil,
 OnDestroy = nil,

 FileSystem = {
 Folder = "AppData_" .. _uid,
 FileExtension = ".cfg",

 AutoloadConfigPath = nil,
 AutoloadThemePath = nil,
 },
}





local HoverFX = nil
local HoverFXReady = false
local _hfxDebugFlag = (getgenv and getgenv().__HOVERFX_DEBUG) or false

local HoverFXDefaults = {
	HoverSoundId = nil,
	ClickSoundId = nil,
	SoundVolume = 0.35,
	SoundCooldown = 0.08,
}







local function EmbeddedHoverFX_create()
	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local DebrisService = game:GetService("Debris")

	local TI = function(t, ease, dir)
		return TweenInfo.new(t, ease or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out)
	end

	local registry = setmetatable({}, { __mode = "k" })

	local function destroyState(gui)
		local st = registry[gui]
		if not st then return end
		for _, c in ipairs(st.conns or {}) do
			pcall(function() c:Disconnect() end)
		end
		registry[gui] = nil
	end

	local function getState(gui)
		local st = registry[gui]
		if st then return st end
		st = { conns = {}, presets = {} }
		registry[gui] = st
		gui.Destroying:Connect(function()
			destroyState(gui)
		end)
		return st
	end

	local function connect(gui, fn)
		local c = fn()
		if c and c.Disconnect then
			table.insert(getState(gui).conns, c)
		end
	end

	local attach = function(gui, preset, options)
		if typeof(gui) ~= "Instance" or not gui:IsA("GuiObject") then return end
		options = options or {}

		local st = getState(gui)
		if st.presets[preset] then return end
		st.presets[preset] = true

		if preset == "RippleClick" then
			
			local function rippleLocalFromInput(input)
				local okRel, rel = pcall(function()
					return gui:GetRelativeMousePosition()
				end)
				if okRel and typeof(rel) == "Vector2" then
					return rel
				end

				local screenPos
				if input then
					local pos = input.Position
					if typeof(pos) == "Vector3" then
						screenPos = Vector2.new(pos.X, pos.Y)
					elseif typeof(pos) == "Vector2" then
						screenPos = pos
					end
				end
				if not screenPos then
					screenPos = UserInputService:GetMouseLocation()
				end

				return screenPos - gui.AbsolutePosition
			end

			local function spawnRip(input)
				local ax, ay = gui.AbsoluteSize.X, gui.AbsoluteSize.Y
				if ax < 1 or ay < 1 then
					return
				end
				local lp = rippleLocalFromInput(input)
				lp = Vector2.new(math.clamp(lp.X, 0, ax), math.clamp(lp.Y, 0, ay))

				local baseColor = options.RippleColor or Color3.fromRGB(255, 255, 255)
				local fillStart = options.RippleTransparency ~= nil and options.RippleTransparency or 0.62

				local ripple = Instance.new("Frame")
				ripple.Name = "_r" .. _rndStr(6)
				ripple.BackgroundColor3 = baseColor
				ripple.BackgroundTransparency = fillStart
				ripple.BorderSizePixel = 0
				ripple.AnchorPoint = Vector2.new(0.5, 0.5)
				ripple.ZIndex = gui.ZIndex + 60
				ripple.Parent = gui
				local uc = Instance.new("UICorner")
				uc.CornerRadius = UDim.new(1, 0)
				uc.Parent = ripple

				
				local ring = Instance.new("UIStroke")
				ring.Name = "_rr" .. _rndStr(6)
				ring.Color = baseColor
				ring.Thickness = 2
				ring.Transparency = 0.15
				ring.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				ring.LineJoinMode = Enum.LineJoinMode.Round
				ring.Parent = ripple

				ripple.Position = UDim2.new(0, lp.X, 0, lp.Y)
				local calculated = math.min(ax, ay) * (options.RippleScale or 1.32)
				local span = math.min(calculated, ax * 2.2, ay * 2.2)
				ripple.Size = UDim2.fromOffset(0, 0)
				local dur = options.RippleDuration or 0.42
				local ripEase = TweenInfo.new(
					dur,
					Enum.EasingStyle.Quint,
					Enum.EasingDirection.Out
				)

				TweenService:Create(ripple, ripEase, {
					Size = UDim2.fromOffset(span, span),
					BackgroundTransparency = 1,
				}):Play()
				TweenService:Create(ring, ripEase, {
					Transparency = 1,
					Thickness = math.max(6, span * 0.04),
				}):Play()

				
				task.defer(function()
					if not gui.Parent then
						return
					end
					local echo = Instance.new("Frame")
					echo.Name = "_re" .. _rndStr(6)
					echo.BackgroundTransparency = 1
					echo.BorderSizePixel = 0
					echo.AnchorPoint = Vector2.new(0.5, 0.5)
					echo.Position = UDim2.new(0, lp.X, 0, lp.Y)
					echo.Size = UDim2.fromOffset(span * 0.12, span * 0.12)
					echo.ZIndex = gui.ZIndex + 59
					echo.Parent = gui
					local ec = Instance.new("UICorner")
					ec.CornerRadius = UDim.new(1, 0)
					ec.Parent = echo
					local es = Instance.new("UIStroke")
					es.Color = baseColor
					es.Thickness = 1.5
					es.Transparency = 0.55
					es.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					es.LineJoinMode = Enum.LineJoinMode.Round
					es.Parent = echo
					local echoDur = dur * 0.85
					local echoEase = TweenInfo.new(echoDur, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					task.delay(0.045, function()
						if not echo.Parent then
							return
						end
						TweenService:Create(echo, echoEase, { Size = UDim2.fromOffset(span * 0.92, span * 0.92) }):Play()
						TweenService:Create(es, echoEase, { Transparency = 1, Thickness = math.max(4, span * 0.028) }):Play()
					end)
					DebrisService:AddItem(echo, echoDur + 0.12)
				end)

				DebrisService:AddItem(ripple, dur + 0.12)
			end

			if gui:IsA("GuiButton") then
				connect(gui, function()
					return gui.InputBegan:Connect(function(inp, processed)
						if processed then
							return
						end
						if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
							spawnRip(inp)
						end
					end)
				end)
			else
				connect(gui, function()
					return gui.InputBegan:Connect(function(inp)
						if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
							spawnRip(inp)
						end
					end)
				end)
			end
			return
		end

		
		if preset == "Wave" then
			local amt = (options.WaveAmount or 7) * 0.004
			local half = (options.WaveDuration or 0.22) * 0.45
			local waveName = "_ws" .. _rndStr(6)
			connect(gui, function()
				return gui.MouseEnter:Connect(function()
					local us = gui:FindFirstChild(waveName)
					if not us or not us:IsA("UIScale") then
						if us then pcall(function() us:Destroy() end) end
						us = Instance.new("UIScale")
						us.Name = waveName
						us.Scale = 1
						us.Parent = gui
					end
					local base = typeof(us.Scale) == "number" and us.Scale or 1
					TweenService
						:Create(us, TI(half, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = base + amt })
						:Play()
					task.delay(half, function()
						if us.Parent then
							TweenService
								:Create(us, TI(half, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = base })
								:Play()
						end
					end)
				end)
			end)
			return
		end

		if preset == "Sound" then
			local ck = Instance.new("Sound")
			ck.Volume = options.SoundVolume or 0.35
			ck.Parent = gui
			if options.ClickSoundId then
				pcall(function() ck.SoundId = options.ClickSoundId end)
			end

			local lastS = 0
			local scd = options.SoundCooldown or 0.08

			local fireClickSound = function()
				local tn = tick()
				if tn - lastS < scd then return end
				lastS = tn
				if ck.SoundId and ck.SoundId ~= "" then pcall(function() ck:Stop(); ck.TimePosition = 0; ck:Play() end) end
			end

			if gui:IsA("GuiButton") then
				
				connect(gui, function()
					return gui.MouseButton1Click:Connect(fireClickSound)
				end)
			else
				connect(gui, function()
					return gui.InputBegan:Connect(function(inp, gp)
						if gp then return end
						if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
							fireClickSound()
						end
					end)
				end)
			end
			return
		end

		if preset == "IconWiggle" then
			local icon = gui:FindFirstChild("Icon") or gui:FindFirstChildWhichIsA("ImageLabel") or gui:FindFirstChildWhichIsA("ImageButton")
			if not icon or not icon:IsA("GuiObject") then return end
			local origin = icon.Rotation
			connect(gui, function()
				return gui.MouseEnter:Connect(function()
					TweenService:Create(icon, TI(0.12, Enum.EasingStyle.Quad), { Rotation = origin + (options.IconWiggleAngle or 10) })
						:Play()
				end)
			end)
			connect(gui, function()
				return gui.MouseLeave:Connect(function()
					TweenService:Create(icon, TI(0.12, Enum.EasingStyle.Quad), { Rotation = origin }):Play()
				end)
			end)
			return
		end

		
	end

	return { attach = attach }
end

do
	local HOVERFX_ASSET = "rbxassetid://80735117518904"
	local _hfxStatusLogged = false

	local function _hfxLog(msg)
		if not _hfxStatusLogged then
			warn("[FX] " .. msg)
			_hfxStatusLogged = true
		end
	end

	local function _hfxDiag(msg)
		if _hfxDebugFlag then
			warn("[FX][diag] " .. msg)
		end
	end

	local function _hfxValidate(mod)
		return type(mod) == "table" and type(mod.attach) == "function"
	end

	
	local function _hfxTryGetObjects()
		local okObjects, objects = pcall(function()
			return _game:GetObjects(HOVERFX_ASSET)
		end)
		if not okObjects then
			_hfxDiag("GetObjects pcall error: " .. tostring(objects))
			return nil
		end
		if not objects or #objects == 0 then
			_hfxDiag("GetObjects returned empty list for " .. HOVERFX_ASSET .. " (try InsertService or pre-placed module)")
			return nil
		end

		local obj = objects[1]
		local objName, objClass = "?", "?"
		pcall(function() objName = obj.Name end)
		pcall(function() objClass = obj.ClassName end)
		_hfxDiag("GetObjects[1] => type=" .. typeof(obj) .. "  ClassName=" .. objClass .. "  Name=" .. objName)

		if typeof(obj) == "Instance" and obj:IsA("ModuleScript") then
			_hfxDiag("Object is ModuleScript — requiring directly")
			local mod = require(obj)
			if _hfxValidate(mod) then
				_hfxLog("Loaded via GetObjects (direct ModuleScript)")
				return mod
			end
			_hfxDiag("require() OK but module missing .attach — invalid")
			return nil
		end

		if typeof(obj) == "Instance" then
			for _, name in ipairs({"HoverFX", "HoverFx"}) do
				local found = obj:FindFirstChild(name, true)
				if found and found:IsA("ModuleScript") then
					_hfxDiag("Named descendant '" .. name .. "' found: " .. found:GetFullName())
					local mod = require(found)
					if _hfxValidate(mod) then
						_hfxLog("Loaded via GetObjects (descendant ModuleScript)")
						return mod
					end
				end
			end

			local firstMs = obj:FindFirstChildWhichIsA("ModuleScript", true)
			if firstMs then
				_hfxDiag("Trying first ModuleScript descendant: " .. firstMs:GetFullName())
				local mod = require(firstMs)
				if _hfxValidate(mod) then
					_hfxLog("Loaded via GetObjects (first descendant)")
					return mod
				end
			end

			_hfxDiag("GetObjects: No valid HoverFX ModuleScript with .attach")
		end

		return nil
	end

	
	local function _hfxTryInsertService()
		local RunService = game:GetService("RunService")
		if RunService:IsClient() then
			_hfxDiag(
				"InsertService:LoadAsset skipped — Roblox does not allow this from LocalScripts (executor/client). Embedded shim will activate if HoverFX ModuleScript absent from storage."
			)
			return nil
		end
		local InsertService = game:GetService("InsertService")
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local HOVERFX_NUM_ID = tonumber((HOVERFX_ASSET:match("(%d+)"))) or 80735117518904

		local okLoad, inserted = pcall(function()
			return InsertService:LoadAsset(HOVERFX_NUM_ID)
		end)
		if not okLoad or typeof(inserted) ~= "Instance" then
			_hfxDiag("InsertService:LoadAsset failed or returned non-Instance: " .. tostring(inserted))
			return nil
		end

		local root = inserted
		local ms = nil

		if root:IsA("ModuleScript") and root.Name == "HoverFX" then
			ms = root
		elseif root:IsA("Model") then
			local hover = root:FindFirstChild("HoverFX")
			ms = hover and hover:IsA("ModuleScript") and hover or root:FindFirstChild("HoverFX", true)
			if ms and not ms:IsA("ModuleScript") then ms = nil end
			if not ms then
				for _, desc in ipairs(root:GetDescendants()) do
					if desc:IsA("ModuleScript") and desc.Name == "HoverFX" then
						ms = desc
						break
					end
				end
			end
		else
			ms = root:FindFirstChild("HoverFX", true)
			if ms and not ms:IsA("ModuleScript") then ms = nil end
		end

		if not ms or not ms:IsA("ModuleScript") then
			_hfxDiag("InsertService: found no HoverFX ModuleScript under inserted instance " .. inserted.ClassName)
			pcall(function() inserted:Destroy() end)
			return nil
		end

		_hfxDiag("InsertService: HoverFX ModuleScript path = " .. ms:GetFullName())

		local stageName = "_stg_" .. _rndStr(8)
		local oldStage = ReplicatedStorage:FindFirstChild(stageName)
		if oldStage then pcall(function() oldStage:Destroy() end) end

		local stage = Instance.new("Folder")
		stage.Name = stageName
		stage.Parent = ReplicatedStorage

		local clone = ms:Clone()
		clone.Parent = stage

		local rq, reqResult = pcall(require, clone)
		pcall(function() inserted:Destroy() end)

		if rq and _hfxValidate(reqResult) then
			_hfxLog("Loaded via InsertService:LoadAsset + ReplicatedStorage staging require — keep Folder " .. stageName)
			return reqResult
		end

		_hfxDiag("InsertService: require(staged clone) invalid: " .. tostring(reqResult))
		pcall(function() stage:Destroy() end)
		return nil
	end

	local function _hfxTryPreloaded()
		local searchRoots = {}
		pcall(function() searchRoots[#searchRoots + 1] = game:GetService("ReplicatedStorage") end)
		pcall(function() searchRoots[#searchRoots + 1] = game:GetService("CoreGui") end)
		pcall(function()
			if typeof(gethui) == "function" then searchRoots[#searchRoots + 1] = gethui() end
		end)
		for _, root in ipairs(searchRoots) do
			for _, name in ipairs({"HoverFX", "HoverFx", "hoverfx"}) do
				local found = root:FindFirstChild(name, true)
				if found and found:IsA("ModuleScript") then
					local rok, mod = pcall(require, found)
					if rok and _hfxValidate(mod) then
						_hfxLog("Loaded via preloaded module: " .. found:GetFullName())
						return mod
					end
				end
			end
		end
		return nil
	end

	
	local _useExternalHoverFX = type(getgenv) == "function" and getgenv().__HOVERFX_EXTERNAL == true
	local _hfxMod = nil
	if _useExternalHoverFX then
		_hfxMod = _hfxTryPreloaded() or _hfxTryGetObjects() or _hfxTryInsertService()
	end
	if not _hfxMod or not _hfxValidate(_hfxMod) then
		_hfxMod = EmbeddedHoverFX_create()
	end
	HoverFX = _hfxMod
	HoverFXReady = true
end

local function AttachHoverFX(guiObj, preset, options)
	if not HoverFXReady or not HoverFX then return end
	local ok, err = pcall(function()
		HoverFX.attach(guiObj, preset, options or {})
	end)
	if not ok then
		warn("[FX] AttachHoverFX error: " .. tostring(err))
	end
end

local function AttachAllHoverFX(guiObj, includeIcon, interactionTarget)
	if not HoverFXReady then return end

	local fxTarget = guiObj
	if typeof(interactionTarget) == "Instance" and interactionTarget:IsA("GuiObject") then
		fxTarget = interactionTarget
	end

	AttachHoverFX(fxTarget, "RippleClick")
	AttachHoverFX(fxTarget, "Wave", { WaveAmount = 6, WaveDuration = 0.22 })

	local soundOpts = {}
	if HoverFXDefaults.ClickSoundId then
		soundOpts.ClickSoundId = HoverFXDefaults.ClickSoundId
	end
	if HoverFXDefaults.SoundVolume then
		soundOpts.SoundVolume = HoverFXDefaults.SoundVolume
	end
	if HoverFXDefaults.SoundCooldown then
		soundOpts.SoundCooldown = HoverFXDefaults.SoundCooldown
	end
	if soundOpts.ClickSoundId then
		AttachHoverFX(fxTarget, "Sound", soundOpts)
	end

	if includeIcon then
		local iconChild = guiObj:FindFirstChild("Icon", true)
			or guiObj:FindFirstChildWhichIsA("ImageLabel", true)
			or guiObj:FindFirstChildWhichIsA("ImageButton", true)
		if iconChild then
			AttachHoverFX(guiObj, "IconWiggle")
		end
	end
end


local _starlightClickSoundInst = nil
local _starlightClickLast = 0
local function PlayStarlightClickSound()
	local id = HoverFXDefaults.ClickSoundId
	if typeof(id) ~= "string" or id == "" then
		return
	end
	local now = tick()
	local cd = (typeof(HoverFXDefaults.SoundCooldown) == "number" and HoverFXDefaults.SoundCooldown) or 0.08
	if now - _starlightClickLast < cd then
		return
	end
	_starlightClickLast = now
	if not _starlightClickSoundInst or not _starlightClickSoundInst.Parent then
		_starlightClickSoundInst = Instance.new("Sound")
		_starlightClickSoundInst.Name = "_snd" .. _rndStr(6)
		_starlightClickSoundInst.Parent = _cref(_game:GetService("SoundService"))
	end
	local vol = (typeof(HoverFXDefaults.SoundVolume) == "number" and HoverFXDefaults.SoundVolume) or 0.35
	pcall(function()
		_starlightClickSoundInst.Volume = vol
		_starlightClickSoundInst.SoundId = id
		_starlightClickSoundInst:Stop()
		_starlightClickSoundInst.TimePosition = 0
		_starlightClickSoundInst:Play()
	end)
end







local function GetService(serviceName)
 return _cref(_game:GetService(serviceName))
end
local Lighting = GetService("Lighting")
local Players = GetService("Players")
local Teams = GetService("Teams")
local StatsService = GetService("Stats")
local RunService = GetService("RunService")
local UserInputService = GetService("UserInputService")
local TweenService = GetService("TweenService")
local HttpService = GetService("HttpService")
local Localization = GetService("LocalizationService")
local CollectionService = GetService("CollectionService")
local TeleportService = GetService("TeleportService")
local TextService = GetService("TextService")
local GuiService = GetService("GuiService")
local MarketplaceService = GetService("MarketplaceService")
local ReplicatedStorage = GetService("ReplicatedStorage")
local ContentProvider = GetService("ContentProvider")
local CoreGui = GetService("CoreGui")
local InputManager

if not (getgenv and getgenv().SecureMode) then
	pcall(function()
		InputManager = GetService("VirtualInputManager")
	end)
end

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()
local GuiInset, _ = GuiService:GetGuiInset()
GuiInset = GuiInset.Y - 20
local themeEvent = Instance.new("BindableEvent")

local mainAcrylic = false
local notificationAcrylic = true
local acrylicEvent = Instance.new("BindableEvent")
local notificationAcrylicEvent = Instance.new("BindableEvent")
local acrylicFlag = false 
if getgenv then
 if getgenv().NoAnticheat == nil or getgenv().NoAnticheat == true then
 acrylicFlag = true
 end
 if getgenv().SecureMode then
 acrylicFlag = false
 end
else
 if RunService:IsStudio() then
 acrylicFlag = true
 end
end

local isStudio = RunService:IsStudio() or false
local website = "nebulasoftworks.xyz/starlight"
local Acrylic
if isStudio then
	Acrylic = require(ReplicatedStorage.AcrylicBundled)
elseif not (getgenv and getgenv().SecureMode) then
	local _aOk, _aRes = pcall(function()
		return loadstring(_shieldedHttpGet("https://raw." .. website .. "/AcrylicModule.luau"))()
	end)
	if _aOk then Acrylic = _aRes end
end
if not Acrylic then
	-- Stub: produces a Frame named "Acrylic" with shadow/tint/Noise children that the library expects
	Acrylic = {
		Init = function() end,
		AcrylicPaint = function()
			local f = Instance.new("Frame")
			f.Name = "Acrylic"
			f.BackgroundTransparency = 1
			f.BorderSizePixel = 0
			f.Size = UDim2.fromScale(1, 1)
			f.ZIndex = -1
			for _, n in ipairs({ "shadow", "tint", "Noise" }) do
				local c = Instance.new("Frame")
				c.Name = n
				c.BackgroundTransparency = 1
				c.BorderSizePixel = 0
				c.Size = UDim2.fromScale(1, 1)
				c.Parent = f
			end
			return {
				Frame = f,
				AddParent = function(parent)
					if parent and typeof(parent) == "Instance" then
						f.Parent = parent
					end
				end,
			}
		end,
	}
end
Acrylic.Init()

local Request = (fluxus and fluxus.request)
 or (http and http.request)
 or http_request
 or request



local String = {}
local Table = {}
local Color = {}

local Tween = {}
setmetatable(Tween, {
 __call = function(self, object: Instance, goal: table, callback, tweenin)
 if object == nil or typeof(object) ~= "Instance" then
 if callback then
 task.defer(callback)
 end
 return
 end
 local tween = TweenService:Create(object, tweenin or Tween.Info(), goal)
 tween.Completed:Connect(callback or function() end)
 tween:Play()
 end,
})

local Themes = {

 Starlight = {
 Backgrounds = {
 Dark = Color3.fromRGB(23, 25, 29),
 Medium = Color3.fromRGB(27, 29, 33),
 Light = Color3.fromRGB(33, 34, 38),
 Groupbox = Color3.fromRGB(33, 36, 42),
 Highlight = Color3.fromRGB(17, 19, 22),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(165, 165, 165),
 Dark = Color3.fromRGB(65, 69, 77),
 MediumHover = Color3.fromRGB(185, 185, 185),
 DarkHover = Color3.fromRGB(85, 89, 97),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(117, 128, 149),
 Shadow = Color3.fromRGB(19, 21, 24),
 LighterShadow = Color3.fromRGB(24, 25, 30),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(230, 186, 251)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(161, 169, 225)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(138, 201, 242)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(241, 212, 251)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(187, 192, 225)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(195, 227, 242)),
 }),
 },
 },
	Sphincter = {
		Backgrounds = {
			Dark = Color3.fromRGB(16, 17, 21),
			Medium = Color3.fromRGB(22, 23, 28),
			Light = Color3.fromRGB(30, 31, 36),
			Groupbox = Color3.fromRGB(26, 27, 33),
			Highlight = Color3.fromRGB(12, 13, 16),
		},
		Foregrounds = {
			Active = Color3.fromRGB(250, 250, 252),
			Light = Color3.fromRGB(228, 229, 234),
			Medium = Color3.fromRGB(150, 152, 162),
			Dark = Color3.fromRGB(88, 90, 98),
			MediumHover = Color3.fromRGB(200, 202, 212),
			DarkHover = Color3.fromRGB(118, 120, 132),
		},
		Miscellaneous = {
			Divider = Color3.fromRGB(58, 56, 72),
			Shadow = Color3.fromRGB(6, 7, 10),
			LighterShadow = Color3.fromRGB(20, 21, 26),
		},
		Accents = {
			Main = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(150, 132, 205)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(124, 118, 190)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(108, 134, 210)),
			}),
			Brighter = ColorSequence.new({
				ColorSequenceKeypoint.new(0.0, Color3.fromRGB(178, 162, 222)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(148, 142, 212)),
				ColorSequenceKeypoint.new(1.0, Color3.fromRGB(132, 158, 228)),
			}),
		},
	},
 ["Hollywood Dark"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(8, 8, 8),
 Medium = Color3.fromRGB(12, 12, 12),
 Light = Color3.fromRGB(15, 15, 15),
 Groupbox = Color3.fromRGB(14, 14, 14),
 Highlight = Color3.fromRGB(13, 13, 13),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(165, 165, 165),
 Dark = Color3.fromRGB(77, 77, 77),
 MediumHover = Color3.fromRGB(185, 185, 185),
 DarkHover = Color3.fromRGB(97, 97, 97),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(199, 199, 199),
 Shadow = Color3.fromRGB(21, 21, 21),
 LighterShadow = Color3.fromRGB(30, 30, 30),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(230, 186, 251)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(161, 169, 225)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(138, 201, 242)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(241, 212, 251)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(187, 192, 225)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(195, 227, 242)),
 }),
 },
 },
 ["Hollywood Light"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(240, 240, 240),
 Medium = Color3.fromRGB(250, 250, 250),
 Light = Color3.fromRGB(255, 255, 255),
 Groupbox = Color3.fromRGB(245, 245, 245),
 Highlight = Color3.fromRGB(217, 217, 217),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(40, 40, 40),
 Medium = Color3.fromRGB(145, 145, 145),
 Dark = Color3.fromRGB(190, 190, 190),
 MediumHover = Color3.fromRGB(125, 125, 125),
 DarkHover = Color3.fromRGB(170, 170, 170),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(40, 40, 40),
 Shadow = Color3.fromRGB(179, 179, 179),
 LighterShadow = Color3.fromRGB(30, 30, 30),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(178, 101, 199)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(73, 77, 135)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(79, 166, 207)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(221, 156, 239)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(135, 146, 214)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(137, 200, 229)),
 }),
 },
 },
 Orca = {
 Backgrounds = {
 Dark = Color3.fromRGB(12, 12, 12),
 Medium = Color3.fromRGB(8, 8, 8),
 Light = Color3.fromRGB(6, 6, 6),
 Groupbox = Color3.fromRGB(8, 8, 8),
 Highlight = Color3.fromRGB(20, 20, 20),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(254, 238, 255),
 Medium = Color3.fromRGB(199, 195, 186),
 Dark = Color3.fromRGB(61, 51, 62),
 MediumHover = Color3.fromRGB(185, 177, 160),
 DarkHover = Color3.fromRGB(81, 71, 82),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(193, 61, 191),
 Shadow = Color3.fromRGB(12, 12, 12),
 LighterShadow = Color3.fromRGB(15, 15, 15),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 170, 0)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 85, 127)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(224, 71, 255)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 202, 78)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 123, 143)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 151, 253)),
 }),
 },
 },
 Glacier = {
 Backgrounds = {
 Dark = Color3.fromRGB(240, 238, 240),
 Medium = Color3.fromRGB(239, 246, 250),
 Light = Color3.fromRGB(244, 254, 255),
 Groupbox = Color3.fromRGB(246, 250, 250),
 Highlight = Color3.fromRGB(191, 211, 217),
 },
 Foregrounds = {
 Active = Color3.fromRGB(0, 0, 0),
 Light = Color3.fromRGB(40, 40, 40),
 Medium = Color3.fromRGB(145, 145, 145),
 Dark = Color3.fromRGB(190, 190, 190),
 MediumHover = Color3.fromRGB(125, 125, 125),
 DarkHover = Color3.fromRGB(170, 170, 170),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(56, 63, 66),
 Shadow = Color3.fromRGB(164, 175, 179),
 LighterShadow = Color3.fromRGB(209, 209, 209),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(196, 222, 255)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 234, 192)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(198, 225, 254)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(228, 239, 255)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 241, 222)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(230, 242, 254)),
 }),
 },
 },
 Pacific = {
 Backgrounds = {
 Dark = Color3.fromRGB(12, 12, 12),
 Medium = Color3.fromRGB(14, 14, 14),
 Light = Color3.fromRGB(6, 6, 6),
 Groupbox = Color3.fromRGB(8, 8, 8),
 Highlight = Color3.fromRGB(20, 20, 20),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(225, 255, 227),
 Medium = Color3.fromRGB(173, 199, 196),
 Dark = Color3.fromRGB(51, 62, 61),
 MediumHover = Color3.fromRGB(157, 185, 179),
 DarkHover = Color3.fromRGB(72, 82, 80),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(85, 255, 127),
 Shadow = Color3.fromRGB(12, 12, 12),
 LighterShadow = Color3.fromRGB(15, 15, 15),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(85, 255, 255)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(85, 255, 127)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(0, 170, 127)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(161, 253, 255)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(175, 255, 198)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(75, 170, 133)),
 }),
 },
 },
 Neo = {
 Backgrounds = {
 Dark = Color3.fromRGB(240, 240, 240),
 Medium = Color3.fromRGB(250, 250, 250),
 Light = Color3.fromRGB(255, 255, 255),
 Groupbox = Color3.fromRGB(245, 245, 245),
 Highlight = Color3.fromRGB(217, 217, 217),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(40, 40, 40),
 Medium = Color3.fromRGB(145, 145, 145),
 Dark = Color3.fromRGB(190, 190, 190),
 MediumHover = Color3.fromRGB(125, 125, 125),
 DarkHover = Color3.fromRGB(170, 170, 170),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(40, 40, 40),
 Shadow = Color3.fromRGB(200, 200, 200),
 LighterShadow = Color3.fromRGB(225, 225, 225),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(7, 7, 7)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(20, 20, 20)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(8, 8, 8)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(26, 26, 26)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 0, 0)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(17, 17, 17)),
 }),
 },
 },
 ["Neo (Dark)"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(13, 13, 13),
 Medium = Color3.fromRGB(16, 16, 16),
 Light = Color3.fromRGB(21, 21, 21),
 Groupbox = Color3.fromRGB(24, 24, 24),
 Highlight = Color3.fromRGB(16, 16, 16),
 },
 Foregrounds = {
 Active = Color3.fromRGB(20, 20, 20),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(165, 165, 165),
 Dark = Color3.fromRGB(77, 77, 77),
 MediumHover = Color3.fromRGB(185, 185, 185),
 DarkHover = Color3.fromRGB(97, 97, 97),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(199, 199, 199),
 Shadow = Color3.fromRGB(21, 21, 21),
 LighterShadow = Color3.fromRGB(30, 30, 30),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(220, 220, 220)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(198, 198, 198)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(230, 230, 230)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(241, 241, 241)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(214, 214, 214)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(253, 253, 253)),
 }),
 },
 },
 Crimson = {
 Backgrounds = {
 Dark = Color3.fromRGB(11, 11, 15),
 Medium = Color3.fromRGB(18, 18, 24),
 Light = Color3.fromRGB(11, 11, 15),
 Groupbox = Color3.fromRGB(18, 18, 24),
 Highlight = Color3.fromRGB(18, 18, 24),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(224, 224, 224),
 Medium = Color3.fromRGB(147, 147, 149),
 Dark = Color3.fromRGB(67, 67, 78),
 MediumHover = Color3.fromRGB(177, 177, 179),
 DarkHover = Color3.fromRGB(97, 97, 107),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(107, 107, 109),
 Shadow = Color3.fromRGB(12, 12, 12),
 LighterShadow = Color3.fromRGB(15, 15, 15),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(216, 79, 104)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(199, 92, 112)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(216, 79, 104)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(199, 92, 112)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(216, 79, 104)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(199, 92, 112)),
 }),
 },
 },
 
 Nebula = {
 Backgrounds = {
 Dark = Color3.fromRGB(1, 4, 9),
 Medium = Color3.fromRGB(14, 18, 26),
 Light = Color3.fromRGB(13, 17, 23),
 Groupbox = Color3.fromRGB(13, 17, 23),
 Highlight = Color3.fromRGB(14, 18, 26),
 },
 Foregrounds = {
 Active = Color3.fromRGB(243, 243, 243),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(170, 177, 191),
 Dark = Color3.fromRGB(33, 38, 45),
 MediumHover = Color3.fromRGB(186, 194, 209),
 DarkHover = Color3.fromRGB(84, 97, 115),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(201, 209, 217),
 Shadow = Color3.fromRGB(12, 12, 12),
 LighterShadow = Color3.fromRGB(15, 15, 15),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(94, 255, 236)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(172, 164, 255)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(191, 0, 255)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(179, 255, 240)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(214, 202, 255)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(220, 133, 255)),
 }),
 },
 },

 Evergreen = {
 Backgrounds = {
 Dark = Color3.fromRGB(41, 50, 54),
 Medium = Color3.fromRGB(45, 53, 59),
 Light = Color3.fromRGB(52, 63, 68),
 Groupbox = Color3.fromRGB(45, 52, 54),
 Highlight = Color3.fromRGB(45, 53, 59),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(224, 224, 224),
 Medium = Color3.fromRGB(211, 198, 170),
 Dark = Color3.fromRGB(122, 132, 120),
 MediumHover = Color3.fromRGB(177, 177, 179),
 DarkHover = Color3.fromRGB(97, 97, 107),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(211, 198, 170),
 Shadow = Color3.fromRGB(43, 48, 47),
 LighterShadow = Color3.fromRGB(48, 54, 53),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(167, 192, 128)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(145, 177, 89)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(167, 192, 128)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(145, 177, 89)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(167, 192, 128)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(145, 177, 89)),
 }),
 },
 },
 Ubuntu = {
 Backgrounds = {
 Dark = Color3.fromRGB(50, 50, 50),
 Medium = Color3.fromRGB(56, 56, 56),
 Light = Color3.fromRGB(62, 62, 62),
 Groupbox = Color3.fromRGB(62, 62, 62),
 Highlight = Color3.fromRGB(50, 50, 50),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(141, 141, 141),
 Dark = Color3.fromRGB(50, 50, 50),
 MediumHover = Color3.fromRGB(100, 100, 100),
 DarkHover = Color3.fromRGB(70, 70, 70),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(226, 88, 30),
 Shadow = Color3.fromRGB(25, 25, 25),
 LighterShadow = Color3.fromRGB(50, 50, 50),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(226, 88, 30)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(226, 114, 70)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(226, 88, 30)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(226, 108, 61)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(226, 149, 111)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(226, 108, 61)),
 }),
 },
 },
 Luna = {
 Backgrounds = {
 Dark = Color3.fromRGB(21, 20, 25),
 Medium = Color3.fromRGB(26, 25, 31),
 Light = Color3.fromRGB(37, 35, 44),
 Groupbox = Color3.fromRGB(39, 34, 43),
 Highlight = Color3.fromRGB(22, 22, 31),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(203, 203, 203),
 Dark = Color3.fromRGB(66, 63, 76),
 MediumHover = Color3.fromRGB(227, 227, 227),
 DarkHover = Color3.fromRGB(98, 98, 98),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(64, 61, 76),
 Shadow = Color3.fromRGB(32, 28, 35),
 LighterShadow = Color3.fromRGB(45, 39, 49),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(117, 164, 206)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(123, 201, 201)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(224, 138, 175)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(152, 193, 221)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(181, 235, 231)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(244, 175, 202)),
 }),
 },
 },
 ["Tokyo Night"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(22, 22, 31),
 Medium = Color3.fromRGB(28, 28, 40),
 Light = Color3.fromRGB(25, 25, 37),
 Groupbox = Color3.fromRGB(25, 25, 37),
 Highlight = Color3.fromRGB(22, 22, 31),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(167, 160, 185),
 Dark = Color3.fromRGB(80, 78, 98),
 MediumHover = Color3.fromRGB(180, 167, 206),
 DarkHover = Color3.fromRGB(88, 82, 130),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(144, 101, 163),
 Shadow = Color3.fromRGB(40, 40, 48),
 LighterShadow = Color3.fromRGB(40, 40, 48),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(132, 116, 163)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(133, 122, 194)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(132, 116, 163)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(133, 122, 194)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(132, 116, 163)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(133, 122, 194)),
 }),
 },
 },
 OperaGX = {
 Backgrounds = {
 Dark = Color3.fromRGB(15, 13, 18),
 Medium = Color3.fromRGB(12, 11, 15),
 Light = Color3.fromRGB(11, 9, 16),
 Groupbox = Color3.fromRGB(6, 5, 8),
 Highlight = Color3.fromRGB(13, 11, 18),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(170, 170, 170),
 Dark = Color3.fromRGB(80, 78, 98),
 MediumHover = Color3.fromRGB(190, 190, 190),
 DarkHover = Color3.fromRGB(122, 117, 130),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(250, 30, 78),
 Shadow = Color3.fromRGB(24, 23, 26),
 LighterShadow = Color3.fromRGB(40, 40, 48),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(250, 30, 78)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(216, 27, 62)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(250, 30, 78)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(216, 27, 62)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(250, 30, 78)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(216, 27, 62)),
 }),
 },
 },
 BBot = {
 Backgrounds = {
 Dark = Color3.fromRGB(35, 35, 35),
 Medium = Color3.fromRGB(40, 40, 40),
 Light = Color3.fromRGB(30, 30, 30),
 Groupbox = Color3.fromRGB(30, 30, 30),
 Highlight = Color3.fromRGB(35, 35, 35),
 },
 Foregrounds = {
 Active = Color3.fromRGB(255, 255, 255),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(180, 180, 180),
 Dark = Color3.fromRGB(82, 82, 82),
 MediumHover = Color3.fromRGB(150, 150, 150),
 DarkHover = Color3.fromRGB(112, 112, 112),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(144, 101, 163),
 Shadow = Color3.fromRGB(20, 20, 20),
 LighterShadow = Color3.fromRGB(40, 40, 40),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(126, 72, 163)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(144, 101, 163)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(167, 97, 218)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(170, 98, 221)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(124, 75, 148)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(179, 131, 218)),
 }),
 },
 },
 ["Hollywood Fluent"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(25, 25, 25),
 Medium = Color3.fromRGB(36, 36, 36),
 Light = Color3.fromRGB(36, 36, 36),
 Groupbox = Color3.fromRGB(30, 30, 30),
 Highlight = Color3.fromRGB(40, 40, 40),
 },
 Foregrounds = {
 Active = Color3.fromRGB(26, 34, 42),
 Light = Color3.fromRGB(255, 255, 255),
 Medium = Color3.fromRGB(165, 165, 165),
 Dark = Color3.fromRGB(77, 77, 77),
 MediumHover = Color3.fromRGB(185, 185, 185),
 DarkHover = Color3.fromRGB(97, 97, 97),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(180, 180, 180),
 Shadow = Color3.fromRGB(42, 42, 42),
 LighterShadow = Color3.fromRGB(35, 35, 35),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(174, 216, 232)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(160, 210, 232)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(174, 216, 232)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(187, 219, 232)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(176, 214, 232)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(187, 219, 232)),
 }),
 },
 },
 ["Catppuccin Mocha"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(24, 24, 37), 
 Medium = Color3.fromRGB(30, 30, 46), 
 Light = Color3.fromRGB(30, 30, 46), 
 Groupbox = Color3.fromRGB(30, 30, 46),
 Highlight = Color3.fromRGB(49, 50, 68) 
 },
 Foregrounds = {
 Active = Color3.fromRGB(205, 214, 244), 
 Light = Color3.fromRGB(205, 214, 244),
 Medium = Color3.fromRGB(166, 173, 200), 
 Dark = Color3.fromRGB(88, 91, 112), 
 MediumHover = Color3.fromRGB(186, 194, 222),
 DarkHover = Color3.fromRGB(127, 132, 156),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(137, 180, 250), 
 Shadow = Color3.fromRGB(17, 17, 27), 
 LighterShadow = Color3.fromRGB(24, 24, 37),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(245, 194, 231)), 
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(203, 166, 247)), 
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(137, 180, 250)), 
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0.0, Color3.fromRGB(250, 217, 233)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(214, 178, 255)),
 ColorSequenceKeypoint.new(1.0, Color3.fromRGB(166, 200, 255)),
 }),
 },
 },
 ["Catppuccin Macchiato"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(24, 25, 38),
 Medium = Color3.fromRGB(36, 39, 58),
 Light = Color3.fromRGB(48, 52, 70),
 Groupbox = Color3.fromRGB(42, 45, 63),
 Highlight = Color3.fromRGB(54, 58, 79),
 },
 Foregrounds = {
 Active = Color3.fromRGB(202, 211, 245),
 Light = Color3.fromRGB(202, 211, 245),
 Medium = Color3.fromRGB(165, 173, 203),
 Dark = Color3.fromRGB(110, 115, 141),
 MediumHover = Color3.fromRGB(184, 192, 224),
 DarkHover = Color3.fromRGB(129, 135, 165),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(183, 189, 248),
 Shadow = Color3.fromRGB(18, 19, 32),
 LighterShadow = Color3.fromRGB(24, 25, 38),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0, Color3.fromRGB(238, 153, 160)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(183, 189, 248)),
 ColorSequenceKeypoint.new(1, Color3.fromRGB(245, 189, 230)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0, Color3.fromRGB(244, 184, 191)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(198, 202, 255)),
 ColorSequenceKeypoint.new(1, Color3.fromRGB(250, 212, 239)),
 }),
 },
 },

 ["Catppuccin Frappe"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(48, 52, 70),
 Medium = Color3.fromRGB(65, 69, 89),
 Light = Color3.fromRGB(81, 87, 109),
 Groupbox = Color3.fromRGB(72, 78, 100),
 Highlight = Color3.fromRGB(92, 97, 122),
 },
 Foregrounds = {
 Active = Color3.fromRGB(198, 208, 245),
 Light = Color3.fromRGB(198, 208, 245),
 Medium = Color3.fromRGB(165, 173, 206),
 Dark = Color3.fromRGB(115, 121, 148),
 MediumHover = Color3.fromRGB(180, 189, 220),
 DarkHover = Color3.fromRGB(136, 142, 170),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(166, 218, 149),
 Shadow = Color3.fromRGB(40, 44, 61),
 LighterShadow = Color3.fromRGB(48, 52, 70),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0, Color3.fromRGB(239, 159, 118)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(229, 200, 144)),
 ColorSequenceKeypoint.new(1, Color3.fromRGB(166, 218, 149)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0, Color3.fromRGB(245, 182, 148)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(238, 215, 170)),
 ColorSequenceKeypoint.new(1, Color3.fromRGB(190, 232, 178)),
 }),
 },
 },

 ["Catppuccin Latte"] = {
 Backgrounds = {
 Dark = Color3.fromRGB(239, 241, 245),
 Medium = Color3.fromRGB(220, 224, 232),
 Light = Color3.fromRGB(230, 233, 239),
 Groupbox = Color3.fromRGB(216, 222, 233),
 Highlight = Color3.fromRGB(204, 208, 218),
 },
 Foregrounds = {
 Active = Color3.fromRGB(76, 79, 105),
 Light = Color3.fromRGB(76, 79, 105),
 Medium = Color3.fromRGB(108, 111, 133),
 Dark = Color3.fromRGB(156, 160, 176),
 MediumHover = Color3.fromRGB(92, 95, 119),
 DarkHover = Color3.fromRGB(137, 142, 162),
 },
 Miscellaneous = {
 Divider = Color3.fromRGB(64, 160, 43),
 Shadow = Color3.fromRGB(76, 79, 105),
 LighterShadow = Color3.fromRGB(108, 111, 133),
 },
 Accents = {
 Main = ColorSequence.new({
 ColorSequenceKeypoint.new(0, Color3.fromRGB(254, 100, 11)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(223, 142, 29)),
 ColorSequenceKeypoint.new(1, Color3.fromRGB(64, 160, 43)),
 }),
 Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 132, 60)),
 ColorSequenceKeypoint.new(0.5, Color3.fromRGB(235, 175, 80)),
 ColorSequenceKeypoint.new(1, Color3.fromRGB(122, 190, 90)),
 }),
 },
 },
 
 
 
 
 
}

local function deepCopy(tbl)
 if type(tbl) ~= "table" then
 return tbl
 end
 local copy = {}
 for k, v in pairs(tbl) do
 copy[k] = deepCopy(v)
 end
 return copy
end
Starlight.Themes = Themes
Starlight.CurrentTheme = deepCopy(Themes.Sphincter)



function Tween.Info(style: string?, direction: string?, time: number?)
 style = style or "Exponential"
 direction = direction or "Out"
 time = time or 0.5
 return TweenInfo.new(time, Enum.EasingStyle[style], Enum.EasingDirection[direction])
end

local NebulaIcons = isStudio and require(ReplicatedStorage.NebulaIcons)

local connections = {}






local function GetNestedValue(tbl, path)
 local current = tbl
 for segment in string.gmatch(path, "[^%.]+") do
 if typeof(current) ~= "table" then
 return nil
 end
 current = current[segment]
 end
 return current
end
local ClassInterfacer = {

 ["Button"] = {},
 ["Toggle"] = {
 "CurrentValue",
 },
 ["Slider"] = {
 "CurrentValue",
 },
 ["Input"] = {
 "CurrentValue",
 },
 ["Label"] = {},
 ["Paragraph"] = {},
 ["Divider"] = {},
 
 ["Bind"] = {
 "CurrentValue",
 },
 ["ColorPicker"] = {
 "CurrentValue",
 "Transparency",
 },
 ["Dropdown"] = {
 "CurrentOption",
 },
}

local ConfigMethods = {
 Save = function(Idx, Data, Type)
 if Type == "ColorPicker" then
 local appendedData = {}
 for i, v in pairs(Data) do
 if i == "CurrentValue" then
 appendedData[i] = Color.Unpack(v)
 else
 appendedData[i] = v
 end
 end
 return {
 type = Type,
 idx = Idx,
 data = appendedData,
 }
 else
 return {
 type = Type,
 idx = Idx,
 data = Data,
 }
 end
 end,
 Load = function(Idx, Data, Path)
 if GetNestedValue(Starlight.Window.TabSections, Idx) then
 if GetNestedValue(Starlight.Window.TabSections, Idx) then
 for key, value in pairs(Data) do
 if table.find(ClassInterfacer[GetNestedValue(Starlight.Window.TabSections, Idx).Class], key) then
 GetNestedValue(Starlight.Window.TabSections, Idx):Set({ [key] = value })
 end
 end
 end
 end
 end,
 UpdateOld = function(oldPath, newPath)
 local list = listfiles(oldPath) or {}

 for i = 1, #list do
 local file = list[i]
 if file:sub(-#Starlight.FileSystem.FileExtension) == Starlight.FileSystem.FileExtension then
 local content = readfile(file)

 local pos = file:find(Starlight.FileSystem.FileExtension, 1, true)
 local start = pos

 local char = file:sub(pos, pos)
 while char ~= "/" and char ~= "\\" and char ~= "" do
 pos = pos - 1
 char = file:sub(pos, pos)
 end

 if char == "/" or char == "\\" then
 local name = file:sub(pos + 1, start - 1)
 if name ~= "options" then
 writefile(`{newPath}/{name}{Starlight.FileSystem.FileExtension}`, content)
 end
 end

 delfile(file)
 end
 end
 end,
}

local ThemeMethods = {
 bindTheme = function(object: GuiObject, property, themeKey)
 local function set()
 pcall(task.spawn, function()
 if
 object.ClassName == "UIGradient"
 and typeof(GetNestedValue(Starlight.CurrentTheme, themeKey)) == "Color3"
 then
 object[property] = ColorSequence.new({
 ColorSequenceKeypoint.new(0, GetNestedValue(Starlight.CurrentTheme, themeKey)),
 ColorSequenceKeypoint.new(1, GetNestedValue(Starlight.CurrentTheme, themeKey)),
 })
 return
 end

 object[property] = GetNestedValue(Starlight.CurrentTheme, themeKey)
 end)
 end

 themeEvent.Event:Connect(set)
 set()
 end,
 encodeTheme = function(theme)
 local function serialize(data)
 if typeof(data) == "Color3" then
 return { __type = "Color3", R = data.R * 255, G = data.G * 255, B = data.B * 255 }
 elseif typeof(data) == "ColorSequence" then
 local keypoints = {}
 for _, kp in ipairs(data.Keypoints) do
 table.insert(keypoints, {
 Time = kp.Time,
 Value = { R = kp.Value.R * 255, G = kp.Value.G * 255, B = kp.Value.B * 255 },
 })
 end
 return { __type = "ColorSequence", Keypoints = keypoints }
 elseif type(data) == "table" then
 local newTbl = {}
 for k, v in pairs(data) do
 newTbl[k] = serialize(v)
 end
 return newTbl
 end
 return data
 end

 local serialized = serialize(theme)
 local success, encoded = pcall(HttpService.JSONEncode, HttpService, serialized)
 if not success then
 return false, "Failed to encode into JSON Data."
 end
 return true, encoded
 end,
 decodeTheme = function(data)
 local function deserialize(value)
 if type(value) == "table" then
 if value.__type == "Color3" then
 return Color3.fromRGB(value.R, value.G, value.B)
 elseif value.__type == "ColorSequence" then
 local keypoints = {}
 for _, kp in ipairs(value.Keypoints) do
 table.insert(
 keypoints,
 ColorSequenceKeypoint.new(kp.Time, Color3.fromRGB(kp.Value.R, kp.Value.G, kp.Value.B))
 )
 end
 return ColorSequence.new(keypoints)
 else
 local newTbl = {}
 for k, v in pairs(value) do
 newTbl[k] = deserialize(v)
 end
 return newTbl
 end
 end
 return value
 end

 local success, decoded = pcall(HttpService.JSONDecode, HttpService, data)
 if not success then
 return false, "Failed to decode JSON data."
 end
 return deserialize(decoded)
 end,
}



function Table.Remove(tablre: table, value)
 for i, v in pairs(tablre) do
 if v == value then
 table.remove(tablre, i)
 end
 end
end


function Color.Unpack(Color: Color3)
 return { R = Color.R * 255, G = Color.G * 255, B = Color.B * 255 }
end


function Color.Pack(Color: table)
 return Color3.fromRGB(Color.R, Color.G, Color.B)
end






function Table.Unpack(array: table)
 local val = ""
 for _, v in pairs(array) do
 val = val .. tostring(v) .. ", "
 end

 val = string.sub(val, 1, #val - 2)
 return val
end

function String.IsEmptyOrNull(str: string)
 if str == nil then
 return true
 end
 if type(str) ~= "string" then
 return false
 end
 if str == "" or str:match("^%s*$") then
 return true
 end
 return false
end





local TransparencyValues = {
 ["TEMPLATE"] = {
 BackgroundTransparency = nil,
 TextTransparency = nil,
 Transparency = nil,
 ImageTransparency = nil,
 },
}

setmetatable(TransparencyValues, {
 __index = function()
 return
 end,
})

local oldSizeX, oldSizeY, oldPosX, oldPosY


local function Hide(Interface, JustHide: boolean?, Notify: boolean?, Bind: string?)
 JustHide = JustHide or false

 TransparencyValues[Interface.Name] = TransparencyValues[Interface.Name] or {}
 
 table.clear(TransparencyValues[Interface.Name])

 for i, v in pairs(Interface:GetDescendants()) do
 if
 v.ClassName ~= "Folder"
 and v.ClassName ~= "UICorner"
 and v.ClassName ~= "StringValue"
 and v.ClassName ~= "Color3Value"
 and v.ClassName ~= "UIListLayout"
 and v.ClassName ~= "UITextSizeConstraint"
 and v.ClassName ~= "UIPadding"
 and v.ClassName ~= "UIPageLayout"
 and v.ClassName ~= "UISizeConstraint"
 and v.ClassName ~= "UIAspectRatioConstraint"
 then
 
 if JustHide == false then
 v:SetAttribute("InstanceID", HttpService:GenerateGUID(false)) 

 TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")] = {}

 if v.ClassName == "Frame" then
 TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency =
 v.BackgroundTransparency
 end

 if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
 TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency =
 v.BackgroundTransparency
 TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency =
 v.TextTransparency
 end

 if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
 TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency =
 v.BackgroundTransparency
 TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency =
 v.ImageTransparency
 end

 
 
 if v.ClassName == "UIStroke" or v.ClassName == "UIGradient" then
 TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency = v.Transparency
 end
 end

 
 if v.ClassName == "Frame" then
 Tween(v, { BackgroundTransparency = 1 })
 end

 if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
 Tween(v, { BackgroundTransparency = 1 })
 Tween(v, { TextTransparency = 1 })
 end

 if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
 Tween(v, { BackgroundTransparency = 1 })
 Tween(v, { ImageTransparency = 1 })
 end

 if v.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
 Tween(v, { Transparency = 1 })
 end
 end
 end

 if Interface.ClassName ~= "ScreenGui" then
 if JustHide == false then
 Interface:SetAttribute("InstanceID", HttpService:GenerateGUID(false)) 

 TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")] = {}

 if Interface.ClassName == "Frame" then
 TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency =
 Interface.BackgroundTransparency
 end

 if
 Interface.ClassName == "TextLabel"
 or Interface.ClassName == "TextBox"
 or Interface.ClassName == "TextButton"
 then
 TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency =
 Interface.BackgroundTransparency
 TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency =
 Interface.TextTransparency
 end

 if Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton" then
 TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency =
 Interface.BackgroundTransparency
 TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency =
 Interface.ImageTransparency
 end

 
 
 if Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
 TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency =
 Interface.Transparency
 end
 end

 
 if Interface.ClassName == "Frame" then
 Tween(Interface, { BackgroundTransparency = 1 })
 end

 if
 Interface.ClassName == "TextLabel"
 or Interface.ClassName == "TextBox"
 or Interface.ClassName == "TextButton"
 then
 Tween(Interface, { BackgroundTransparency = 1 })
 Tween(Interface, { TextTransparency = 1 })
 end

 if Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton" then
 Tween(Interface, { BackgroundTransparency = 1 })
 Tween(Interface, { ImageTransparency = 1 })
 end

 if Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient" then
 Tween(Interface, { Transparency = 1 })
 end
 end

 
 if InputManager then
 if not isStudio and _mobileToggle.Visible then
 InputManager:SendTouchEvent(
 0, 0, 0, 0
 )
 
 InputManager:SendTouchEvent(
 0, 2, 0, 0
 )
 elseif not isStudio then
 InputManager:SendMouseButtonEvent(
 0, 0, 0, true, game, 0
 )
 
 InputManager:SendMouseButtonEvent(
 0, 0, 0, false, game, 0
 )
 end
 end
 
 task.wait(0.18)
 if Interface.ClassName == "ScreenGui" then
 Interface.Enabled = false
 else
 Interface.Visible = false
 end

 if Notify then
 if _mobileToggle.Visible then
 Starlight:Notification({
 Title = "Interface Hidden",
 Icon = 87575513726659,
 Content = "The Interface Has Been Hidden. You May Reopen It By Pressing The Small Icon Button. ",
 Duration = 2,
 })
 else
 Starlight:Notification({
 Title = "Interface Hidden",
 Icon = 87575513726659,
 Content = "The Interface Has Been Hidden. You May Reopen It By Pressing The " .. Bind .. " Key. ",
 Duration = 2,
 })
 end
 end

 Starlight.Minimized = true
end


local function Unhide(Interface)
 if Interface.ClassName == "ScreenGui" then
 Interface.Enabled = true
 else
 Interface.Visible = true
 end

 for i, v in pairs(Interface:GetDescendants()) do
 if
 v.ClassName ~= "Folder"
 and v.ClassName ~= "UICorner"
 and v.ClassName ~= "StringValue"
 and v.ClassName ~= "Color3Value"
 and v.ClassName ~= "UIListLayout"
 and v.ClassName ~= "UITextSizeConstraint"
 and v.ClassName ~= "UIPadding"
 and v.ClassName ~= "UIPageLayout"
 and v.ClassName ~= "UISizeConstraint"
 and v.ClassName ~= "UIAspectRatioConstraint"
 then
 pcall(function()
 if
 (v.ClassName == "Frame")
 and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency
 ~= nil
 then
 Tween(
 v,
 {
 BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency,
 }
 )
 end

 if
 (v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton")
 and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
 and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency ~= nil
 then
 Tween(
 v,
 {
 BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency,
 }
 )
 Tween(
 v,
 {
 TextTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].TextTransparency,
 }
 )
 end

 if
 (v.ClassName == "ImageLabel" or v.ClassName == "ImageButton")
 and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
 and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency
 then
 Tween(
 v,
 {
 BackgroundTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].BackgroundTransparency,
 }
 )
 Tween(
 v,
 {
 ImageTransparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].ImageTransparency,
 }
 )
 end

 if
 (v.ClassName == "UIStroke" or Interface.ClassName == "UIGradient")
 and TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency
 then
 Tween(
 v,
 { Transparency = TransparencyValues[Interface.Name][v:GetAttribute("InstanceID")].Transparency }
 )
 end
 end)
 end
 end

 pcall(function()
 if Interface.ClassName ~= "ScreenGui" then
 if
 (Interface.ClassName == "Frame")
 and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency
 ~= nil
 then
 Tween(
 Interface,
 {
 BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute(
 "InstanceID"
 )].BackgroundTransparency,
 }
 )
 end

 if
 (
 Interface.ClassName == "TextLabel"
 or Interface.ClassName == "TextBox"
 or Interface.ClassName == "TextButton"
 )
 and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
 and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency ~= nil
 then
 Tween(
 Interface,
 {
 BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute(
 "InstanceID"
 )].BackgroundTransparency,
 }
 )
 Tween(
 Interface,
 {
 TextTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].TextTransparency,
 }
 )
 end

 if
 (Interface.ClassName == "ImageLabel" or Interface.ClassName == "ImageButton")
 and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].BackgroundTransparency ~= nil
 and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency
 then
 Tween(
 Interface,
 {
 BackgroundTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute(
 "InstanceID"
 )].BackgroundTransparency,
 }
 )
 Tween(
 Interface,
 {
 ImageTransparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].ImageTransparency,
 }
 )
 end

 if
 (Interface.ClassName == "UIStroke" or Interface.ClassName == "UIGradient")
 and TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency
 then
 Tween(
 Interface,
 {
 Transparency = TransparencyValues[Interface.Name][Interface:GetAttribute("InstanceID")].Transparency,
 }
 )
 end
 end
 end)

 Starlight.Minimized = false
end


local function Maximize(Window: Frame)
 oldSizeX = Window.Size.X.Offset
 oldSizeY = Window.Size.Y.Offset
 oldPosX = Window.Position.X.Offset
 oldPosY = Window.Position.Y.Offset

 Tween(Window, { Size = UDim2.new(1, -2, 1, -2) }, nil, Tween.Info(nil, nil, 0.38))
 Tween(Window, { Position = UDim2.fromOffset(1, 1) }, nil, Tween.Info(nil, nil, 0.38))

 Starlight.Maximized = true
end


local function Unmaximize(Window: Frame, Dragging: boolean?)
 Dragging = Dragging or false

 Window.UICorner.CornerRadius = UDim.new(0, 8)

 Tween(Window, { Size = UDim2.fromOffset(oldSizeX, oldSizeY) })
 if not Dragging then
 Tween(Window, { Position = UDim2.fromOffset(oldPosX, oldPosY) })
 end

 Starlight.Maximized = false
end


local function AddToolTip(InfoStr, HoverInstance)
 local label = Instance.new("TextLabel")
 label.Text = InfoStr or ""
 label.AnchorPoint = Vector2.new(0, 0.5)
 label.Position = UDim2.new(0, 4, 0.5, 0)
 label.TextSize = 15
 label.TextXAlignment = Enum.TextXAlignment.Left
 label.FontFace = Font.fromId(12187365364, Enum.FontWeight.Regular)
 label.TextWrapped = true
 label.BackgroundTransparency = 1
 label.TextColor3 = Color3.new(1, 1, 1)

 local tooltip = Instance.new("Frame")
 tooltip.ZIndex = 300
 tooltip.Parent = _tooltips
 tooltip.Name = HoverInstance.Name

 label.ZIndex = tooltip.ZIndex + 1
 label.Parent = tooltip
 label.Size = UDim2.fromOffset(math.huge, math.huge)
 if label.TextBounds.X > 180 then
 label.Size = UDim2.fromOffset(180, math.huge)
 end
 label.Size = UDim2.fromOffset(label.TextBounds.X, label.TextBounds.Y)
 tooltip.Size = UDim2.fromOffset(label.Size.X.Offset + 8, label.Size.Y.Offset + 6)

 tooltip.Visible = false

 local corner = Instance.new("UICorner")
 corner.CornerRadius = UDim.new(0, 3)
 corner.Parent = tooltip

 local stroke = Instance.new("UIStroke")
 stroke.Color = Color3.fromRGB(65, 66, 77)
 stroke.Parent = tooltip

 local hoverTime = 0
 local IsHovering = false
 local lastMousePos = nil
 local threshold = 0.44

 local function updateTooltipPos()
 tooltip.Position = UDim2.fromOffset(Mouse.X + 15, Mouse.Y + 20)
 end

 if HoverInstance then
 HoverInstance.MouseEnter:Connect(function()
 IsHovering = true
 lastMousePos = Vector2.new(Mouse.X, Mouse.Y)
 hoverTime = 0
 end)

 HoverInstance.MouseLeave:Connect(function()
 IsHovering = false
 tooltip.Visible = false
 end)

 HoverInstance:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
 local p, pos, size = Mouse, HoverInstance.AbsolutePosition, HoverInstance.AbsoluteSize
 if not (p.X >= pos.X and p.X <= pos.X + size.X and p.Y >= pos.Y and p.Y <= pos.Y + size.Y) then
 IsHovering = false
 tooltip.Visible = false
 else
 IsHovering = true
 lastMousePos = Vector2.new(Mouse.X, Mouse.Y)
 hoverTime = 0
 end
 end)

 RunService.RenderStepped:Connect(function(dt)
 if not IsHovering then
 return
 end

 local currentPos = Vector2.new(Mouse.X, Mouse.Y)
 if (currentPos - lastMousePos).magnitude > 0 then
 tooltip.Visible = false
 hoverTime = 0
 lastMousePos = currentPos
 else
 hoverTime += dt
 if hoverTime >= threshold then
 updateTooltipPos()
 if not String.IsEmptyOrNull(label.Text) then
 RunService.RenderStepped:Wait()
 tooltip.Visible = true
 end
 end
 end
 end)
 end

 updateTooltipPos()
 do 
 ThemeMethods.bindTheme(tooltip, "BackgroundColor3", "Backgrounds.Medium")
 ThemeMethods.bindTheme(stroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(label, "TextColor3", "Foregrounds.Light")
 end
 tooltip.ClipsDescendants = false
 label.ClipsDescendants = false

 return label
end



local function makeDraggable(Bar, Window: Frame, dragBar, enableTaptic, tapticOffset)
 pcall(function()
 local Dragging, DragInput, MousePos, FramePos

 local dragInteract = dragBar and dragBar.Interact
 local dragBarCosmetic = dragBar and dragBar.DragCosmetic

 local function connectMethods()
 if dragBar and enableTaptic then
 dragBar.MouseEnter:Connect(function()
 if not Dragging then
 Tween(
 dragBarCosmetic,
 { BackgroundTransparency = 0.5, Size = UDim2.new(0, 120, 0, 4) },
 nil,
 TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
 )
 end
 end)

 dragBar.MouseLeave:Connect(function()
 if not Dragging then
 Tween(
 dragBarCosmetic,
 { BackgroundTransparency = 0.7, Size = UDim2.new(0, 100, 0, 4) },
 nil,
 TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
 )
 end
 end)
 end
 end

 connectMethods()

 Bar.InputBegan:Connect(function(Input)
 if
 Input.UserInputType == Enum.UserInputType.MouseButton1
 or Input.UserInputType == Enum.UserInputType.Touch
 then
 Dragging = true
 MousePos = Input.Position
 FramePos = Window.Position

 if enableTaptic then
 Tween(
 dragBarCosmetic,
 { Size = UDim2.new(0, 110, 0, 4), BackgroundTransparency = 0 },
 nil,
 TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
 )
 end

 Input.Changed:Connect(function()
 if Input.UserInputState == Enum.UserInputState.End then
 Dragging = false
 connectMethods()

 if enableTaptic then
 Tween(
 dragBarCosmetic,
 { Size = UDim2.new(0, 100, 0, 4), BackgroundTransparency = 0.7 },
 nil,
 TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
 )
 end
 end
 end)
 end
 end)

 Bar.InputChanged:Connect(function(Input)
 if
 Input.UserInputType == Enum.UserInputType.MouseMovement
 or Input.UserInputType == Enum.UserInputType.Touch
 then
 DragInput = Input
 end
 end)

 local debounce = false
 UserInputService.InputChanged:Connect(function(Input)
 if Input == DragInput and Dragging then
 debounce = true
 if Starlight.Maximized then
 Unmaximize(Window, true)
 end
 local Delta = Input.Position - MousePos

 local newMainPosition = UDim2.new(
 FramePos.X.Scale,
 FramePos.X.Offset + Delta.X,
 FramePos.Y.Scale,
 FramePos.Y.Offset + Delta.Y
 )
 Tween(
 Window,
 { Position = newMainPosition },
 ((not dragBar) and function()
 debounce = false
 end) or nil,
 TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
 )

 if dragBar then
 local newDragBarPosition = UDim2.new(
 FramePos.X.Scale,
 FramePos.X.Offset + Delta.X + Window.Size.X.Offset / 2,
 FramePos.Y.Scale,
 FramePos.Y.Offset + Delta.Y + Window.Size.Y.Offset + 10
 )
 Tween(dragBar, { Position = newDragBarPosition }, function()
 debounce = false
 end, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out))
 end
 end
 end)

 Window:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
 if not debounce and dragBar then
 local newMainPosition = UDim2.new(
 Window.Position.X.Scale,
 Window.Position.X.Offset,
 Window.Position.Y.Scale,
 Window.Position.Y.Offset
 )
 local newDragBarPosition = UDim2.new(
 Window.Position.X.Scale,
 Window.Position.X.Offset + Window.Size.X.Offset / 2,
 Window.Position.Y.Scale,
 Window.Position.Y.Offset + Window.Size.Y.Offset + 10
 )
 Tween(
 dragBar,
 { Position = newDragBarPosition },
 nil,
 TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
 )
 end
 end)
 end)
end








-- Prefer pre-built UI from getgenv (set by an inline GUI-to-Lua converter) to bypass
-- asset ID detection. Falls back to game:GetObjects only if no prebuilt is present.
local _mA, _mB = debugV and 136653172778765 or 0, debugV and 0 or 132866968194043
local modelId = (getgenv and getgenv().STARLIGHT_ASSET_ID) or (_mA + _mB)

local function _getStarlightUI()
	local g = (type(getgenv) == "function" and getgenv()) or _G
	local prebuilt = g.__StarlightPrebuiltUI
	if typeof(prebuilt) == "Instance" and prebuilt:IsA("ScreenGui") then
		g.__StarlightPrebuiltUI = nil
		return prebuilt
	end
	return _shieldedGetObjects(modelId)
end

local StarlightUI: ScreenGui = isStudio and script.Parent:WaitForChild("InterfaceV2")
	or _getStarlightUI()
local buildAttempts = 0
local correctBuild = false
local warned = false

repeat
	if
		StarlightUI.Resources:FindFirstChild("Build")
		and StarlightUI.Resources.Build.Value == Starlight.InterfaceBuild
	then
		correctBuild = true
		break
	end

	toDestroy, StarlightUI =
		StarlightUI,
		isStudio and script.Parent:FindFirstChild("InterfaceV2") or _getStarlightUI()
	if toDestroy and not isStudio then
		toDestroy:Destroy()
	end

	buildAttempts += 1

until buildAttempts >= 2

-- ── Emulation: grab references, scramble tree, disguise as core GUI ──

-- 1. Save all internal references by original name before renaming
local _mw = StarlightUI:FindFirstChild("MainWindow")
local _res = StarlightUI:FindFirstChild("Resources")
local _notifs = StarlightUI:FindFirstChild("Notifications")
local _drag = StarlightUI:FindFirstChild("Drag")
local _sidebar = _mw and _mw:FindFirstChild("Sidebar")
local _content = _mw and _mw:FindFirstChild("Content")
local _nav = _sidebar and _sidebar:FindFirstChild("Navigation")
local _contentMain = _content and _content:FindFirstChild("ContentMain")
local _elements = _contentMain and _contentMain:FindFirstChild("Elements")
local _modalOverlay = _mw and _mw:FindFirstChild("ModalOverlay")
local _popupOverlay = StarlightUI:FindFirstChild("PopupOverlay")
local _tooltips = StarlightUI:FindFirstChild("Tooltips")
local _mobileToggle = StarlightUI:FindFirstChild("MobileToggle")

-- 2. Rename only direct children of the ScreenGui (the fingerprint surface BAC scans)
if not isStudio then
	pcall(function()
		for _, ch in ipairs(StarlightUI:GetChildren()) do
			ch.Name = _rndStr(8)
		end
	end)
end

-- 3. Use innocuous random name (impersonating core GUIs triggers AC's duplicate check)
local _coreName = (getgenv and getgenv().InterfaceName) or _rndStr(10)
StarlightUI.Name = _coreName
Starlight.Instance = StarlightUI
StarlightUI.Enabled = false

if not isStudio then
	pcall(function() StarlightUI.OnTopOfCoreBlur = true end)
end

-- 4. protect_gui: makes ScreenGui invisible to game-side GetChildren/GetDescendants
if not isStudio then
	if typeof(protect_gui) == "function" then
		pcall(protect_gui, StarlightUI)
	elseif typeof(syn) == "table" and typeof(syn.protect_gui) == "function" then
		pcall(syn.protect_gui, StarlightUI)
	end
end

-- 5. Parent inside RobloxGui to blend with real core UIs (fall back to gethui/CoreGui)
local _parented = false
if not isStudio then
	local robloxGui = CoreGui:FindFirstChild("RobloxGui")
	if gethui then
		StarlightUI.Parent = gethui()
		_parented = true
	elseif robloxGui then
		StarlightUI.Parent = robloxGui
		_parented = true
	end
end
if not _parented then
	StarlightUI.Parent = isStudio and PlayerGui or CoreGui
end

-- 6. Clean up any prior instances from re-execution
pcall(function()
	local container = StarlightUI.Parent
	if container then
		for _, ch in ipairs(container:GetChildren()) do
			if ch:IsA("ScreenGui") and ch.Name == _coreName and ch ~= StarlightUI then
				pcall(function() Hide(ch, true) end)
				ch:Destroy()
			end
		end
	end
end)

_mw.Visible = false
_mw.AnchorPoint = Vector2.zero
_mw.Position = UDim2.fromOffset(
	Camera.ViewportSize.X / 2 - _mw.Size.X.Offset / 2,
	((Camera.ViewportSize.Y / 2 - GuiInset) - _mw.Size.Y.Offset / 2) - (GuiInset / 2)
)
_drag.Position = UDim2.new(
	0.5,
	0,
	0,
	((Camera.ViewportSize.Y / 2 - GuiInset) - _mw.Size.Y.Offset / 2)
		- (GuiInset / 2)
		+ _mw.Size.Y.Offset
		+ 10
)



local mainWindow: Frame = _mw
local Resources = _res
local navigation: Frame = _nav
local tabs: Frame = _elements
local Resizing = false 
local ResizePos = false 

local GUICanvasSize = { X = Camera.ViewportSize.X, Y = Camera.ViewportSize.Y - GuiInset }



local mainWindow: Frame = _mw
local Resources = _res
local navigation: Frame = _nav
local tabs: Frame = _elements
local Resizing = false 
local ResizePos = false 

local GUICanvasSize = { X = Camera.ViewportSize.X, Y = Camera.ViewportSize.Y - GuiInset }



if UserInputService.TouchEnabled then
 _notifs.Interactable = false
end

if PlayerGui:FindFirstChild("TouchGui") then
 local controlFrame = PlayerGui:FindFirstChild("TouchGui"):FindFirstChild("TouchControlFrame")
 local jumpButton = controlFrame and controlFrame:FindFirstChild("JumpButton")

 local function check()
 if jumpButton and jumpButton.Visible then
 _notifs.Position = UDim2.new(1, -20, 1, -(24 + jumpButton.AbsoluteSize.Y))
 else
 _notifs.Position = UDim2.new(1, -20, 1, -20)
 end
 end

 if jumpButton then
 jumpButton:GetPropertyChangedSignal("Visible"):Connect(check)
 end

 check()
end





function Starlight:SetHoverFXDefaults(opts)
	if type(opts) ~= "table" then return end
	if opts.HoverSoundId ~= nil then HoverFXDefaults.HoverSoundId = opts.HoverSoundId end
	if opts.ClickSoundId ~= nil then HoverFXDefaults.ClickSoundId = opts.ClickSoundId end
	if opts.SoundVolume ~= nil then HoverFXDefaults.SoundVolume = opts.SoundVolume end
	if opts.SoundCooldown ~= nil then HoverFXDefaults.SoundCooldown = opts.SoundCooldown end
end

function Starlight:PlayClickSound()
	PlayStarlightClickSound()
end

function Starlight:SetHoverFXDebug(enabled)
	_hfxDebugFlag = (enabled == true)
end


function Starlight:OnDestroy(func)
 Starlight.DestroyFunction = func
end


function Starlight:Destroy()
 task.wait()
 StarlightUI:Destroy()
end
StarlightUI.Destroying:Connect(function()
 pcall(Starlight.DestroyFunction)
 for i, v in pairs(connections) do
 v:Disconnect()
 end
 if Starlight.Window then
 for _, tabSection in pairs(Starlight.Window.TabSections) do
 tabSection:Destroy()
 end
 end
 for i, v in pairs(Starlight) do
 v = nil
 end
 if Camera:FindFirstChild("_blur_" .. _uid) then
 for _, blur in pairs(Camera:FindFirstChild("_blur_" .. _uid):GetChildren()) do
 blur:Destroy()
 end
 
 end
end)

function Starlight:Notification(data, _optionalIndex)
	

 

 task.spawn(function()
 local creationTime = tick()

 
 local newNotification = Resources.Elements.NotificationTemplate:Clone()
 newNotification.Name = data.Title
 newNotification.Parent = _notifs
 newNotification.LayoutOrder = #_notifs:GetChildren()
 newNotification.Visible = false
 local AcrylicObject = Acrylic.AcrylicPaint()
 pcall(function()
 AcrylicObject.AddParent(newNotification)
 AcrylicObject.Frame.Parent = newNotification
 end)

 local function setDuration(elapsed)
 if elapsed <= 4 then
 newNotification.Time.Text = "now"
 elseif elapsed < 60 then
 newNotification.Time.Text = math.floor(elapsed) .. "s ago"
 elseif elapsed < 3600 then
 newNotification.Time.Text = math.floor(elapsed / 60) .. "m ago"
 else
 newNotification.Time.Text = math.floor(elapsed / 3600) .. "h ago"
 end
 end

 task.spawn(function() end)
 table.insert(
 connections,
 RunService.RenderStepped:Connect(function()
 pcall(setDuration, tick() - creationTime)
 end)
 )

 notificationAcrylicEvent.Event:Connect(function()
 if newNotification.BackgroundTransparency == 1 then
 return
 end
 TweenService:Create(
 newNotification,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { BackgroundTransparency = notificationAcrylic and (mainAcrylic and 0.55 or 0.375) or 0 }
 ):Play()
 end)

 
 newNotification.Title.Text = data.Title
 newNotification.Description.Text = data.Content
 newNotification.Icon.Image = "rbxassetid://" .. (data.Icon or "")

 
 Hide(newNotification, false, false, false)

 task.wait()

 
 newNotification.Size =
 UDim2.new(1, 0, 0, -_notifs:FindFirstChild("UIListLayout").Padding.Offset)

 newNotification.Visible = true

 newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
 local bounds = newNotification.Description.TextBounds.Y
 newNotification.Description.Size = UDim2.new(1, -65, 0, bounds + 2)
 newNotification.Size =
 UDim2.new(1, 0, 0, -_notifs:FindFirstChild("UIListLayout").Padding.Offset)
 task.wait()
 TweenService:Create(
 newNotification,
 TweenInfo.new(0.6, Enum.EasingStyle.Exponential),
 { Size = UDim2.new(1, 0, 0, bounds + 50) }
 ):Play()

 task.wait(0.15)
 pcall(function()
 TweenService:Create(
 newNotification,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { BackgroundTransparency = notificationAcrylic and (mainAcrylic and 0.55 or 0.375) or 0 }
 ):Play()
 pcall(function()
 TweenService:Create(
 newNotification.Acrylic.shadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.7 }
 ):Play()
 TweenService:Create(
 newNotification.Acrylic.tint,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.98 }
 ):Play()
 TweenService:Create(
 newNotification.Acrylic.Noise,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.9 }
 ):Play()
 end)
 TweenService:Create(
 newNotification.Shadow.antumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.94 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.penumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.55 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.umbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.4 }
 ):Play()
 TweenService
 :Create(
 newNotification.Title,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 0 }
 )
 :Play()

 task.wait(0.05)

 TweenService
 :Create(
 newNotification.Icon,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0 }
 )
 :Play()

 task.wait(0.05)
 TweenService:Create(
 newNotification.Description,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 0.35 }
 ):Play()
 TweenService
 :Create(
 newNotification.Time,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 0.35 }
 )
 :Play()
 TweenService
 :Create(
 newNotification.UIStroke,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { Transparency = 0.95 }
 )
 :Play()

			
			do
				ThemeMethods.bindTheme(newNotification, "BackgroundColor3", "Backgrounds.Medium")
				ThemeMethods.bindTheme(newNotification.UIStroke, "Color", "Foregrounds.Dark")
				for _, shadow in pairs(newNotification.Shadow:GetChildren()) do
					ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
				end
				ThemeMethods.bindTheme(newNotification.Icon, "ImageColor3", "Foregrounds.Light")
				ThemeMethods.bindTheme(newNotification.Description, "TextColor3", "Foregrounds.Light")
				ThemeMethods.bindTheme(newNotification.Title, "TextColor3", "Foregrounds.Light")
				ThemeMethods.bindTheme(newNotification.Time, "TextColor3", "Foregrounds.Light")
			end

			pcall(function()
				if HoverFXReady then
					AttachAllHoverFX(newNotification, false)
				end
			end)
		end)

		data.Duration = data.Duration or math.min(math.max((#newNotification.Description.Text * 0.1) + 2.5, 3), 10)
 if data.Duration >= 0 then
 task.wait(data.Duration)

 pcall(function()
 if not Starlight.NotificationsOpen then
 newNotification.Icon.Visible = false
 TweenService:Create(
 newNotification,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { BackgroundTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.UIStroke,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { Transparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.antumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.penumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.umbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Title,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Description,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Time,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 1 }
 ):Play()

 TweenService:Create(
 newNotification,
 TweenInfo.new(1, Enum.EasingStyle.Exponential),
 { Size = UDim2.new(1, -90, 0, 0) }
 ):Play()

 Tween(
 newNotification,
 {
 Size = UDim2.new(
 1,
 -90,
 0,
 -_notifs:FindFirstChild("UIListLayout").Padding.Offset
 ),
 },
 function()
 newNotification.Visible = false
 end,
 TweenInfo.new(1, Enum.EasingStyle.Exponential)
 )
 end

 CollectionService:AddTag(newNotification, "__starlight_ExpiredNotification")
 end)
 end
 return newNotification
 end)
end



function Starlight:CreateLicenseGate(opts)
	opts = opts or {}
	local HttpService = _cref(_game:GetService("HttpService"))
	local Players = _cref(_game:GetService("Players"))
	local lp = Players.LocalPlayer
	if not lp then
		error("LicenseGate requires LocalPlayer")
	end
	local workerBase = type(opts.WorkerBase) == "string" and opts.WorkerBase:gsub("/+$", "") or ""
	if workerBase == "" then
		error("LicenseGate requires opts.WorkerBase (Worker URL, no trailing slash)")
	end
	local title = type(opts.Title) == "string" and opts.Title or "License"
	local subtitle = type(opts.Subtitle) == "string" and opts.Subtitle or "Enter your key to continue."
	local onSuccess = opts.OnSuccess
	if type(onSuccess) ~= "function" then
		error("LicenseGate requires opts.OnSuccess")
	end
	local maxAuthFailures = type(opts.MaxAuthFailures) == "number" and opts.MaxAuthFailures > 0 and opts.MaxAuthFailures or nil
	local onLockout = type(opts.OnLockout) == "function" and opts.OnLockout or nil
	local authFailCount = 0

	local function getHwid()
		if typeof(gethwid) == "function" then
			local ok, h = pcall(gethwid)
			if ok and type(h) == "string" then
				local t = h:gsub("^%s+", ""):gsub("%s+$", "")
				if t ~= "" then
					return t
				end
			end
		end
		return nil
	end

	local function placeInfo()
		return tostring(game.PlaceId), tostring(game.Name)
	end

	local function maskKey(key)
		if type(key) ~= "string" or #key < 9 then
			return "****"
		end
		return key:sub(1, 4) .. "..." .. key:sub(-4)
	end

	local function postJson(path, payload, auditBearer)
		local url = workerBase .. path
		local headers = { ["Content-Type"] = "application/json" }
		if type(auditBearer) == "string" and auditBearer ~= "" then
			headers["Authorization"] = "Bearer " .. auditBearer
		end
		local bodyJson = HttpService:JSONEncode(payload)
		
		return pcall(function()
			if not Request or type(Request) ~= "function" then
				error("License gate: executor must expose request() or http_request for Worker HTTP.")
			end
			return Request({
				Url = url,
				Method = "POST",
				Headers = headers,
				Body = bodyJson,
			})
		end)
	end

	local function auditAttempt(err, keyPreview)
		task.defer(function()
			local placeId, placeName = placeInfo()
			local payload = {
				error = tostring(err),
				keyPreview = keyPreview or "—",
				userId = lp.UserId,
				username = lp.Name,
				displayName = lp.DisplayName,
				placeId = tonumber(placeId) or placeId,
				placeName = placeName,
				jobId = game.JobId,
			}
			postJson("/v1/audit/attempt", payload, nil)
		end)
	end

	local function auditSuccess(licenseKey, auditToken)
		task.defer(function()
			local placeId, placeName = placeInfo()
			local payload = {
				licenseKey = licenseKey,
				hwid = getHwid(),
				userId = lp.UserId,
				username = lp.Name,
				displayName = lp.DisplayName,
				placeId = tonumber(placeId) or placeId,
				placeName = placeName,
				jobId = game.JobId,
			}
			postJson("/v1/audit/success", payload, auditToken)
		end)
	end

	local hw = getHwid()
	if not hw then
		error("LicenseGate requires executor gethwid()")
	end

	local mainW = StarlightUI and StarlightUI:FindFirstChild("MainWindow")
	local modalOverlay = mainW and mainW:FindFirstChild("ModalOverlay")
	local modalTemplate = modalOverlay and modalOverlay:FindFirstChild("Template")
	if not mainW or not modalOverlay or not modalTemplate then
		error("LicenseGate requires MainWindow.ModalOverlay.Template (load library before calling).")
	end

	
	StarlightUI.Enabled = true
	mainW.Visible = true
	local chromeState = {}
	for _, childName in ipairs({ "Sidebar", "Content", "New Loading Screen" }) do
		local ch = mainW:FindFirstChild(childName)
		if ch and ch:IsA("GuiObject") then
			chromeState[childName] = ch.Visible
			ch.Visible = false
		end
	end
	local starDrag = StarlightUI:FindFirstChild("Drag")
	if starDrag and starDrag:IsA("GuiObject") then
		chromeState.Drag = starDrag.Visible
		starDrag.Visible = false
	end

	local function restoreChrome()
		for name, was in pairs(chromeState) do
			if name == "Drag" then
				if starDrag and starDrag:IsA("GuiObject") then
					starDrag.Visible = was
				end
			else
				local ch = mainW:FindFirstChild(name)
				if ch and ch:IsA("GuiObject") then
					ch.Visible = was
				end
			end
		end
	end

	local licenseModal = modalTemplate:Clone()
	licenseModal.Name = "Modal_" .. _rndStr(6)

	local actions = licenseModal:WaitForChild("Holder"):WaitForChild("Actions")
	for _, n in ipairs({ "Primary", "Secondary", "Input" }) do
		local x = actions:FindFirstChild(n)
		if x then
			x:Destroy()
		end
	end

	local submitBtn = modalTemplate.Holder.Actions.Primary:Clone()
	ThemeMethods.bindTheme(submitBtn.Backdrop.Accent, "Color", "Accents.Main")
	ThemeMethods.bindTheme(submitBtn.Backdrop.UIStroke.Accent, "Color", "Accents.Main")
	ThemeMethods.bindTheme(submitBtn.Header.Icon, "ImageColor3", "Foregrounds.Active")
	ThemeMethods.bindTheme(submitBtn.Header.Header, "TextColor3", "Foregrounds.Active")
	submitBtn.Header.Header.Text = "Continue"
	submitBtn.Header.Icon.Visible = false
	submitBtn.Parent = actions

	local keyRow = modalTemplate.Holder.Actions.Input:Clone()
	ThemeMethods.bindTheme(keyRow, "BackgroundColor3", "Backgrounds.Dark")
	ThemeMethods.bindTheme(keyRow.UIStroke, "Color", "Foregrounds.Dark")
	ThemeMethods.bindTheme(keyRow.PART_Input, "PlaceholderColor3", "Foregrounds.Medium")
	ThemeMethods.bindTheme(keyRow.PART_Input, "TextColor3", "Foregrounds.Light")
	keyRow.Visible = true
	keyRow.PART_Input.PlaceholderText = "License key (48 hex)"
	keyRow.PART_Input.Text = ""
	keyRow.PART_Input.ClearTextOnFocus = false
	keyRow.PART_Input.MultiLine = false
	keyRow.Parent = actions

	local holder = licenseModal.Holder
	local header = holder:WaitForChild("Header")
	local headerTitle = header:WaitForChild("TextLabel")
	local headerIcon = header:FindFirstChild("Icon")
	headerTitle.Text = title
	if headerIcon and headerIcon:IsA("ImageLabel") then
		local customIcon = opts.Icon
		if customIcon ~= nil and (typeof(customIcon) == "number" or (typeof(customIcon) == "string" and customIcon ~= "")) then
			headerIcon.Visible = true
			headerIcon.Image = typeof(customIcon) == "number" and ("rbxassetid://" .. tostring(customIcon)) or tostring(customIcon)
			headerTitle.Position = UDim2.fromOffset(36, 0)
		else
			headerIcon.Visible = true
			headerTitle.Position = UDim2.fromOffset(36, 0)
			task.spawn(function()
				local okThumb, url = pcall(function()
					return Players:GetUserThumbnailAsync(
						Player.UserId,
						Enum.ThumbnailType.HeadShot,
						Enum.ThumbnailSize.Size180x180
					)
				end)
				if okThumb and type(url) == "string" and url ~= "" then
					headerIcon.Image = url
				end
			end)
		end
	else
		headerTitle.Position = UDim2.fromOffset(5, 0)
	end

	local contentFrame = holder:WaitForChild("Content")
	local contentLbl = contentFrame:FindFirstChild("TextLabel") or contentFrame:FindFirstChildWhichIsA("TextLabel", true)
	if contentLbl then
		contentLbl.Text = subtitle
	end

	local statusLbl = Instance.new("TextLabel")
	statusLbl.Name = "LicenseStatus"
	statusLbl.BackgroundTransparency = 1
	statusLbl.Text = ""
	statusLbl.TextSize = 12
	statusLbl.TextWrapped = true
	statusLbl.TextXAlignment = Enum.TextXAlignment.Left
	statusLbl.TextYAlignment = Enum.TextYAlignment.Top
	statusLbl.Size = UDim2.new(1, -20, 0, 36)
	statusLbl.LayoutOrder = 2
	statusLbl.Parent = contentFrame
	ThemeMethods.bindTheme(statusLbl, "TextColor3", "Foregrounds.Medium")

	ThemeMethods.bindTheme(licenseModal, "BackgroundColor3", "Miscellaneous.LighterShadow")
	if licenseModal:FindFirstChild("UIStroke") then
		ThemeMethods.bindTheme(licenseModal.UIStroke, "Color", "Foregrounds.Dark")
	end
	local dropShadowHolder = licenseModal:FindFirstChild("DropShadowHolder")
	if dropShadowHolder then
		for _, shadow in pairs(dropShadowHolder:GetChildren()) do
			ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
		end
	end
	local acrylicConn
	acrylicConn = acrylicEvent.Event:Connect(function()
		if mainAcrylic then
			licenseModal.BackgroundTransparency = 0.7
		else
			licenseModal.BackgroundTransparency = 0.05
		end
	end)

	repeat
		task.wait()
	until holder ~= nil
	holder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		pcall(function()
			licenseModal.Size =
				UDim2.fromOffset(400, holder and holder.AbsoluteSize.Y or 0)
		end)
	end)
	licenseModal.Size = UDim2.fromOffset(400, holder.AbsoluteSize.Y)

	Hide(licenseModal)
	Tween(licenseModal.UIScale, { Scale = 1 })
	Unhide(licenseModal)
	task.wait(0.1)
	modalOverlay.Visible = true
	Tween(modalOverlay, { BackgroundTransparency = 0.2, ImageTransparency = 0.1 })
	licenseModal.Parent = modalOverlay

	makeDraggable(header, licenseModal, nil)

	local closed = false
	local function closeLicenseUI()
		if closed then
			return
		end
		closed = true
		if acrylicConn then
			acrylicConn:Disconnect()
			acrylicConn = nil
		end
		pcall(function()
			Tween(licenseModal.UIScale, { Scale = 1.25 })
			Hide(licenseModal)
		end)
		Tween(modalOverlay, { BackgroundTransparency = 1, ImageTransparency = 1 }, function()
			if licenseModal.Parent then
				licenseModal:Destroy()
			end
		end)
		task.wait(0.18)
		modalOverlay.Visible = false
		restoreChrome()
	end

	local busy = false
	local function licenseNotifyErr(msg)
		local body = string.sub(tostring(msg), 1, 400)
		pcall(function()
			Starlight:Notification({
				Title = title,
				Content = body,
				Duration = 6,
				Icon = 129398364168201,
			}, "LicenseGateErr_" .. tostring(os.clock()))
		end)
	end

	local function setStatus(t, isErr)
		statusLbl.Text = t or ""
		if isErr then
			statusLbl.TextColor3 = Color3.fromRGB(255, 95, 95)
			if t and t ~= "" then
				licenseNotifyErr(t)
			end
		else
			pcall(function()
				statusLbl.TextColor3 = GetNestedValue(Starlight.CurrentTheme, "Foregrounds.Medium")
			end)
		end
	end

	local function trySubmit()
		if busy then
			return
		end
		busy = true
		local rawKey = keyRow.PART_Input.Text:gsub("^%s+", ""):gsub("%s+$", ""):gsub("%s+", ""):lower()
		if #rawKey < 8 then
			setStatus("Enter your license key.", true)
			busy = false
			return
		end
		setStatus("Checking…", false)
		PlayStarlightClickSound()
		local ok, res = postJson("/v1/auth", { key = rawKey, hwid = hw }, nil)
		if not ok or typeof(res) ~= "table" then
			auditAttempt("request_failed", maskKey(rawKey))
			setStatus("Network error. Check Worker URL, VPN, or executor HTTP (request / HttpService).", true)
			busy = false
			return
		end
		if not res.Success then
			auditAttempt("http_" .. tostring(res.StatusCode), maskKey(rawKey))
			setStatus("Server error (" .. tostring(res.StatusCode) .. ").", true)
			busy = false
			return
		end
		local data = nil
		local okJ, decoded = pcall(function()
			return HttpService:JSONDecode(res.Body)
		end)
		if okJ then
			data = decoded
		end
		if type(data) ~= "table" then
			auditAttempt("bad_json", maskKey(rawKey))
			setStatus("Invalid response from license server.", true)
			busy = false
			return
		end
		if data.ok ~= true then
			local err = tostring(data.error or "denied")
			auditAttempt(err, maskKey(rawKey))
			if err == "wrong_hwid" then
				setStatus("HWID mismatch. Ask for a HWID reset.", true)
			elseif err == "revoked" or err == "invalid_key" then
				setStatus("Key invalid or revoked.", true)
			elseif err == "rate_limited" then
				setStatus("Too many attempts. Wait a minute.", true)
			else
				setStatus("Login failed: " .. err, true)
			end
			if maxAuthFailures then
				authFailCount = authFailCount + 1
				if authFailCount >= maxAuthFailures then
					busy = false
					closeLicenseUI()
					if onLockout then
						onLockout()
					else
						error("LicenseGate — too many failed license attempts.")
					end
					return
				end
			end
			busy = false
			return
		end
		if type(data.auditToken) == "string" and data.auditToken ~= "" then
			auditSuccess(rawKey, data.auditToken)
		end
		closeLicenseUI()
		onSuccess(rawKey, data)
		busy = false
	end

	local submitInteract = submitBtn:FindFirstChild("Interact")
	if submitInteract and submitInteract:IsA("GuiButton") then
		submitInteract.MouseButton1Click:Connect(trySubmit)
	else
		submitBtn.MouseButton1Click:Connect(trySubmit)
	end

	keyRow.PART_Input.FocusLost:Connect(function(enter)
		if enter then
			trySubmit()
		end
	end)

	local keyInteract = keyRow:FindFirstChild("Interact")
	if keyInteract and keyInteract:IsA("GuiButton") then
		keyInteract.Focused:Connect(function()
			keyInteract:ReleaseFocus()
			keyRow.PART_Input:CaptureFocus()
		end)
	end

	return {
		Destroy = function()
			closeLicenseUI()
		end,
		Gui = licenseModal,
	}
end


function Starlight:CreateWindow(WindowSettings)
 
 
 

 if
 not correctBuild
 and not warned
 and (WindowSettings.BuildWarnings == nil and true or WindowSettings.BuildWarnings)
 then
 warned = true
 warn("UI | Build Mismatch")
 warn(
 "UI may run into issues — incompatible interface version ("
 .. (_res:FindFirstChild("Build") and _res:FindFirstChild("Build").Value or "No Build")
 .. "). Expected build "
 .. Starlight.InterfaceBuild
 .. ". Try rerunning."
 )
 pcall(function()
 Starlight:Notification({
 Title = "Build Mismatch",
 Content = "Incompatible interface version ("
 .. (_res:FindFirstChild("Build") and _res:FindFirstChild("Build").Value or "No Build")
 .. "). Expected build "
 .. Starlight.InterfaceBuild
 .. ". Try rerunning.",
 Icon = 129398364168201,
 })
 end)
 end

 WindowSettings.FileSettings = WindowSettings.FileSettings or {}
 local hasOld = WindowSettings.ConfigurationSettings ~= nil
 if WindowSettings.FileSettings.RootFolder == nil and hasOld then
 WindowSettings.FileSettings.RootFolder = WindowSettings.ConfigurationSettings.RootFolder
 end
 if WindowSettings.FileSettings.ConfigFolder == nil and hasOld then
 WindowSettings.FileSettings.ConfigFolder = WindowSettings.ConfigurationSettings.FolderName
 end

 local root = WindowSettings.FileSettings.RootFolder
 local folder = WindowSettings.FileSettings.ConfigFolder
 local folderpath = root ~= nil and root .. "/" .. folder or folder

 if root ~= nil then
 WindowSettings.FileSettings.ThemesInRoot = WindowSettings.FileSettings.ThemesInRoot == nil and true
 or WindowSettings.FileSettings.ThemesInRoot
 end

 if WindowSettings.NotifyOnCallbackError == nil then
 WindowSettings.NotifyOnCallbackError = true
 end
 Starlight.FileSystem.AutoloadConfigPath = `{Starlight.FileSystem.Folder}/{folderpath}/configs/`
 if WindowSettings.FileSettings.ThemesInRoot then
 Starlight.FileSystem.AutoloadThemePath = `{Starlight.FileSystem.Folder}/{root}/themes/`
 else
 Starlight.FileSystem.AutoloadThemePath = `{Starlight.FileSystem.Folder}/{folderpath}/themes/`
 end

 Starlight.FileSystem:BuildFolderTree(WindowSettings.FileSettings)

 Starlight.Window = {
 Instance = mainWindow,
 TabSections = {},
 CurrentTab = nil,
 Settings = nil,
 CurrentSize = mainWindow.Size,

 Values = WindowSettings,
 }

 
 do
 local AcrylicObject = Acrylic.AcrylicPaint()
 local AcrylicObject2 = Acrylic.AcrylicPaint()
 pcall(function()
 AcrylicObject.AddParent(mainWindow)
 AcrylicObject.Frame.Parent = mainWindow
 AcrylicObject.Model.Size = Vector3.new(1.0, 1.032, 0.001)
 AcrylicObject2.AddParent(_mobileToggle)
 AcrylicObject2.Frame.Parent = _mobileToggle
 AcrylicObject2.Model.Size = Vector3.new(1.0, 1.0, 0.001)
 end)

 acrylicEvent.Event:Connect(function()
 notificationAcrylicEvent:Fire()
 if mainAcrylic then
 Tween(mainWindow, { BackgroundTransparency = 0.6 })
 Tween(mainWindow.Content.ContentMain, { BackgroundTransparency = 0.6 })
 for _, cornerrepair in pairs(mainWindow.Content.ContentMain.CornerRepairs:GetChildren()) do
 Tween(cornerrepair, { ImageTransparency = 0.6 })
 end
 Tween(mainWindow.Content.Topbar, { BackgroundTransparency = 0.5 })
 for _, cornerrepair in pairs(mainWindow.Content.Topbar.CornerRepairs:GetChildren()) do
 Tween(cornerrepair, { ImageTransparency = 0.5 })
 end
 Tween(mainWindow.Sidebar, { BackgroundTransparency = 0.45 })
 for _, cornerrepair in pairs(mainWindow.Sidebar.CornerRepairs:GetChildren()) do
 Tween(cornerrepair, { ImageTransparency = 0.45 })
 end
 Tween(_mobileToggle.Backdrop, { BackgroundTransparency = 0.5 })
 Tween(_mobileToggle.Backdrop.UIStroke, { Transparency = 0.5 })
 AcrylicObject.Frame.shadow.Visible = true
 else
 Tween(mainWindow, { BackgroundTransparency = 0 })
 Tween(mainWindow.Content.ContentMain, { BackgroundTransparency = 0 })
 for _, cornerrepair in pairs(mainWindow.Content.ContentMain.CornerRepairs:GetChildren()) do
 Tween(cornerrepair, { ImageTransparency = 0 })
 end
 Tween(mainWindow.Content.Topbar, { BackgroundTransparency = 0 })
 for _, cornerrepair in pairs(mainWindow.Content.Topbar.CornerRepairs:GetChildren()) do
 Tween(cornerrepair, { ImageTransparency = 0 })
 end
 Tween(mainWindow.Sidebar, { BackgroundTransparency = 0 })
 for _, cornerrepair in pairs(mainWindow.Sidebar.CornerRepairs:GetChildren()) do
 Tween(cornerrepair, { ImageTransparency = 0 })
 end
 Tween(_mobileToggle.Backdrop, { BackgroundTransparency = 0 })
 Tween(_mobileToggle.Backdrop.UIStroke, { Transparency = 0 })
 AcrylicObject.Frame.shadow.Visible = false
 end
 end)

 mainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.Visible = false
 local loadingScreenLogoChanged = false

 mainWindow["New Loading Screen"].Visible = true
 mainWindow.ModalOverlay.Visible = true

 mainWindow.Size = WindowSettings.DefaultSize ~= nil and WindowSettings.DefaultSize or mainWindow.Size
 if (GUICanvasSize.X - 50) <= mainWindow.AbsoluteSize.X then
 mainWindow.Size = UDim2.new(0, GUICanvasSize.X - 50, mainWindow.Size.Y.Scale, mainWindow.Size.Y.Offset)
 end
 if (GUICanvasSize.Y - 50) <= mainWindow.AbsoluteSize.Y then
 mainWindow.Size = UDim2.new(mainWindow.Size.X.Scale, mainWindow.Size.X.Offset, 0, GUICanvasSize.Y - 50)
 end

 mainWindow.Sidebar.Icon.Image = WindowSettings.Icon ~= nil and "rbxassetid://" .. WindowSettings.Icon or ""
 mainWindow.Sidebar.Header.Text = WindowSettings.Name or ""
 mainWindow.Content.Topbar.Headers.Subheader.Text = WindowSettings.Subtitle or ""
 _mobileToggle.Image = WindowSettings.Icon ~= nil and "rbxassetid://" .. WindowSettings.Icon
 or "rbxassetid://6031097229"

 local size = mainWindow.Size
 mainWindow.Size = WindowSettings.LoadingEnabled and UDim2.fromOffset(500, 325) or mainWindow.Size
 _mw.Position = UDim2.fromOffset(
 Camera.ViewportSize.X / 2 - _mw.Size.X.Offset / 2,
 ((Camera.ViewportSize.Y / 2 - GuiInset) - _mw.Size.Y.Offset / 2) - (GuiInset / 2)
 )
 _drag.Position = UDim2.new(
 0.5,
 0,
 0,
 ((Camera.ViewportSize.Y / 2 - GuiInset) - _mw.Size.Y.Offset / 2)
 - (GuiInset / 2)
 + mainWindow.Size.Y.Offset
 + 10
 )

 mainWindow.ModalOverlay.Visible = false
 
 if WindowSettings.LoadingSettings then
 if WindowSettings.LoadingSettings.Logo then
 mainWindow["New Loading Screen"].Frame.ImageLabel.Image.Image = "rbxassetid://"
 .. WindowSettings.LoadingSettings.Logo
 mainWindow["New Loading Screen"].Frame.ImageLabel.Image.Size = UDim2.fromScale(1, 1)
 loadingScreenLogoChanged = true
 end
 end

 mainWindow.Sidebar.Player.PlayerIcon.Image =
 Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
 mainWindow.Sidebar.Player.Header.Text = Player.DisplayName
 mainWindow.Sidebar.Player.subheader.Text = Player.Name

 ContentProvider:PreloadAsync({
 "rbxassetid://116767744785553", 
 "rbxassetid://90155503712202", 
 "rbxassetid://18824089198", 
 "rbxassetid://129398364168201", 
 "rbxassetid://3926305904", 
 "rbxassetid://108613279334326", 
 "rbxassetid://6031625148", 
 "rbxassetid://4155801252", 
 "rbxassetid://16423157073", 
 "rbxassetid://123097456061373", 
 "rbxassetid://114684871091583", 
 "rbxassetid://6034304908", 
 "rbxassetid://8445471332", 
 "rbxassetid://92421933997743", 
 "rbxassetid://80990588449079", 
 }, function(asset)
 if debugV then
 print(`loaded asset {asset}`)
 end
 end)

 
 do
 ThemeMethods.bindTheme(_mobileToggle.Backdrop, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(_mobileToggle.Backdrop.UIStroke, "Color", "Foregrounds.Dark")
 for _, shadow in pairs(_mobileToggle.Backdrop.DropShadowHolder:GetChildren()) do
 ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.Shadow")
 end

 ThemeMethods.bindTheme(mainWindow, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(mainWindow.UIStroke.Accent, "Color", "Accents.Brighter")
 for _, shadow in pairs(mainWindow.DropShadowHolder:GetChildren()) do
 ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.Shadow")
 end
 ThemeMethods.bindTheme(mainWindow.ModalOverlay, "BackgroundColor3", "Backgrounds.Groupbox")
 ThemeMethods.bindTheme(mainWindow.Sidebar, "BackgroundColor3", "Backgrounds.Light")
 for _, cornerrepair in pairs(mainWindow.Sidebar.CornerRepairs:GetChildren()) do
 ThemeMethods.bindTheme(cornerrepair, "ImageColor3", "Backgrounds.Light")
 end
 ThemeMethods.bindTheme(mainWindow.Sidebar.DropShadowHolder.DropShadow, "ImageColor3", "Foregrounds.Dark")
 ThemeMethods.bindTheme(mainWindow.Sidebar.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(mainWindow.Sidebar.Player.PlayerIcon, "BackgroundColor3", "Backgrounds.Groupbox")
 ThemeMethods.bindTheme(mainWindow.Sidebar.Player.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(mainWindow.Sidebar.Player.Header.Icon.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(mainWindow.Sidebar.Player.subheader, "TextColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(mainWindow.Content.Topbar, "BackgroundColor3", "Backgrounds.Medium")
 for _, cornerrepair in pairs(mainWindow.Content.Topbar.CornerRepairs:GetChildren()) do
 ThemeMethods.bindTheme(cornerrepair, "ImageColor3", "Backgrounds.Medium")
 end
 ThemeMethods.bindTheme(mainWindow.Content.Topbar.Headers.Subheader, "TextColor3", "Foregrounds.Medium")
 for _, control in pairs(mainWindow.Content.Topbar.Controls:GetChildren()) do
 if control.ClassName ~= "TextButton" then
 continue
 end
 ThemeMethods.bindTheme(control, "BackgroundColor3", "Foregrounds.Dark")
 end
 ThemeMethods.bindTheme(mainWindow.Content.Topbar.NotificationCenterIcon, "ImageColor3", "Foregrounds.Dark")
 ThemeMethods.bindTheme(mainWindow.Content.Topbar.Search, "ImageColor3", "Foregrounds.Dark")
 ThemeMethods.bindTheme(mainWindow.Content.ContentMain, "BackgroundColor3", "Backgrounds.Dark")
 for _, cornerrepair in pairs(mainWindow.Content.ContentMain.CornerRepairs:GetChildren()) do
 ThemeMethods.bindTheme(cornerrepair, "ImageColor3", "Backgrounds.Dark")
 end

 ThemeMethods.bindTheme(_drag.DragCosmetic, "BackgroundColor3", "Foregrounds.Light")

 ThemeMethods.bindTheme(mainWindow["New Loading Screen"], "BackgroundColor3", "Backgrounds.Medium")
 for _, shadow in pairs(mainWindow["New Loading Screen"].shadows:GetChildren()) do
 ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
 end
 ThemeMethods.bindTheme(mainWindow["New Loading Screen"].Version, "TextColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(
 mainWindow["New Loading Screen"].Frame.SubFrame.Title,
 "TextColor3",
 "Foregrounds.Light"
 )
 ThemeMethods.bindTheme(
 mainWindow["New Loading Screen"].Frame.SubFrame.Title.playerName,
 "TextColor3",
 "Foregrounds.Light"
 )
 ThemeMethods.bindTheme(
 mainWindow["New Loading Screen"].Frame.SubFrame.Subtitle,
 "TextColor3",
 "Foregrounds.Medium"
 )
 if not loadingScreenLogoChanged then
 ThemeMethods.bindTheme(
 mainWindow["New Loading Screen"].Frame.ImageLabel.Image,
 "ImageColor3",
 "Foregrounds.Light"
 )
 end
 ThemeMethods.bindTheme(
 mainWindow["New Loading Screen"].Frame.ImageLabel.Player,
 "BackgroundColor3",
 "Backgrounds.Groupbox"
 )
 end

 task.spawn(function()
 if WindowSettings.LoadingEnabled then
 mainWindow.Visible = true
 _drag.Visible = true
 _mobileToggle.Visible = UserInputService.TouchEnabled
 

 local main = mainWindow["New Loading Screen"]
 local shadows = main.shadows
 local content = main.Frame
 local versionLabel = main.Version

 local imgContainer = content.ImageLabel
 local textLabels = content.SubFrame

 local loadingCircle = imgContainer.Image
 local playerIcon = imgContainer.Player

 local subtitle = textLabels.Subtitle
 local title = textLabels.Title

 _mw.Position = UDim2.fromOffset(
 Camera.ViewportSize.X / 2 - _mw.Size.X.Offset / 2,
 ((Camera.ViewportSize.Y / 2 - GuiInset) - _mw.Size.Y.Offset / 2) - (GuiInset / 2)
 )
 _drag.Position = UDim2.new(
 0.5,
 0,
 0,
 ((Camera.ViewportSize.Y / 2 - GuiInset) - _mw.Size.Y.Offset / 2)
 - (GuiInset / 2)
 + mainWindow.Size.Y.Offset
 + 10
 )

 for _, shadow in pairs(shadows:GetChildren()) do
 shadow.ImageTransparency = 1
 end
 for _, shadow in pairs(mainWindow.DropShadowHolder:GetChildren()) do
 shadow.ImageTransparency = 1
 end
 versionLabel.TextTransparency = 1
 loadingCircle.ImageTransparency = 1
 subtitle.TextTransparency = 1
 title.TextTransparency = 1

 title.Text = WindowSettings.LoadingSettings and WindowSettings.LoadingSettings.Title
 or (WindowSettings.Name or "Interface")
 versionLabel.Text = Release
 title.playerName.Text = Player.DisplayName
 playerIcon.Image = Players:GetUserThumbnailAsync(
 Player.UserId,
 Enum.ThumbnailType.HeadShot,
 Enum.ThumbnailSize.Size352x352
 )

 Tween(main, { BackgroundTransparency = 0 }, nil, Tween.Info("Quint", "InOut", 0.2))
 for _, shadow in pairs(shadows:GetChildren()) do
 local trans = {
 antumbraShadow = 0.9,
 penumbraShadow = 0.45,
 umbraShadow = 0.1,
 }

 Tween(shadow, { ImageTransparency = trans[shadow.Name] }, nil, Tween.Info("Quint", "InOut", 0.2))
 end
 Tween(versionLabel, { TextTransparency = 0 }, nil, Tween.Info("Quint", "InOut", 0.2))
 task.wait(0.076)
 Tween(loadingCircle, { ImageTransparency = 0 }, nil, Tween.Info(nil, "InOut", 0.7))
 Tween(title, { TextTransparency = 0 }, nil, Tween.Info(nil, "InOut", 0.7))
 task.wait(0.05)
 Tween(subtitle, { TextTransparency = 0 }, nil, Tween.Info(nil, "InOut", 0.7))

 if not loadingScreenLogoChanged then
 Tween(
 loadingCircle,
 { Rotation = 450 },
 nil,
 TweenInfo.new(1.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 2, false, 0.2)
 )
 else
 if WindowSettings.LoadingSettings.IconAnimation then
 pcall(WindowSettings.LoadingSettings.IconAnimation, loadingCircle)
 end
 end

 task.wait(3.24)

 subtitle.Text = "Loaded!"
 task.wait(0.5)

 subtitle.Text = "Logging In..."
 task.wait(1.72)

 subtitle.Text = WindowSettings.LoadingSettings
 and (WindowSettings.LoadingSettings.Subtitle or WindowSettings.LoadingSettings.Title)
 or "Welcome To Starlight!"
 Tween(title, { TextTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
 Tween(title.playerName, { Position = UDim2.new(0, -8, 0, 0) }, nil, Tween.Info("Quint", "InOut", 0.85))
 Tween(
 playerIcon,
 { Size = UDim2.new(1, -10, 1, -10), Position = UDim2.new(0.5, 0, 0.5, -6) },
 nil,
 Tween.Info("Back", "InOut", 1.4)
 )
 Tween(loadingCircle, { ImageTransparency = 1 }, nil, Tween.Info(nil, nil, 0.38))

 task.wait(1.5)

 Tween(mainWindow, {
 Size = size,
 Position = UDim2.fromOffset(
 Camera.ViewportSize.X / 2 - size.X.Offset / 2,
 ((Camera.ViewportSize.Y / 2 - GuiInset) - size.Y.Offset / 2) - (GuiInset / 2)
 ),
 }, nil, Tween.Info(nil, nil, 1.1))
 Tween(_drag, {
 Position = UDim2.new(
 0.5,
 0,
 0,
 ((Camera.ViewportSize.Y / 2 - GuiInset) - size.Y.Offset / 2)
 - (GuiInset / 2)
 + size.Y.Offset
 + 10
 ),
 }, nil, Tween.Info(nil, nil, 1.1))

 Tween(mainWindow.DropShadowHolder.umbraShadow, {
 ImageTransparency = 0,
 }, nil, Tween.Info(nil, nil, 1.5))
 Tween(mainWindow.DropShadowHolder.antumbraShadow, {
 ImageTransparency = 0.94,
 }, nil, Tween.Info(nil, nil, 1.5))
 Tween(mainWindow.DropShadowHolder.penumbraShadow, {
 ImageTransparency = 0.55,
 }, nil, Tween.Info(nil, nil, 1.5))
 for _, shadow in pairs(shadows:GetChildren()) do
 Tween(shadow, { ImageTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 1.2))
 end

 Tween(
 playerIcon,
 { Size = UDim2.new(1, 10, 1, 10), ImageTransparency = 1 },
 nil,
 Tween.Info("Back", "InOut", 0.9)
 )
 Tween(title.playerName, { Position = UDim2.new(0, 0, 1, 0) }, nil, Tween.Info("Quint", "InOut", 0.85))
 Tween(subtitle, { TextTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
 Tween(versionLabel, { TextTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
 task.wait(0.08)
 Tween(playerIcon, { BackgroundTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
 task.wait(1.1 - 0.08)
 Tween(main, { BackgroundTransparency = 1 }, nil, Tween.Info("Quint", "InOut", 0.2))
 
 
 end

 mainWindow["New Loading Screen"].Visible = false

 mainWindow.Visible = true
 _drag.Visible = true
 _mobileToggle.Visible = UserInputService.TouchEnabled
 end)

 makeDraggable(mainWindow.Content.Topbar, mainWindow, _drag)
 makeDraggable(mainWindow.Sidebar, mainWindow, _drag)
 makeDraggable(_mobileToggle, _mobileToggle, nil)
 if _drag then
 makeDraggable(_drag.Interact, mainWindow, _drag, true, nil, _drag)
 end

 
 end

 
 

 function Starlight.Window:PromptDialog(ModalSettings)
 

 ModalSettings.Type = ModalSettings.Type or 1

 local Modal = {
 Open = false,
 Values = ModalSettings,
 }

 Modal.Instance = mainWindow.ModalOverlay.Template:Clone()
 Modal.Instance.Holder.Actions.Primary:Destroy()
 Modal.Instance.Holder.Actions.Secondary:Destroy()
 Modal.Instance.Holder.Actions.Input:Destroy()
 Modal.Instance.Name = "Dialog"
 mainWindow.Content.Interactable = false

 repeat
 task.wait()
 until Modal.Instance.Holder ~= nil
 Modal.Instance.Holder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
 pcall(function()
 Modal.Instance.Size =
 UDim2.fromOffset(400, Modal.Instance.Holder and Modal.Instance.Holder.AbsoluteSize.Y or 0)
 end)
 end)
 Modal.Instance.Size = UDim2.fromOffset(400, Modal.Instance.Holder and Modal.Instance.Holder.AbsoluteSize.Y)

 
 do
 ThemeMethods.bindTheme(Modal.Instance, "BackgroundColor3", "Miscellaneous.LighterShadow")
 ThemeMethods.bindTheme(Modal.Instance.UIStroke, "Color", "Foregrounds.Dark")
 for _, shadow in pairs(Modal.Instance.DropShadowHolder:GetChildren()) do
 ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
 end

 acrylicEvent.Event:Connect(function()
 if mainAcrylic then
 Modal.Instance.BackgroundTransparency = 0.7
 else
 Modal.Instance.BackgroundTransparency = 0.05
 end
 end)
 end

 local connection
 local function close(x)
 Tween(Modal.Instance.UIScale, { Scale = 1.25 })
 Hide(Modal.Instance)
 Tween(mainWindow.ModalOverlay, { BackgroundTransparency = 1, ImageTransparency = 1 }, function()
 Modal.Instance:Destroy()
 end)
 task.wait(0.18)
 mainWindow.ModalOverlay.Visible = false
 mainWindow.Content.Interactable = true
 if x then
 x()
 end
 connection:Disconnect()
 end

 connection = mainWindow.ModalOverlay.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 close()
 end)

 Modal.Instance.Holder.Header.TextLabel.Text = Modal.Values.Name
 Modal.Instance.Holder.Header.Icon.Visible = not String.IsEmptyOrNull(Modal.Values.Icon)
 if Modal.Instance.Holder.Header.Icon.Visible == false then
 Modal.Instance.Holder.Header.TextLabel.Position = UDim2.fromOffset(5, 0)
 else
 Modal.Instance.Holder.Header.TextLabel.Position = UDim2.fromOffset(36, 0)
 end
 Modal.Instance.Holder.Header.Icon.Image = not String.IsEmptyOrNull(Modal.Values.Icon)
 and "rbxassetid://" .. Modal.Values.Icon
 or ""
 Modal.Instance.Holder.Content.TextLabel.Text = Modal.Values.Content

 if Modal.Values.Type == 1 then
 for Key, Action in pairs(Modal.Values.Actions) do
 local ActionButton: TextButton = nil
 if Key == "Primary" then
 ActionButton = mainWindow.ModalOverlay.Template.Holder.Actions.Primary:Clone()

 ThemeMethods.bindTheme(ActionButton.Backdrop.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(ActionButton.Backdrop.UIStroke.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(ActionButton.Header.Icon, "ImageColor3", "Foregrounds.Active")
 ThemeMethods.bindTheme(ActionButton.Header.Header, "TextColor3", "Foregrounds.Active")
 else
 ActionButton = mainWindow.ModalOverlay.Template.Holder.Actions.Secondary:Clone()

 ThemeMethods.bindTheme(ActionButton.Backdrop, "BackgroundColor3", "Backgrounds.Groupbox")
 ThemeMethods.bindTheme(ActionButton.Backdrop.UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(ActionButton.Backdrop.Shadow, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(ActionButton.Header.Icon, "ImageColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(ActionButton.Header.Icon, "ImageColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(ActionButton.Header.Header, "TextColor3", "Foregrounds.Light")
 end

 ActionButton.Parent = Modal.Instance.Holder.Actions
 ActionButton.Header.Icon.Image = not String.IsEmptyOrNull(Action.Icon)
 and "rbxassetid://" .. Action.Icon
 or ""
 ActionButton.Header.Icon.Visible = not String.IsEmptyOrNull(Action.Icon)
 ActionButton.Header.Header.Text = Action.Name

 ActionButton.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 close(function()
 local Success, Response = pcall(Action.Callback)

 if not Success then
 warn(`CB Error | Dialog {Modal.Values.Name}`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Modal.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 end
 end)
 end)
 end
 else
 Modal.Instance.Holder.Actions.UIListLayout.FillDirection = Enum.FillDirection.Vertical
 for _, Action in pairs(Modal.Values.Actions) do
 Action.CurrentValue = Action.CurrentValue or ""
 Action.PlaceholderText = Action.PlaceholderText or ""
 Action.Numeric = Action.Numeric or false
 Action.Enter = Action.Enter or true
 Action.MaxCharacters = Action.MaxCharacters or -1
 if Action.RemoveTextOnFocus == nil then
 Action.RemoveTextOnFocus = true
 end

 local ActionInput = mainWindow.ModalOverlay.Template.Holder.Actions.Input:Clone()
 ThemeMethods.bindTheme(ActionInput, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(ActionInput.UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(ActionInput.PART_Input, "PlaceholderColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(ActionInput.PART_Input, "TextColor3", "Foregrounds.Light")

 ActionInput.Visible = true
 ActionInput.Parent = Modal.Instance.Holder.Actions
 ActionInput.PART_Input.FocusLost:Connect(function(Enter)
 if not ActionInput then
 return
 end

 close(function()
 if Action.Enter then
 local Success, Response = pcall(function()
 Action.Callback(Action.CurrentValue)
 end)

 if not Success then
 warn(`CB Error | Dialog {Modal.Values.Name}`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Modal.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 end
 end

 if Action.RemoveTextAfterFocusLost then
 ActionInput.PART_Input.Text = ""
 Action.CurrentValue = ""
 end
 end)
 end)

 ActionInput.Interact.Focused:Connect(function()
 ActionInput.Interact:ReleaseFocus()
 ActionInput.PART_Input:CaptureFocus()
 end)

 ActionInput.MouseEnter:Connect(function()
 Tween(ActionInput.UIStroke, { Color = Starlight.CurrentTheme.Foregrounds.DarkHover })
 end)
 ActionInput.MouseLeave:Connect(function()
 Tween(ActionInput.UIStroke, { Color = Starlight.CurrentTheme.Foregrounds.Dark })
 end)

 if Action.Numeric then
 ActionInput.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
 local text = ActionInput.PART_Input.Text
 if not tonumber(text) and text ~= "." then
 ActionInput.PART_Input.Text = text:match("[0-9.]*") or ""
 end
 end)
 end

 ActionInput.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
 if Action.MaxCharacters < 0 then
 if (#ActionInput.PART_Input.Text - 1) == Action.MaxCharacters then
 ActionInput.PART_Input.Text = ActionInput.PART_Input.Text:sub(1, Action.MaxCharacters)
 end
 end
 Action.CurrentValue = ActionInput.PART_Input.Text
 end)

 ActionInput.PART_Input.PlaceholderText = Action.PlaceholderText or ""
 ActionInput.PART_Input.Text = Action.CurrentValue
 ActionInput.PART_Input.ClearTextOnFocus = Action.RemoveTextOnFocus
 end
 end

 Hide(Modal.Instance)
 
 Tween(Modal.Instance.UIScale, { Scale = 1 })
 Unhide(Modal.Instance)
 task.wait(0.1)
 mainWindow.ModalOverlay.Visible = true
 Tween(mainWindow.ModalOverlay, { BackgroundTransparency = 0.2, ImageTransparency = 0.1 })

 Modal.Instance.Parent = mainWindow.ModalOverlay
 
 end

 local prebuiltTabSection = nil

 local homeTabCalled: boolean? = false
 function Starlight.Window:CreateHomeTab(TabSettings)
 TabSettings.UnsupportedExecutors = TabSettings.UnsupportedExecutors or {}
 TabSettings.SupportedExecutors = TabSettings.SupportedExecutors or {}
 TabSettings.DiscordInvite = TabSettings.DiscordInvite or ""
 TabSettings.Changelog = TabSettings.Changelog or {}
 TabSettings.IconStyle = TabSettings.IconStyle or 1

 if homeTabCalled then
 return
 end
 homeTabCalled = true

 local Tab = {
 Instances = {},
 Values = TabSettings,
 Groupboxes = {},
 Index = "prebuilthometab",

 Active = false,
 Hover = false,
 }

 if not prebuiltTabSection then
 prebuiltTabSection = Starlight.Window:CreateTabSection()
 prebuiltTabSection.Instance.LayoutOrder = -1
 end

 local executorname = identifyexecutor and identifyexecutor() or "Roblox Studio"

 Tab.Instances.Button = navigation.NavigationSectionTemplate.TabButtonTemplate:Clone()
 Tab.Instances.Button.Visible = true

 Tab.Instances.Button.Header.Text = "Dashboard"
 Tab.Instances.Button.Name = "HomeTab"

 Tab.Instances.Button.Icon.Image = Tab.Values.IconStyle == 1 and "rbxassetid://97461687077117"
 or "rbxassetid://11295288868"

 Tab.Instances.Page = tabs["HomeTab"]
 Tab.Instances.Page.Visible = true

 Tab.Instances.Page.LayoutOrder = -1

 local function Activate() 
 Tween(Tab.Instances.Button, { BackgroundTransparency = 0.5 })
 Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tab.Instances.Button.Icon.AccentBrighter.Enabled = true
 Tab.Instances.Button.Header.AccentBrighter.Enabled = true

 for i, v in pairs(Starlight.Window.TabSections) do
 for _, tab in pairs(v.Tabs) do
 tab.Active = false
 end
 end

 for _, OtherTabSection in pairs(navigation:GetChildren()) do
 for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
 if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
 Tween(OtherTab, { BackgroundTransparency = 1 })
 Tween(OtherTab.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 Tween(OtherTab.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 OtherTab.Icon.AccentBrighter.Enabled = false
 OtherTab.Header.AccentBrighter.Enabled = false
 end
 end
 end

 Tab.Active = true
 Starlight.Window.CurrentTab = Tab
 tabs.UIPageLayout:JumpTo(Tab.Instances.Page)
 end

 repeat
 task.wait()
 until Tab.Instances.Page.Parent == tabs
 Activate()

 Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(Activate)

 Tab.Instances.Button.MouseEnter:Connect(function()
 Tab.Hover = true
 if not Tab.Active then
 Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 end
 end)

 Tab.Instances.Button.MouseLeave:Connect(function()
 Tab.Hover = false
 if not Tab.Active then
 Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 end
 end)

 Tab.Instances.Page.InputBegan:Connect(function(input)
 if
 input.KeyCode == Enum.KeyCode.LeftShift
 or input.KeyCode == Enum.KeyCode.RightShift
 or input.UserInputType == Enum.UserInputType.Touch
 then
 Tab.Instances.Page.ScrollingEnabled = true
 end
 end)
 Tab.Instances.Page.InputEnded:Connect(function(input)
 if
 input.KeyCode == Enum.KeyCode.LeftShift
 or input.KeyCode == Enum.KeyCode.RightShift
 or input.UserInputType == Enum.UserInputType.Touch
 then
 Tab.Instances.Page.ScrollingEnabled = false
 end
 end)

 if TabSettings.Backdrop then
 if TabSettings.Backdrop == 0 then
 Tab.Instances.Page.ImageBackdrop.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="
 .. game.PlaceId
 .. "&width=768&height=432&format=png"
 else
 Tab.Instances.Page.ImageBackdrop.Image = "rbxassetid://" .. TabSettings.Backdrop
 Tab.Instances.Page.ImageBackdrop.Visible = not Tab.Instances.Page.ImageBackdrop.Visible
 Tab.Instances.Page.ImageBackdrop.Visible = not Tab.Instances.Page.ImageBackdrop.Visible
 end
 else
 Tab.Instances.Page.ImageBackdrop.Image = "rbxassetid://78881404248017"
 end

 Tab.Instances.Page.playerDisplay.Text = `Welcome, {Player.DisplayName}`
 Tab.Instances.Page.Thumbnail.ImageLabel.Image =
 Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)

 task.spawn(function()
 connections.__homeTabTime = RunService.RenderStepped:Connect(function()
 local t = os.date("*t")
 local hour = t.hour

 local formatted = string.format("%02d : %02d : %02d", hour, t.min, t.sec)
 local greetingString = ""
 if hour >= 4 and hour < 12 then
 greetingString = "Good Morning!"
 elseif hour >= 12 and hour < 19 then
 greetingString = "How's Your Day Going?"
 elseif hour >= 19 and hour <= 23 then
 greetingString = "Sweet Dreams."
 else
 greetingString = "Jeez you should be asleep..."
 end
 Tab.Instances.Page.playerUser.Text = `{greetingString} | {Player.Name}`

 Tab.Instances.Page.clock.Text =
 `{formatted}\n{string.format("%02d / %02d / %02d", t.day, t.month, t.year % 100)}`
 end)
 end)

 for _, column in pairs(Tab.Instances.Page.Holder:GetChildren()) do
 if column.ClassName ~= "Frame" then
 continue
 end

 for _, button in pairs(column:GetChildren()) do
 if button.ClassName ~= "Frame" then
 continue
 end

 button.Interact.MouseEnter:Connect(function()
 Tween(button.Hover, { BackgroundTransparency = 0 })
 end)
 button.Interact.MouseLeave:Connect(function()
 Tween(button.Hover, { BackgroundTransparency = 1 })
 end)
 end
 end
 Tab.Instances.Page.Holder.Left.Discord.Interact.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 setclipboard(tostring("https://discord.gg/" .. TabSettings.DiscordInvite))
 if Request then
 pcall(function()
 Request({
 Url = "http://127.0.0.1:6463/rpc?v=1",
 Method = "POST",
 Headers = {
 ["Content-Type"] = "application/json",
 Origin = "https://discord.com",
 },
 Body = HttpService:JSONEncode({
 cmd = "INVITE_BROWSER",
 nonce = HttpService:GenerateGUID(false),
 args = { code = TabSettings.DiscordInvite },
 }),
 })
 end)
 end
 end)

 table.insert(TabSettings.UnsupportedExecutors, "Roblox Studio")

 Tab.Instances.Page.Holder.Center.Executor.Header.Text = executorname
 if table.find(TabSettings.SupportedExecutors, executorname) then
 Tab.Instances.Page.Holder.Center.Executor.Subheader.Text = "Your Executor Is Supported By \nThis Script."
 end
 if table.find(TabSettings.UnsupportedExecutors, executorname) then
 Tab.Instances.Page.Holder.Center.Executor.Subheader.Text = "Your Executor Is Unsupported \nBy This Script."
 end

 Tab.Instances.Page.Holder.Left.Server.Subheader.Text = "Currently Playing "
 .. MarketplaceService:GetProductInfo(game.PlaceId).Name
 Tab.Instances.Page.Holder.Left.Server.Frame.serverregion.Text = ' Region \n'
 .. Localization:GetCountryRegionForPlayerAsync(Player)
 
 Tab.Instances.Page.Holder.Left.Server.Frame.copyjoin.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 setclipboard(`game:GetService("TeleportService"):TeleportToPlaceInstance({game.PlaceId}, "{game.JobId}", game:GetService("Players").LocalPlayer)`)
 end)
 
 local function updatePlayerCount()
 Tab.Instances.Page.Holder.Left.Server.Frame.playercount.Text = ' Players \n'
 .. #Players:GetChildren()
 .. (#Players:GetChildren() > 1 and " Players" or " Player")
 .. " In\nThis Server"
 Tab.Instances.Page.Holder.Left.Server.Frame.maxplayers.Text = ' Capacity \n'
 .. Players.MaxPlayers
 .. (Players.MaxPlayers > 1 and " Players" or " Player")
 .. " In\ncan join."
 end
 local function protectedUpdate() 
 pcall(updatePlayerCount)
 end
 updatePlayerCount()
 local localconnections =
 { Players.ChildAdded:Connect(protectedUpdate), Players.ChildRemoved:Connect(protectedUpdate) }
 Tab.Instances.Page.Holder.Left.Server.Frame.playercount.Destroying:Connect(function()
 for _, connection in pairs(localconnections) do
 connection:Disconnect()
 end
 end)
 for _, connection in pairs(localconnections) do
 table.insert(connections, connection)
 end

 local function getPing()
 return math.round(((isStudio and Players.LocalPlayer:GetNetworkPing() or StatsService.PerformanceStats.Ping:GetValue()) * 2) / 0.01)
 end
 local TimeFunction = RunService:IsRunning() and time or os.clock

 local LastIteration, Start
 local FrameUpdateTable = {}

 local friendsCooldown = 0
 local function checkFriends()
 if friendsCooldown == 0 then
 friendsCooldown = 25

 local playersFriends = {}
 local friendsInTotal = 0
 local onlineFriends = #Player:GetFriendsOnline()
 local friendsInGame = 0

 local list = Players:GetFriendsAsync(Player.UserId)
 while true do
 for _, data in list:GetCurrentPage() do
 friendsInTotal += 1
 table.insert(playersFriends, data)
 end

 if list.IsFinished then
 
 break
 else
 
 list:AdvanceToNextPageAsync()
 end
 end
 for i, v in pairs(playersFriends) do
 if Players:FindFirstChild(v.Username) then
 friendsInGame += 1
 end
 end

 Tab.Instances.Page.Holder.Right.Friends.Frame.total.Text = ' Total \n'
 .. tostring(friendsInTotal)
 .. " friends"
 Tab.Instances.Page.Holder.Right.Friends.Frame.offline.Text = ' Offline \n'
 .. tostring(friendsInTotal - onlineFriends)
 .. " friends"
 Tab.Instances.Page.Holder.Right.Friends.Frame.online.Text = ' Online \n'
 .. tostring(onlineFriends)
 .. " friends"
 Tab.Instances.Page.Holder.Right.Friends.Frame.inserver.Text = ' In Server \n'
 .. tostring(friendsInGame)
 .. " friends"
 else
 friendsCooldown -= 1
 end
 end

 local function HeartbeatUpdate()
 LastIteration = TimeFunction()
 for Index = #FrameUpdateTable, 1, -1 do
 FrameUpdateTable[Index + 1] = FrameUpdateTable[Index] >= LastIteration - 1 and FrameUpdateTable[Index]
 or nil
 end

 FrameUpdateTable[1] = LastIteration
 Tab.Instances.Page.Holder.Left.Server.Frame.latency.Text =
 ` Latency \n{tostring(
 math.floor(
 TimeFunction() - Start >= 1 and #FrameUpdateTable
 or #FrameUpdateTable / (TimeFunction() - Start)
 )
 )} FPS\n{getPing()}ms`

 local function convertToHMS(elapsed)
 if elapsed <= 4 then
 return "now"
 elseif elapsed < 60 then
 return math.floor(elapsed) .. "s"
 elseif elapsed < 3600 then
 return math.floor(elapsed / 60) .. "m"
 else
 return math.floor(elapsed / 3600) .. "h"
 end
 end

 Tab.Instances.Page.Holder.Left.Server.Frame.time.Text = ' Players \n'
 .. convertToHMS(time())
 end
 
 if TabSettings.Changelog[1] then
 Tab.Instances.Page.Holder.Center.Changelog.latest.Visible = true
 Tab.Instances.Page.Holder.Center.Changelog.latest.Header.Text = TabSettings.Changelog[1].Title
 Tab.Instances.Page.Holder.Center.Changelog.latest.date.Text = TabSettings.Changelog[1].Date
 Tab.Instances.Page.Holder.Center.Changelog.latest.desc.Text = TabSettings.Changelog[1].Description
 end

 checkFriends()
 Start = TimeFunction()
 connections.__fpscheck = RunService.Heartbeat:Connect(HeartbeatUpdate)

 ThemeMethods.bindTheme(Tab.Instances.Button, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(Tab.Instances.Button.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(Tab.Instances.Button.Icon.AccentBrighter, "Color", "Accents.Brighter")
 ThemeMethods.bindTheme(Tab.Instances.Button.Header.AccentBrighter, "Color", "Accents.Brighter")
 ThemeMethods.bindTheme(Tab.Instances.Button.Icon, "ImageColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(Tab.Instances.Button.Header, "TextColor3", "Foregrounds.Medium")
 themeEvent.Event:Connect(function()
 if tabs.UIPageLayout.CurrentPage == Tab.Instances.Page then
 Activate()
 end
 end)
 ThemeMethods.bindTheme(Tab.Instances.Page.Fade, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(Tab.Instances.Page.Fade2, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(Tab.Instances.Page.Thumbnail, "BackgroundColor3", "Backgrounds.Dark")
 for _, shadow in pairs(Tab.Instances.Page.Thumbnail.DropShadowHolder:GetChildren()) do
 ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.Shadow")
 end
 ThemeMethods.bindTheme(Tab.Instances.Page.Thumbnail.UIStroke, "Color", "Foregrounds.Dark")
 for _, text in pairs(Tab.Instances.Page:GetChildren()) do
 if text.ClassName ~= "TextLabel" then
 continue
 end
 ThemeMethods.bindTheme(text, "TextColor3", "Foregrounds.Light")
 end
 for _, side in pairs(Tab.Instances.Page.Holder:GetChildren()) do
 if side.ClassName ~= "Frame" then
 continue
 end

 for _, panel in pairs(side:GetChildren()) do
 if panel.ClassName ~= "Frame" then
 continue
 end

 ThemeMethods.bindTheme(panel, "BackgroundColor3", "Backgrounds.Light")
 ThemeMethods.bindTheme(panel.DropShadow, "ImageColor3", "Miscellaneous.Shadow")
 ThemeMethods.bindTheme(panel.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(panel.Header.Icon, "ImageColor3", "Foregrounds.Light")
 end
 end

 function Tab:Destroy()
 Tab.Instances.Page:Destroy()
 Tab.Instances.Button:Destroy()
 connections.__homeTabTime:Disconnect()
 end

 Tab.Instances.Button.Parent = prebuiltTabSection.Instance
 prebuiltTabSection.Tabs["prebuilthometab"] = Tab
 return Tab
 end

 function Starlight.Window:CreateTabSection(Name: string, Visible)
 Visible = Visible or (Name ~= nil and true or false)
 Name = Name or "Empty Section"

 local TabSection = {
 Tabs = {},
 Name = Name,
 }

 TabSection.Instance = navigation.NavigationSectionTemplate:Clone()
 TabSection.Instance.TabButtonTemplate:Destroy()
 TabSection.Instance.Visible = true

 TabSection.Instance.Header.Text = Name
 TabSection.Instance.Name = "TAB_SECTION_" .. Name
 TabSection.Instance.Header.Visible = Visible

 
 do
 ThemeMethods.bindTheme(TabSection.Instance.Header, "TextColor3", "Foregrounds.Medium")
 end

 

 function TabSection:Set(NewName)
 Name = NewName
 TabSection.Instance.Header.Text = Name
 TabSection.Instance.Name = "TAB_SECTION_" .. Name
 Starlight.Window.TabSections[Name] = TabSection
 end

 function TabSection:Destroy()
 TabSection.Instance:Destroy()
 for _, tab in pairs(TabSection.Tabs) do
 tab:Destroy()
 end
 TabSection = nil
 end

 function TabSection:CreateCustomTab(TabSettings, TabIndex)
 
 

 TabSettings.Icon = TabSettings.Icon or ""
 local Tab = {
 Instances = {},
 Values = TabSettings,
 Groupboxes = {},
 Index = TabIndex,

 Active = false,
 Hover = false,
 }

 Tab.Instances.Button = navigation.NavigationSectionTemplate.TabButtonTemplate:Clone()
 Tab.Instances.Button.Visible = true

 Tab.Instances.Button.Header.Text = TabSettings.Name
 Tab.Instances.Button.Name = "TAB_" .. TabIndex

 Tab.Instances.Button.Header.UIPadding.PaddingLeft =
 UDim.new(0, not String.IsEmptyOrNull(Tab.Values.Icon) and 36 or 8)
 Tab.Instances.Button.Icon.Image = "rbxassetid://" .. Tab.Values.Icon

 Tab.Instances.Page = tabs["Tab_TEMPLATE"]:Clone()
 for i, v in pairs(Tab.Instances.Page:GetChildren()) do
 if v.ClassName == "ScrollingFrame" then
 v:Destroy()
 end
 end
 Tab.Instances.Page.Visible = true
 Tab.Instances.Page.Name = "TAB_" .. TabIndex
 Tab.Instances.Page.Parent = tabs

 Tab.Instances.Page.LayoutOrder = #tabs:GetChildren() - 2

 local function Activate() 
 Tween(Tab.Instances.Button, { BackgroundTransparency = 0.5 })
 Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tab.Instances.Button.Icon.AccentBrighter.Enabled = true
 Tab.Instances.Button.Header.AccentBrighter.Enabled = true

 for i, v in pairs(Starlight.Window.TabSections) do
 for _, tab in pairs(v.Tabs) do
 tab.Active = false
 end
 end

 for _, OtherTabSection in pairs(navigation:GetChildren()) do
 for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
 if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
 Tween(OtherTab, { BackgroundTransparency = 1 })
 Tween(OtherTab.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 Tween(OtherTab.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 OtherTab.Icon.AccentBrighter.Enabled = false
 OtherTab.Header.AccentBrighter.Enabled = false
 end
 end
 end

 Tab.Active = true
 Starlight.Window.CurrentTab = Tab
 tabs.UIPageLayout:JumpTo(Tab.Instances.Page)
 end

 if Starlight.Window.CurrentTab == nil then
 
 repeat
 task.wait()
 until Tab.Instances.Page.Parent == tabs
 Activate()
 
 end

 Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(Activate)

 Tab.Instances.Button.MouseEnter:Connect(function()
 Tab.Hover = true
 if not Tab.Active then
 Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 end
 end)

 Tab.Instances.Button.MouseLeave:Connect(function()
 Tab.Hover = false
 if not Tab.Active then
 Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 end
 end)

 Tab.Instances.Page.InputBegan:Connect(function(input)
 if
 input.KeyCode == Enum.KeyCode.LeftShift
 or input.KeyCode == Enum.KeyCode.RightShift
 or input.UserInputType == Enum.UserInputType.Touch
 then
 Tab.Instances.Page.ScrollingEnabled = true
 end
 end)
 Tab.Instances.Page.InputEnded:Connect(function(input)
 if
 input.KeyCode == Enum.KeyCode.LeftShift
 or input.KeyCode == Enum.KeyCode.RightShift
 or input.UserInputType == Enum.UserInputType.Touch
 then
 Tab.Instances.Page.ScrollingEnabled = false
 end
 end)

 ThemeMethods.bindTheme(Tab.Instances.Button, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(Tab.Instances.Button.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(Tab.Instances.Button.Icon.AccentBrighter, "Color", "Accents.Brighter")
 ThemeMethods.bindTheme(Tab.Instances.Button.Header.AccentBrighter, "Color", "Accents.Brighter")
 ThemeMethods.bindTheme(Tab.Instances.Button.Icon, "ImageColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(Tab.Instances.Button.Header, "TextColor3", "Foregrounds.Medium")
 themeEvent.Event:Connect(function()
 if tabs.UIPageLayout.CurrentPage == Tab.Instances.Page then
 Activate()
 end
 end)

 TabSettings.Page.Parent = Tab.Instances.Page

 

 function Tab:Set(NewTabSettings)
 TabSettings = NewTabSettings
 Tab.Values = TabSettings
 Tab.Instances.Button.Header.Text = TabSettings.Name
 Tab.Instances.Button.Name = "TAB_" .. TabIndex
 Tab.Instances.Page.Name = "TAB_" .. TabIndex
 Tab.Instances.Button.Icon.Image = "rbxassetid://" .. TabSettings.Icon
 Starlight.Window.TabSections[Name].Tabs[TabIndex].Values = Tab.Values
 end

 function Tab:Destroy()
 Tab.Instances.Button:Destroy()
 Tab.Instances.Page:Destroy()
 for _, groupbox in pairs(Tab.Groupboxes) do
 groupbox:Destroy()
 end
 Tab = nil
 end

 

 Tab.Instances.Button.Parent = Starlight.Window.TabSections[Name].Instance
 Starlight.Window.TabSections[Name].Tabs[TabIndex] = Tab
 return Starlight.Window.TabSections[Name].Tabs[TabIndex]
 end

 function TabSection:CreateTab(TabSettings, TabIndex)
 
 

 TabSettings.Icon = TabSettings.Icon or ""
 local Tab = {
 Instances = {},
 Values = TabSettings,
 Groupboxes = {},
 Index = TabIndex,

 Active = false,
 Hover = false,
 }

 Tab.Instances.Button = navigation.NavigationSectionTemplate.TabButtonTemplate:Clone()
 Tab.Instances.Button.Visible = true

 Tab.Instances.Button.Header.Text = TabSettings.Name
 Tab.Instances.Button.Name = "TAB_" .. TabIndex

 Tab.Instances.Button.Header.UIPadding.PaddingLeft =
 UDim.new(0, not String.IsEmptyOrNull(Tab.Values.Icon) and 36 or 8)
 Tab.Instances.Button.Icon.Image = "rbxassetid://" .. Tab.Values.Icon

 Tab.Instances.Page = tabs["Tab_TEMPLATE"]:Clone()
 for i, v in pairs(Tab.Instances.Page:GetChildren()) do
 if v.ClassName == "ScrollingFrame" then
 v:Destroy()
 end
 end
 Tab.Instances.Page.Visible = true
 Tab.Instances.Page.Name = "TAB_" .. TabIndex
 Tab.Instances.Page.Parent = tabs

 Tab.Instances.Page.LayoutOrder = #tabs:GetChildren() - 2

 local function Activate() 
 Tween(Tab.Instances.Button, { BackgroundTransparency = 0.5 })
 Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tab.Instances.Button.Icon.AccentBrighter.Enabled = true
 Tab.Instances.Button.Header.AccentBrighter.Enabled = true

 for i, v in pairs(Starlight.Window.TabSections) do
 for _, tab in pairs(v.Tabs) do
 tab.Active = false
 end
 end

 for _, OtherTabSection in pairs(navigation:GetChildren()) do
 for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
 if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
 Tween(OtherTab, { BackgroundTransparency = 1 })
 Tween(OtherTab.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 Tween(OtherTab.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 OtherTab.Icon.AccentBrighter.Enabled = false
 OtherTab.Header.AccentBrighter.Enabled = false
 end
 end
 end

 Tab.Active = true
 Starlight.Window.CurrentTab = Tab
 tabs.UIPageLayout:JumpTo(Tab.Instances.Page)
 end

 if Starlight.Window.CurrentTab == nil then
 
 repeat
 task.wait()
 until Tab.Instances.Page.Parent == tabs
 Activate()
 
 end

			Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(Activate)

			Tab.Instances.Button.MouseEnter:Connect(function()
				Tab.Hover = true
				if not Tab.Active then
					Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Light })
					Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
				end
			end)

			Tab.Instances.Button.MouseLeave:Connect(function()
				Tab.Hover = false
				if not Tab.Active then
					Tween(Tab.Instances.Button.Icon, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
					Tween(Tab.Instances.Button.Header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
				end
			end)

			pcall(function()
				if HoverFXReady then
					local inter = Tab.Instances.Button:FindFirstChild("Interact")
					AttachAllHoverFX(
						Tab.Instances.Button,
						true,
						inter and inter:IsA("GuiObject") and inter or nil
					)
				end
			end)

			Tab.Instances.Page.InputBegan:Connect(function(input)
				if
					input.KeyCode == Enum.KeyCode.LeftShift
					or input.KeyCode == Enum.KeyCode.RightShift
					or input.UserInputType == Enum.UserInputType.Touch
				then
					Tab.Instances.Page.ScrollingEnabled = true
				end
			end)
			Tab.Instances.Page.InputEnded:Connect(function(input)
				if
					input.KeyCode == Enum.KeyCode.LeftShift
					or input.KeyCode == Enum.KeyCode.RightShift
					or input.UserInputType == Enum.UserInputType.Touch
				then
					Tab.Instances.Page.ScrollingEnabled = false
				end
			end)

			for i = 1, TabSettings.Columns do
 local column = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate:Clone()
 column.Parent = Tab.Instances.Page
 column.LayoutOrder = i
 column.Name = "Column_" .. i
 for i, v in column:GetChildren() do
 if v.ClassName == "Frame" then
 v:Destroy()
 end
 end

 local fadetop = mainWindow.Content.ContentMain.FadesTop.Fade:Clone()
 fadetop.Name = "FADE_" .. TabIndex
 fadetop.Size = UDim2.new(1 / TabSettings.Columns, -10 / TabSettings.Columns, 0, 40)
 fadetop.LayoutOrder = i

 local fadebottom = mainWindow.Content.ContentMain.FadesBottom.Fade:Clone()
 fadebottom.Name = "FADE_" .. TabIndex
 fadebottom.Size = UDim2.new(1 / TabSettings.Columns, -10 / TabSettings.Columns, 0, 40)
 fadebottom.LayoutOrder = i

 ThemeMethods.bindTheme(fadetop.UIGradient, "Color", "Backgrounds.Dark")
 ThemeMethods.bindTheme(fadebottom.UIGradient, "Color", "Backgrounds.Dark")

 local basetrans = 0

 local function updTop()
 if column.CanvasPosition.Y ~= 0 then
 fadetop.BackgroundTransparency = basetrans
 else
 fadetop.BackgroundTransparency = 1
 end
 fadetop.Visible = tabs.UIPageLayout.CurrentPage == Tab.Instances.Page
 end

 local function updBottom()
 if column.CanvasPosition.Y + column.AbsoluteWindowSize.Y ~= column.AbsoluteCanvasSize.Y then
 fadebottom.BackgroundTransparency = basetrans
 else
 fadebottom.BackgroundTransparency = 1
 end
 fadebottom.Visible = tabs.UIPageLayout.CurrentPage == Tab.Instances.Page
 end
 acrylicEvent.Event:Connect(function()
 if mainAcrylic then
 basetrans = 0.7
 updTop()
 updBottom()
 else
 basetrans = 0
 updBottom()
 updBottom()
 end
 end)

 column:GetPropertyChangedSignal("CanvasPosition"):Connect(updTop)
 column:GetPropertyChangedSignal("CanvasPosition"):Connect(updBottom)
 tabs.UIPageLayout:GetPropertyChangedSignal("CurrentPage"):Connect(updTop)
 tabs.UIPageLayout:GetPropertyChangedSignal("CurrentPage"):Connect(updBottom)

 task.delay(1.2, function()
 updTop()
 updBottom()
 end)

 fadetop.Parent = mainWindow.Content.ContentMain.FadesTop
 fadebottom.Parent = mainWindow.Content.ContentMain.FadesBottom
 end

 ThemeMethods.bindTheme(Tab.Instances.Button, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(Tab.Instances.Button.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(Tab.Instances.Button.Icon.AccentBrighter, "Color", "Accents.Brighter")
 ThemeMethods.bindTheme(Tab.Instances.Button.Header.AccentBrighter, "Color", "Accents.Brighter")
 ThemeMethods.bindTheme(Tab.Instances.Button.Icon, "ImageColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(Tab.Instances.Button.Header, "TextColor3", "Foregrounds.Medium")
 themeEvent.Event:Connect(function()
 if tabs.UIPageLayout.CurrentPage == Tab.Instances.Page then
 Activate()
 end
 end)

 

 function Tab:Set(NewTabSettings)
 TabSettings = NewTabSettings
 Tab.Values = TabSettings
 Tab.Instances.Button.Header.Text = TabSettings.Name
 Tab.Instances.Button.Name = "TAB_" .. TabIndex
 Tab.Instances.Page.Name = "TAB_" .. TabIndex
 Tab.Instances.Button.Icon.Image = "rbxassetid://" .. TabSettings.Icon
 Starlight.Window.TabSections[Name].Tabs[TabIndex].Values = Tab.Values
 end

 function Tab:Destroy()
 Tab.Instances.Button:Destroy()
 Tab.Instances.Page:Destroy()
 for _, groupbox in pairs(Tab.Groupboxes) do
 groupbox:Destroy()
 end
 Tab = nil
 end

 
 

 function Tab:CreateGroupbox(GroupboxSettings, GroupIndex)
 

 GroupboxSettings.Icon = GroupboxSettings.Icon or ""
 GroupboxSettings.Column = GroupboxSettings.Column or 1
 GroupboxSettings.Style = GroupboxSettings.Style or 1

 local Groupbox = {
 Values = GroupboxSettings,
 Elements = {},
 ParentingItem = nil,
 Index = GroupIndex,
 ClassName = "Groupbox",
 }

 local GroupboxTemplateInstance = nil

 task.spawn(function()
 Groupbox.Instance = nil
 if GroupboxSettings.Style == 1 then
 Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]:Clone()
 for i, v in pairs(Groupbox.Instance.PART_Content:GetChildren()) do
 if v.ClassName == "Frame" then
 v:Destroy()
 end
 end
 else
 Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate2["Groupbox_Style2"]:Clone()
 end
 Groupbox.Instance.PART_Content:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
 Groupbox.Instance.PART_Backdrop.Inner.Visible = false
 Groupbox.Instance.PART_Backdrop.Inner.Size = UDim2.fromOffset(
 Groupbox.Instance.PART_Backdrop.AbsoluteSize.X - 2,
 Groupbox.Instance.PART_Backdrop.AbsoluteSize.Y - 2
 )
 Groupbox.Instance.PART_Backdrop.Inner.Visible = true
 end)
 Groupbox.Instance.PART_Backdrop.Inner.Visible = false
 Groupbox.Instance.PART_Backdrop.Inner.Size = UDim2.fromOffset(
 Groupbox.Instance.PART_Backdrop.AbsoluteSize.X - 2,
 Groupbox.Instance.PART_Backdrop.AbsoluteSize.Y - 2
 )
 Groupbox.Instance.PART_Backdrop.Inner.Visible = true

 Groupbox.ParentingItem = Groupbox.Instance.PART_Content

 GroupboxTemplateInstance =
 tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"].PART_Content

 Groupbox.Instance.Header.Text = GroupboxSettings.Name
 Groupbox.Instance.Header.UIPadding.PaddingLeft =
 UDim.new(0, not String.IsEmptyOrNull(GroupboxSettings.Icon) and 32 or 6)
 Groupbox.Instance.Header.Icon.Image = "rbxassetid://" .. GroupboxSettings.Icon
 Groupbox.Instance.Name = "GROUPBOX_" .. GroupIndex

 ThemeMethods.bindTheme(Groupbox.Instance.Header, "TextColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(Groupbox.Instance.Header.Icon, "ImageColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(Groupbox.Instance.PART_Backdrop, "BackgroundColor3", "Backgrounds.Medium")
 ThemeMethods.bindTheme(
 Groupbox.Instance.PART_Backdrop.Inner,
 "BackgroundColor3",
 "Backgrounds.Groupbox"
 )
 ThemeMethods.bindTheme(Groupbox.Instance.PART_Backdrop.UIStroke, "Color", "Miscellaneous.Shadow")

 acrylicEvent.Event:Connect(function()
 if mainAcrylic then
 Groupbox.Instance.PART_Backdrop.BackgroundTransparency = 0.7
 Groupbox.Instance.PART_Backdrop.Inner.BackgroundTransparency = 0.7
 Groupbox.Instance.PART_Backdrop.UIStroke.Transparency = 0.6
 else
 Groupbox.Instance.PART_Backdrop.BackgroundTransparency = 0
 Groupbox.Instance.PART_Backdrop.Inner.BackgroundTransparency = 0
 Groupbox.Instance.PART_Backdrop.UIStroke.Transparency = 0
 end
 end)
 end)

 
 

 function Groupbox:Set(NewGroupboxSettings)
 local oldInstance = Groupbox.Instance

 if NewGroupboxSettings.Style == 1 then
 Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]:Clone()
 for i, v in pairs(Groupbox.Instance.PartContent:GetChildren()) do
 if v.ClassName == "Frame" then
 v:Destroy()
 end
 end
 else
 Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate2["Groupbox_Style2"]:Clone()
 end

 Groupbox.ParentingItem = Groupbox.Instance.PART_Content

 if GroupboxSettings.Style == 1 then
 for _, element in pairs(oldInstance:GetChildren()) do
 if element.ClassName ~= "Frame" then
 element:Destroy()
 end
 element.Parent = Groupbox.ParentingItem
 end
 elseif GroupboxSettings.Style == 2 then
 for _, element in pairs(oldInstance.PART_Content:GetChildren()) do
 if element.ClassName ~= "Frame" then
 element:Destroy()
 end
 element.Parent = Groupbox.ParentingItem
 end
 end
 oldInstance:Destroy()

 Groupbox.Instance.Header.Text = NewGroupboxSettings.Name
 Groupbox.Instance.Header.Icon.Image = "rbxassetid://" .. NewGroupboxSettings.Icon
 Groupbox.Instance.Name = "GROUPBOX_" .. GroupIndex
 Groupbox.Instance.Parent = Tab.Instances.Page["Column_" .. NewGroupboxSettings.Column]

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Values =
 NewGroupboxSettings
 end

 function Groupbox:Destroy()
 Groupbox.Instance:Destroy()
 for _, element in pairs(Groupbox.Elements) do
 element:Destroy()
 end
 Groupbox = nil
 end

 

 

 function Groupbox:CreateButton(ElementSettings, Index)
 

 ElementSettings.Style = ElementSettings.Style or 2

 local Element = {
 Values = ElementSettings,
 Class = "Button",
 }

 local Instances
 task.spawn(function()
 Instances = {
 Style1 = GroupboxTemplateInstance["Button_TEMPLATE_Style1"]:Clone(),
 Style2 = GroupboxTemplateInstance["Button_TEMPLATE_Style2"]:Clone(),
 }

 local tooltips = {}

 for i, ElementInstance in pairs(Instances) do
 ElementInstance.Visible = ElementInstance.Name
 == "Button_TEMPLATE_Style" .. Element.Values.Style

 ElementInstance.Name = "BUTTON_" .. Index
 ElementInstance["PART_Backdrop"].Header.Header.Text = Element.Values.Name
 ElementInstance["PART_Backdrop"].Header.Icon.Visible =
 not String.IsEmptyOrNull(Element.Values.Icon)
 ElementInstance["PART_Backdrop"].Header.Icon.Image = not String.IsEmptyOrNull(
 Element.Values.Icon
 ) and "rbxassetid://" .. Element.Values.Icon or ""

 ElementInstance["PART_Backdrop"].Icon.Image = (
 Element.Values.IndicatorStyle == 1 and "rbxassetid://6031094680"
 )
 or (Element.Values.IndicatorStyle == 2 and "rbxassetid://6023565895")
 or ""

 ElementInstance["PART_Backdrop"].Header.UIListLayout.HorizontalAlignment = Element.Values.CenterContent
 and Enum.HorizontalAlignment.Center
 or Enum.HorizontalAlignment.Left

 if ElementInstance.PART_Backdrop:FindFirstChild("Accent") then
 local hover = nil

 ElementInstance.MouseEnter:Connect(function()
 Tween(
 ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow,
 { ImageTransparency = 0.73 }
 )
 end)

 ElementInstance.MouseLeave:Connect(function()
 Tween(
 ElementInstance["PART_Backdrop"].DropShadowHolder.DropShadow,
 { ImageTransparency = 1 }
 )
 end)

 ElementInstance.Interact.MouseButton1Down:Connect(function()
 Tween(
 ElementInstance["PART_Backdrop"]["PART_BackdropHover"],
 { BackgroundTransparency = 0 }
 )
 hover = true
 end)

 UserInputService.InputEnded:Connect(function(input, processed)
 if not hover then
 return
 end
 if
 input.UserInputType == Enum.UserInputType.MouseButton1
 or input.UserInputType == Enum.UserInputType.Touch
 then
 Tween(
 ElementInstance["PART_Backdrop"]["PART_BackdropHover"],
 { BackgroundTransparency = 1 }
 )
 hover = false
 end
 end)

 ThemeMethods.bindTheme(ElementInstance.PART_Backdrop.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.UIStroke.Accent,
 "Color",
 "Accents.Main"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.DropShadowHolder.DropShadow.Accent,
 "Color",
 "Accents.Main"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.PART_BackdropHover.AccentBrighter,
 "Color",
 "Accents.Brighter"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.Icon,
 "ImageColor3",
 "Foregrounds.Active"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.Header.Icon,
 "ImageColor3",
 "Foregrounds.Active"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.Header.Header,
 "TextColor3",
 "Foregrounds.Active"
 )
 else
 ElementInstance.MouseEnter:Connect(function()
 Tween(ElementInstance["PART_Backdrop"].UIStroke, { Transparency = 0 })
 end)

 ElementInstance.MouseLeave:Connect(function()
 Tween(ElementInstance["PART_Backdrop"].UIStroke, { Transparency = 0.85 })
 end)

 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop,
 "BackgroundColor3",
 "Backgrounds.Dark"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.UIStroke,
 "Color",
 "Foregrounds.Dark"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.Shadow,
 "BackgroundColor3",
 "Backgrounds.Dark"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.Icon,
 "ImageColor3",
 "Foregrounds.Light"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.Header.Icon,
 "ImageColor3",
 "Foregrounds.Light"
 )
 ThemeMethods.bindTheme(
 ElementInstance.PART_Backdrop.Header.Header,
 "TextColor3",
 "Foregrounds.Light"
 )
 end

 ElementInstance.Interact.MouseButton1Click:Connect(function()
 local Success, Response = pcall(Element.Values.Callback)

 if not Success then
 ElementInstance["PART_Backdrop"].Header.Header.Text = "Callback Error"
 warn(`CB Error | {Element.Values.Name} ({Index})`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 ElementInstance["PART_Backdrop"].Header.Header.Text = ElementSettings.Name
 end
 end)

				ElementInstance.Parent = Groupbox.ParentingItem

				tooltips[i] = AddToolTip(Element.Values.Tooltip or "", ElementInstance)

				Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance

				pcall(function()
					if HoverFXReady then
						local inter = ElementInstance:FindFirstChild("Interact")
						AttachAllHoverFX(
							ElementInstance,
							true,
							inter and inter:IsA("GuiObject") and inter or nil
						)
					end
				end)
			end

			function Element:Set(NewElementSettings, NewIndex)
				NewIndex = NewIndex or Index

				for i, v in pairs(Element.Values) do
					if NewElementSettings[i] == nil then
						NewElementSettings[i] = v
					end
				end

				ElementSettings = NewElementSettings
				Index = NewIndex
				Element.Values = ElementSettings

				for i, ElementInstance in pairs(Instances) do
					local flag
					if Element.Values.Style == 1 then
						flag = ElementInstance.PART_Backdrop:FindFirstChild("Accent")
					else
						flag = not ElementInstance.PART_Backdrop:FindFirstChild("Accent")
					end
					ElementInstance.Visible = flag
					ElementInstance.Parent = Groupbox.ParentingItem

					ElementInstance.Name = "BUTTON_" .. NewIndex
 ElementInstance["PART_Backdrop"].Header.Header.Text = Element.Values.Name
 ElementInstance["PART_Backdrop"].Header.Icon.Visible =
 not String.IsEmptyOrNull(Element.Values.Icon)
 ElementInstance["PART_Backdrop"].Header.Icon.Image = not String.IsEmptyOrNull(
 Element.Values.Icon
 ) and "rbxassetid://" .. Element.Values.Icon or ""

 tooltips[i].Text = Element.Values.Tooltip or ""

 Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance
 end

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index].Values =
 Element.Values
 end

 function Element:Destroy()
 for _, ElementInstance in pairs(Instances) do
 ElementInstance:Destroy()
 end
 if Element.NestedElements ~= nil then
 for _, nestedElement in pairs(Element.NestedElements) do
 nestedElement:Destroy()
 end
 end
 Element = nil
 end

 function Element:Lock(Reason: string?)
 for _, ElementInstance in pairs(Instances) do
 ElementInstance.Lock_Overlay.Visible = true
 ElementInstance.Interactable = false
 ElementInstance.Lock_Overlay.Header.Text = Reason or ""
 end
 end

 function Element:Unlock()
 for _, ElementInstance in pairs(Instances) do
 ElementInstance.Lock_Overlay.Visible = false
 ElementInstance.Interactable = true
 ElementInstance.Lock_Overlay.Header.Text = ""
 end
 end
 end)

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index] =
 Element
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["BUTTON_" .. Index]
 end

 function Groupbox:CreateToggle(ElementSettings, Index)
 

 ElementSettings.Style = ElementSettings.Style or 1
 ElementSettings.CurrentValue = ElementSettings.CurrentValue or false

 local Element = {
 Values = ElementSettings,
 Class = "Toggle",
 NestedElements = {},
 IgnoreConfig = ElementSettings.IgnoreConfig,
 }
 local Instances

 task.spawn(function()
 Instances = {
 Style1 = GroupboxTemplateInstance["Checkbox_TEMPLATE_Disabled"]:Clone(),
 Style2 = GroupboxTemplateInstance["Switch_TEMPLATE_Disabled"]:Clone(),
 }

 local function checkForBind()
 for i, v in pairs(Element.NestedElements) do
 if v.Class == "Bind" then
 return v
 end
 end
 return nil
 end

 local tooltips = {}
 local knobcolor = Starlight.CurrentTheme.Foregrounds.Medium

 local function Set(bool)
 if bool then
 Tween(Instances.Style1.Checkbox, { BackgroundTransparency = 0 })
 Tween(Instances.Style1.Checkbox.Icon, { ImageTransparency = 0 })
 Tween(
 Instances.Style2.Switch,
 { BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(255, 255, 255) }
 )
 Tween(
 Instances.Style2.Switch.Knob,
 {
 Position = UDim2.new(0, 20, 0.5, 0),
 BackgroundColor3 = Starlight.CurrentTheme.Foregrounds.Active,
 BackgroundTransparency = 0,
 }
 )
 Tween(Instances.Style2.Switch.UIStroke, { Color = Color3.fromRGB(255, 255, 255) })
 Tween(Instances.Style2.Switch.DropShadowHolder.DropShadow, { ImageTransparency = 0 })
 Instances.Style2.Switch.Accent.Enabled = true
 Instances.Style2.Switch.UIStroke.Accent.Enabled = true
 else
 Tween(Instances.Style1.Checkbox, { BackgroundTransparency = 0.9 })
 Tween(Instances.Style1.Checkbox.Icon, { ImageTransparency = 1 })
 Tween(
 Instances.Style2.Switch,
 { BackgroundTransparency = 1, BackgroundColor3 = knobcolor }
 )
 Tween(
 Instances.Style2.Switch.Knob,
 {
 Position = UDim2.new(0, 0, 0.5, 0),
 BackgroundColor3 = knobcolor,
 BackgroundTransparency = 0.5,
 }
 )
 Tween(Instances.Style2.Switch.UIStroke, { Color = knobcolor })
 Tween(Instances.Style2.Switch.DropShadowHolder.DropShadow, { ImageTransparency = 1 })
 Instances.Style2.Switch.Accent.Enabled = false
 Instances.Style2.Switch.UIStroke.Accent.Enabled = false
 end

 Element.Values.CurrentValue = bool
 local bind = checkForBind()
 if bind ~= nil and bind.Values.SyncToggleState then
 bind.Active = bool
 end
 end

 for i, ElementInstance in pairs(Instances) do
 if ElementInstance.Name == "Checkbox_TEMPLATE_Disabled" and Element.Values.Style == 1 then
 ElementInstance.Visible = true
 end
 if ElementInstance.Name == "Switch_TEMPLATE_Disabled" and Element.Values.Style == 2 then
 ElementInstance.Visible = true
 end

 ElementInstance.Name = "TOGGLE_" .. Index
 ElementInstance.Header.Text = Element.Values.Name
 ElementInstance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)

 if ElementInstance.Header.Icon.Visible == false then
 ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 ElementInstance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""

 ThemeMethods.bindTheme(ElementInstance.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(ElementInstance.Header.Icon, "ImageColor3", "Foregrounds.Light")

 if ElementInstance:FindFirstChild("Checkbox") then
 if Element.Values.Style == 2 then
 ElementInstance.Visible = false
 end

 ElementInstance.Checkbox.Icon.Visible = true
 ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil
 and "rbxassetid://" .. Element.Values.CheckboxIcon
 or ""

 do
 Set(Element.Values.CurrentValue)
 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 ElementInstance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 ElementInstance.Header.Text = ElementSettings.Name
 end
 end

 ElementInstance.Checkbox.MouseEnter:Connect(function()
 ElementInstance.Checkbox.AccentBrighter.Enabled = true
 ElementInstance.Checkbox.Accent.Enabled = false
 end)

 ElementInstance.Checkbox.MouseLeave:Connect(function()
 ElementInstance.Checkbox.AccentBrighter.Enabled = false
 ElementInstance.Checkbox.Accent.Enabled = true
 end)

 ElementInstance.Checkbox.Interact.MouseButton1Click:Connect(function()
 Element.Values.CurrentValue = not Element.Values.CurrentValue
 Set(Element.Values.CurrentValue)

 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 ElementInstance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 ElementInstance.Header.Text = ElementSettings.Name
 end
 end)

 ThemeMethods.bindTheme(ElementInstance.Checkbox.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(
 ElementInstance.Checkbox.AccentBrighter,
 "Color",
 "Accents.Brighter"
 )
 ThemeMethods.bindTheme(
 ElementInstance.Checkbox.UIStroke.Accent,
 "Color",
 "Accents.Main"
 )
 ThemeMethods.bindTheme(
 ElementInstance.Checkbox.DropShadowHolder.DropShadow.Accent,
 "Color",
 "Accents.Main"
 )
 ThemeMethods.bindTheme(
 ElementInstance.Checkbox.Icon,
 "ImageColor3",
 "Foregrounds.Active"
 )
 elseif ElementInstance.Switch then
 if Element.Values.Style == 1 then
 ElementInstance.Visible = false
 end

 do
 Set(Element.Values.CurrentValue)
 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 ElementInstance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 ElementInstance.Header.Text = ElementSettings.Name
 end
 end

 ElementInstance.Switch.MouseEnter:Connect(function()
 knobcolor = Starlight.CurrentTheme.Foregrounds.MediumHover
 if not Element.Values.CurrentValue then
 Tween(ElementInstance.Switch, { BackgroundColor3 = knobcolor })
 Tween(ElementInstance.Switch.Knob, { BackgroundColor3 = knobcolor })
 Tween(ElementInstance.Switch.UIStroke, { Color = knobcolor })
 end
 end)
 ElementInstance.Switch.MouseLeave:Connect(function()
 knobcolor = Starlight.CurrentTheme.Foregrounds.Medium
 if not Element.Values.CurrentValue then
 Tween(ElementInstance.Switch, { BackgroundColor3 = knobcolor })
 Tween(ElementInstance.Switch.Knob, { BackgroundColor3 = knobcolor })
 Tween(ElementInstance.Switch.UIStroke, { Color = knobcolor })
 end
 end)

 ElementInstance.Switch.Interact.MouseButton1Click:Connect(function()
 Element.Values.CurrentValue = not Element.Values.CurrentValue
 Set(Element.Values.CurrentValue)
 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 ElementInstance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 ElementInstance.Header.Text = ElementSettings.Name
 end
 end)

 ThemeMethods.bindTheme(ElementInstance.Switch.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(ElementInstance.Switch.UIStroke.Accent, "Color", "Accents.Main")
 ThemeMethods.bindTheme(
 ElementInstance.Switch.DropShadowHolder.DropShadow.Accent,
 "Color",
 "Accents.Main"
 )
 ThemeMethods.bindTheme(
 ElementInstance.Switch.Knob,
 "BackgroundColor3",
 "Foregrounds.Active"
 )
 themeEvent.Event:Connect(function()
 Set(Element.Values.CurrentValue)
 end)
 end

				tooltips[i] = AddToolTip(Element.Values.Tooltip or "", ElementInstance)

				ElementInstance.Parent = Groupbox.ParentingItem

				Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance

				pcall(function()
					if HoverFXReady then
						local inter
						if ElementInstance.Checkbox then
							inter = ElementInstance.Checkbox:FindFirstChild("Interact")
						elseif ElementInstance.Switch then
							inter = ElementInstance.Switch:FindFirstChild("Interact")
						end
						AttachAllHoverFX(
							ElementInstance,
							true,
							inter and inter:IsA("GuiObject") and inter or nil
						)
					end
				end)
			end

			function Element:Set(NewElementSettings, NewIndex)
				NewIndex = NewIndex or Index
				local oldStyle = Element.Values.Style

 for i, v in pairs(Element.Values) do
 if NewElementSettings[i] == nil then
 NewElementSettings[i] = v
 end
 end

 ElementSettings = NewElementSettings
 Index = NewIndex
 Element.Values = ElementSettings

 Set(Element.Values.CurrentValue)
 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 for _, ElementInstance in pairs(Instances) do
 ElementInstance.Header.Text = "Callback Error"
 end
 warn(`CB Error | {Element.Values.Name} ({Index})`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 for _, ElementInstance in pairs(Instances) do
 ElementInstance.Header.Text = ElementSettings.Name
 end
 end

 for i, ElementInstance in pairs(Instances) do
 ElementInstance.Name = "TOGGLE_" .. Index
 ElementInstance.Header.Text = Element.Values.Name
 ElementInstance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)

 if ElementInstance.Header.Icon.Visible == false then
 ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 ElementInstance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 ElementInstance.Header.Icon.Image = not String.IsEmptyOrNull(
 Element.Values.Icon
 )
 and "rbxassetid://" .. Element.Values.Icon
 or ""

 if ElementInstance:FindFirstChild("Checkbox") then
 if Element.Values.Style == 2 then
 ElementInstance.Visible = false
 else
 ElementInstance.Visible = true
 end

 ElementInstance.Checkbox.Icon.Visible = true
 ElementInstance.Checkbox.Icon.Image = Element.Values.CheckboxIcon ~= nil
 and "rbxassetid://" .. Element.Values.CheckboxIcon
 or ""

 do
 end
 elseif ElementInstance.Switch then
 if Element.Values.Style == 1 then
 ElementInstance.Visible = false
 else
 ElementInstance.Visible = true
 end
 end

 tooltips[i].Text = Element.Values.Tooltip or ""

 Element.Instance = ElementInstance.Visible and ElementInstance or Element.Instance
 end

 for i, v in pairs(Element.NestedElements) do
 if v.Class == "Bind" or v.Class == "ColorPicker" then
 if v.Class == "Bind" then
 v.Instance.Parent = Element.Instance.ElementContainer
 continue
 end
 v.Instances[1].Parent = Element.Instance.ElementContainer
 continue
 end
 v.Instances[1].Parent = Element.Instance.DropdownHolder
 end

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
 Element.Values
 end
 end)

 function Element:Destroy()
 for _, ElementInstance in pairs(Instances) do
 ElementInstance:Destroy()
 end
 if Element.NestedElements ~= nil then
 for _, nestedElement in pairs(Element.NestedElements) do
 nestedElement:Destroy()
 end
 end
 Element = nil
 end

 function Element:Lock(Reason: string?)
 for _, ElementInstance in pairs(Instances) do
 ElementInstance.Lock_Overlay.Visible = true
 ElementInstance.Interactable = false
 ElementInstance.Lock_Overlay.Header.Text = Reason or ""
 end
 end

 function Element:Unlock()
 for _, ElementInstance in pairs(Instances) do
 ElementInstance.Lock_Overlay.Visible = false
 ElementInstance.Interactable = true
 ElementInstance.Lock_Overlay.Header.Text = ""
 end
 end

 function Element:AddBind(NestedSettings, NestedIndex)
 local index = HttpService:GenerateGUID()
 local Inheritor = Groupbox:CreateLabel({ Name = "" }, index)
 local NestedElement = Inheritor:AddBind(NestedSettings, NestedIndex, Element, Index)

 local module = {}
 function module:Set(NewNestedSettings, NewNestedIndex)
 NestedElement:Set(NewNestedSettings, NewNestedIndex)
 end
 function module:Destroy()
 NestedElement:Destroy()
 end

 Inheritor.Instance:Destroy()
 Groupbox.Elements[index] = nil
 Inheritor = nil
 return module
 end

 function Element:AddColorPicker(NestedSettings, NestedIndex)
 local index = HttpService:GenerateGUID()
 local Inheritor = Groupbox:CreateLabel({ Name = "" }, index)
 local NestedElement = Inheritor:AddColorPicker(NestedSettings, NestedIndex, Element, Index)

 local module = {}
 function module:Set(NewNestedSettings, NewNestedIndex)
 NestedElement:Set(NewNestedSettings, NewNestedIndex)
 end
 function module:Destroy()
 NestedElement:Destroy()
 end

 Inheritor.Instance:Destroy()
 Groupbox.Elements[index] = nil
 Inheritor = nil
 return module
 end

			function Element:AddDropdown(NestedSettings, NestedIndex)
				local index = HttpService:GenerateGUID()
				local Inheritor = Groupbox:CreateLabel({ Name = "" }, index)
				local NestedElement = Inheritor:AddDropdown(NestedSettings, NestedIndex, Element, Index)

				local module = {}
				function module:Set(NewNestedSettings, NewNestedIndex)
					NestedElement:Set(NewNestedSettings, NewNestedIndex)
				end
				function module:Destroy()
					NestedElement:Destroy()
				end

				Inheritor.Instance:Destroy()
				Groupbox.Elements[index] = nil
				Inheritor = nil
				return module
			end

			function Element:AddKeybind(NestedSettings, NestedIndex)
				if NestedSettings.CurrentValue and typeof(NestedSettings.CurrentValue) == "EnumItem" then
					NestedSettings.CurrentValue = NestedSettings.CurrentValue.Name
				end
				local origCallback = NestedSettings.Callback
				if origCallback then
					NestedSettings.OnChangedCallback = function(keyName)
						local enumItem = nil
						pcall(function()
							enumItem = Enum.KeyCode[keyName]
						end)
						pcall(origCallback, enumItem)
					end
					NestedSettings.Callback = nil
				end
				return Element:AddBind(NestedSettings, NestedIndex)
			end

			function Element:AddInput(NestedSettings, NestedIndex)
				local index = HttpService:GenerateGUID()
				local Inheritor = Groupbox:CreateLabel({ Name = "" }, index)
				local NestedElement = Inheritor:AddInput(NestedSettings, NestedIndex, Element, Index)

				local module = {}
				function module:Set(NewNestedSettings, NewNestedIndex)
					NestedElement:Set(NewNestedSettings, NewNestedIndex)
				end
				function module:Destroy()
					NestedElement:Destroy()
				end

				Inheritor.Instance:Destroy()
				Groupbox.Elements[index] = nil
				Inheritor = nil
				return module
			end

			Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
			return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
		end

		function Groupbox:CreateDivider()
 local Divider = {
 ID = HttpService:GenerateGUID(false),
 Class = "Divider",
 }

 Divider.Instance = GroupboxTemplateInstance.Divider:Clone()
 Divider.Instance.Parent = Groupbox.ParentingItem
 ThemeMethods.bindTheme(Divider.Instance.PART_Line, "BackgroundColor3", "Miscellaneous.Divider")

 function Divider:Destroy()
 Divider.Instance:Destroy()
 end

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["Divider_" .. Divider.ID] =
 Divider
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements["Divider_" .. Divider.ID]
 end

 
 
 
 
 function Groupbox:CreateSlider(ElementSettings, Index)
 

 ElementSettings.CurrentValue = ElementSettings.CurrentValue or ElementSettings.Range[1]
 ElementSettings.Increment = ElementSettings.Increment or 1
 ElementSettings.HideMax = ElementSettings.HideMax or false
 ElementSettings.Suffix = ElementSettings.Suffix
 and (ElementSettings.Suffix == "%" and `{ElementSettings.Suffix}` or ` {ElementSettings.Suffix}`)
 or ""

 local Element = {
 Values = ElementSettings,
 Class = "Slider",
 SLDragging = false,
 IgnoreConfig = ElementSettings.IgnoreConfig,
 }
 task.spawn(function()
 local isTyping = false
 local ignoreNext = false

 local tooltip

 Element.Instance = GroupboxTemplateInstance.Slider_TEMPLATE:Clone()
 Element.Instance.Visible = true

 Element.Instance.Name = "SLIDER_" .. Index
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""

 tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

 local function Set(Value: number)
 if Value then
 Element.Values.CurrentValue = Value

 Tween(
 Element.Instance.PART_Backdrop.PART_Progress,

 {
 Size = UDim2.new(
 (Value - Element.Values.Range[1])
 / (Element.Values.Range[2] - Element.Values.Range[1]),
 0,
 1,
 0
 ),
 },
 nil,
 Tween.Info(nil, nil, 0.2)
 )
 Element.Instance.Value.input.Text = tostring(Value)
 Element.Instance.Value.input.CursorPosition = #Element.Instance.Value.input.Text + 2

 local Success, Response = pcall(function()
 Element.Values.Callback(Value)
 end)

 if not Success then
 Element.Instance.Header.Text = "Callback Error"
 warn(`CB Error | {Element.Values.Name} ({Index})`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Element.Instance.Header.Text = ElementSettings.Name
 end
 end
 end

 Element.Instance.PART_Backdrop.Interact.InputBegan:Connect(function(Input)
 if
 Input.UserInputType == Enum.UserInputType.MouseButton1
 or Input.UserInputType == Enum.UserInputType.Touch
 then
 PlayStarlightClickSound()
 Element.SLDragging = true
 end
 end)

 Element.Instance.PART_Backdrop.Interact.InputEnded:Connect(function(Input)
 if
 Input.UserInputType == Enum.UserInputType.MouseButton1
 or Input.UserInputType == Enum.UserInputType.Touch
 then
 Element.SLDragging = false
 end
 end)

 Element.Instance.PART_Backdrop.PART_Progress.Knob.Interact.InputBegan:Connect(function(Input)
 if
 Input.UserInputType == Enum.UserInputType.MouseButton1
 or Input.UserInputType == Enum.UserInputType.Touch
 then
 PlayStarlightClickSound()
 Element.SLDragging = true
 end
 end)

 Element.Instance.PART_Backdrop.PART_Progress.Knob.Interact.InputEnded:Connect(function(Input)
 if
 Input.UserInputType == Enum.UserInputType.MouseButton1
 or Input.UserInputType == Enum.UserInputType.Touch
 then
 Element.SLDragging = false
 end
 end)

 local dragFunction = function(X)
 local Current = Element.Instance.PART_Backdrop.PART_Progress.AbsolutePosition.X
 + Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X
 local Start = Current
 local Location = X
 local Loop
 Loop = RunService.Stepped:Connect(function()
 if Element.SLDragging then
 Location = Mouse.X
 Current = Current + 0.025 * (Location - Start)

 if Location < Element.Instance.PART_Backdrop.AbsolutePosition.X then
 Location = Element.Instance.PART_Backdrop.AbsolutePosition.X
 elseif
 Location
 > Element.Instance.PART_Backdrop.AbsolutePosition.X
 + Element.Instance.PART_Backdrop.AbsoluteSize.X
 then
 Location = Element.Instance.PART_Backdrop.AbsolutePosition.X
 + Element.Instance.PART_Backdrop.AbsoluteSize.X
 end

 if Current < Element.Instance.PART_Backdrop.AbsolutePosition.X then
 Current = Element.Instance.PART_Backdrop.AbsolutePosition.X
 elseif
 Current
 > Element.Instance.PART_Backdrop.AbsolutePosition.X
 + Element.Instance.PART_Backdrop.AbsoluteSize.X
 then
 Current = Element.Instance.PART_Backdrop.AbsolutePosition.X
 + Element.Instance.PART_Backdrop.AbsoluteSize.X
 end

 if Current <= Location and (Location - Start) < 0 then
 Start = Location
 elseif Current >= Location and (Location - Start) > 0 then
 Start = Location
 end

 local percentage = (Location - Element.Instance.PART_Backdrop.AbsolutePosition.X)
 / Element.Instance.PART_Backdrop.AbsoluteSize.X
 Tween(
 Element.Instance.PART_Backdrop.PART_Progress,

 { Size = UDim2.new(percentage, 0, 1, 0) },

 nil,
 Tween.Info(nil, nil, 0.2)
 )

 local NewValue = ((Element.Values.Range[2] - Element.Values.Range[1]) * percentage)
 + Element.Values.Range[1]

 NewValue = math.floor(NewValue / Element.Values.Increment + 0.5)
 * (Element.Values.Increment * 10000000)
 / 10000000

 Element.Instance.Value.input.Text = tostring(NewValue)

 if Element.Values.CurrentValue ~= NewValue then
 local Success, Response = pcall(function()
 Element.Values.Callback(NewValue)
 end)

 if not Success then
 Element.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Element.Instance.Header.Text = ElementSettings.Name
 end

 Element.Values.CurrentValue = NewValue
 end
 else
 Loop:Disconnect()
 end
 end)
 end

 Element.Instance.PART_Backdrop.Interact.MouseButton1Down:Connect(function(X)
 dragFunction(X)
 end)
 Element.Instance.PART_Backdrop.PART_Progress.Knob.Interact.MouseButton1Down:Connect(function(X)
 dragFunction(X)
 end)

 Element.Instance.PART_Backdrop.PART_Progress:GetPropertyChangedSignal("Size"):Connect(function()
 if Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X <= 0 then
 Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Size =
 UDim2.new(1, 0, 1, 0)
 return
 end
 Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Size =
 UDim2.new(1, 22, 1, 22)
 end)

 local input = Element.Instance.Value.input
 local updating = false
 local lastValid = input.Text or ""

 input:GetPropertyChangedSignal("Text"):Connect(function()
 if updating or Element.SLDragging then
 return
 end

 local tb = input
 local newText = tb.Text or ""
 if newText == lastValid then
 return
 end

 local sanitizedBuilder = {}
 local dotUsed = false
 local survivorsBeforeCursor = 0
 local cursorPos = tb.CursorPosition or (#newText + 1)

 for i = 1, #newText do
 local ch = newText:sub(i, i)
 if ch:match("%d") then
 table.insert(sanitizedBuilder, ch)
 if i < cursorPos then
 survivorsBeforeCursor = survivorsBeforeCursor + 1
 end
 elseif ch == "." and not dotUsed then
 dotUsed = true
 table.insert(sanitizedBuilder, ".")
 if i < cursorPos then
 survivorsBeforeCursor = survivorsBeforeCursor + 1
 end
 end
 end

 local sanitized = table.concat(sanitizedBuilder)

 if sanitized ~= newText then
 updating = true
 tb.Text = sanitized
 
 tb.CursorPosition = math.clamp(survivorsBeforeCursor + 1, 1, #sanitized + 1)
 updating = false
 lastValid = sanitized
 else
 lastValid = newText
 end

 if sanitized == "" or sanitized == "." or sanitized:sub(-1) == "." then
 return
 end

 local num = tonumber(sanitized)
 if not num then
 return
 end

 local minv = (Element.Values and Element.Values.Range and Element.Values.Range[1])
 or -math.huge
 local maxv = (Element.Values and Element.Values.Range and Element.Values.Range[2])
 or math.huge

 if num < minv then
 num = minv
 updating = true
 tb.Text = tostring(num)
 
 tb.CursorPosition = #tb.Text + 1
 updating = false
 lastValid = tb.Text
 elseif num > maxv then
 num = maxv
 updating = true
 tb.Text = tostring(num)
 
 tb.CursorPosition = #tb.Text + 1
 updating = false
 lastValid = tb.Text
 end

 if Element.Values.CurrentValue ~= num then
 Set(num)
 end
 end)

 Element.Instance.Value.input.FocusLost:Connect(function()
 if
 Element.Instance.Value.input.Text == ""
 or Element.Instance.Value.input.Text == "."
 or Element.Instance.Value.input.Text == "0."
 then
 Set(Element.Values.CurrentValue)
 
 Element.Instance.Value.input:ReleaseFocus()
 end
 end)

 Element.Instance.MouseEnter:Connect(function()
 Tween(
 Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow,
 { ImageTransparency = 0.1 }
 )
 Tween(
 Element.Instance.PART_Backdrop.PART_Progress.Knob.DropShadowHolder.DropShadow,
 { ImageTransparency = 0, ImageColor3 = Color3.new(1, 1, 1) }
 )
 end)
 Element.Instance.MouseLeave:Connect(function()
 Tween(
 Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow,
 { ImageTransparency = 0.9 }
 )
 Tween(
 Element.Instance.PART_Backdrop.PART_Progress.Knob.DropShadowHolder.DropShadow,
 { ImageTransparency = 0.5, ImageColor3 = Color3.new(0, 0, 0) }
 )
 end)

 Set(Element.Values.CurrentValue)
 Element.Instance.Value.max.Text = (
 not Element.Values.HideMax and `/{Element.Values.Range[2]}` or ""
 ) .. `{Element.Values.Suffix}`

 ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(Element.Instance.Value.max, "TextColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(Element.Instance.Value.input, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(Element.Instance.PART_Backdrop, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(Element.Instance.PART_Backdrop.UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(
 Element.Instance.PART_Backdrop.PART_Progress.Accent,
 "Color",
 "Accents.Main"
 )
 ThemeMethods.bindTheme(
 Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Accent,
 "Color",
 "Accents.Main"
 )
 ThemeMethods.bindTheme(
 Element.Instance.PART_Backdrop.PART_Progress.Knob,
 "BackgroundColor3",
 "Foregrounds.Light"
 )
 ThemeMethods.bindTheme(
 Element.Instance.PART_Backdrop.PART_Progress.Knob.DropShadowHolder.DropShadow,
 "ImageColor3",
 "Foregrounds.Light"
 )

 function Element:Destroy()
 Element.Instance:Destroy()
 if Element.NestedElements ~= nil then
 for _, nestedElement in pairs(Element.NestedElements) do
 nestedElement:Destroy()
 end
 end
 Element = nil
 end

 function Element:Set(NewElementSettings, NewIndex)
 NewIndex = NewIndex or Index

 for i, v in pairs(Element.Values) do
 if NewElementSettings[i] == nil then
 NewElementSettings[i] = v
 end
 end

 ElementSettings = NewElementSettings
 Index = NewIndex
 Element.Values = ElementSettings

 Element.Instance.Name = "SLIDER_" .. Index
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""

 tooltip.Text = Element.Values.Tooltip or tooltip.Text

 Set(Element.Values.CurrentValue)
 Element.Instance.Value.max.Text = (
 not Element.Values.HideMax and `/{Element.Values.Range[2]}` or ""
 ) .. `{Element.Values.Suffix}`

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
 Element.Values
 end

 function Element:Lock(Reason)
 Element.Instance.Lock_Overlay.Visible = true
 Element.Instance.Interactable = false
 Element.Instance.Lock_Overlay.Header.Text = Reason or ""
 end

 function Element:Unlock()
 Element.Instance.Lock_Overlay.Visible = false
 Element.Instance.Interactable = true
 Element.Instance.Lock_Overlay.Header.Text = ""
 end
 Element.Instance.Parent = Groupbox.ParentingItem
 end)

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
 end

 function Groupbox:CreateInput(ElementSettings, Index)
 

 ElementSettings.CurrentValue = ElementSettings.CurrentValue or ""
 ElementSettings.PlaceholderText = ElementSettings.PlaceholderText or ""
 ElementSettings.RemoveTextAfterFocusLost = ElementSettings.RemoveTextAfterFocusLost or false
 ElementSettings.Numeric = ElementSettings.Numeric or false
 ElementSettings.Enter = ElementSettings.Enter or false
 ElementSettings.MaxCharacters = ElementSettings.MaxCharacters or -1
 if ElementSettings.RemoveTextOnFocus == nil then
 ElementSettings.RemoveTextOnFocus = true
 end

 local Element = {
 Values = ElementSettings,
 Class = "Input",
 IgnoreConfig = ElementSettings.IgnoreConfig,
 }

 task.spawn(function()
 local tooltip

 Element.Instance = GroupboxTemplateInstance.Input_TEMPLATE:Clone()
 Element.Instance.Visible = true

 Element.Instance.PART_Backdrop.PART_Input.FocusLost:Connect(function(Enter)
 if Element.Values.Enter then
 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 Element.Instance.Header.Text = "Callback Error"
 warn(`CB Error | {Element.Values.Name} ({Index})`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Element.Instance.Header.Text = ElementSettings.Name
 end
 end

 if Element.Values.RemoveTextAfterFocusLost then
 Element.Instance.PART_Backdrop.PART_Input.Text = ""
 Element.Values.CurrentValue = ""
 end
 end)

 Element.Instance.PART_Backdrop.Interact.Focused:Connect(function()
 Element.Instance.PART_Backdrop.Interact:ReleaseFocus()
 Element.Instance.PART_Backdrop.PART_Input:CaptureFocus()
 end)

 Element.Instance.MouseEnter:Connect(function()
 Tween(
 Element.Instance.PART_Backdrop.UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
 )
 end)
 Element.Instance.MouseLeave:Connect(function()
 Tween(
 Element.Instance.PART_Backdrop.UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.Dark }
 )
 end)

 if Element.Values.Numeric then
 Element.Instance.PART_Backdrop.PART_Input
 :GetPropertyChangedSignal("Text")
 :Connect(function()
 local text = Element.Instance.PART_Backdrop.PART_Input.Text
 if not tonumber(text) and text ~= "." then
 Element.Instance.PART_Backdrop.PART_Input.Text = text:match("[0-9.]*") or ""
 end
 end)
 end

 Element.Instance.PART_Backdrop.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
 if Element.Values.MaxCharacters < 0 then
 if
 (#Element.Instance.PART_Backdrop.PART_Input.Text - 1)
 == Element.Values.MaxCharacters
 then
 Element.Instance.PART_Backdrop.PART_Input.Text =
 Element.Instance.PART_Backdrop.PART_Input.Text:sub(
 1,
 Element.Values.MaxCharacters
 )
 end
 end

 Element.Values.CurrentValue = Element.Instance.PART_Backdrop.PART_Input.Text
 if not Element.Values.Enter then
 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 Element.Instance.Header.Text = "Callback Error"
 warn(`CB Error | {Element.Values.Name} ({Index})`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Element.Instance.Header.Text = ElementSettings.Name
 end
 end

 Tween(
 Element.Instance.PART_Backdrop.PART_Input,
 { Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1, 0) }
 )
 Tween(
 Element.Instance.PART_Backdrop,
 {
 Size = UDim2.new(
 0,
 Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30,
 0,
 Element.Instance.PART_Backdrop.Size.Y.Offset
 ),
 }
 )
 end)

 Element.Instance.Name = "INPUT_" .. Index
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.PART_Backdrop.PART_Input.ClearTextOnFocus = Element.Values.RemoveTextOnFocus
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""
 task.delay(0.2, function()
 Element.Instance.PART_Backdrop.PART_Input.PlaceholderText = Element.Values.PlaceholderText
 Element.Instance.PART_Backdrop.PART_Input.Text = Element.Values.CurrentValue
 Element.Instance.PART_Backdrop.PART_Input.Size =
 UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1, 0)
 Element.Instance.PART_Backdrop.Size = UDim2.new(
 0,
 Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30,
 0,
 Element.Instance.PART_Backdrop.Size.Y.Offset
 )
 end)

 ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(Element.Instance.PART_Backdrop, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(Element.Instance.PART_Backdrop.UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(
 Element.Instance.PART_Backdrop.PART_Input,
 "PlaceholderColor3",
 "Foregrounds.Medium"
 )
 ThemeMethods.bindTheme(
 Element.Instance.PART_Backdrop.PART_Input,
 "TextColor3",
 "Foregrounds.Light"
 )

 tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

 function Element:Set(NewElementSettings, NewIndex)
 NewIndex = NewIndex or Index

 for i, v in pairs(ElementSettings) do
 if NewElementSettings[i] == nil then
 NewElementSettings[i] = v
 end
 end

 ElementSettings = NewElementSettings

 Element.Values = ElementSettings

 Element.Instance.Name = "INPUT_" .. NewIndex
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""
 Element.Instance.PART_Backdrop.PART_Input.PlaceholderText = Element.Values.PlaceholderText
 Element.Instance.PART_Backdrop.PART_Input.Text = Element.Values.CurrentValue
 Tween(
 Element.Instance.PART_Backdrop.PART_Input,
 { Size = UDim2.new(0, Element.Instance.PART_Backdrop.PART_Input.TextBounds.X, 1, 0) }
 )
 Tween(
 Element.Instance.PART_Backdrop,
 {
 Size = UDim2.new(
 0,
 Element.Instance.PART_Backdrop.PART_Input.TextBounds.X + 30,
 0,
 Element.Instance.PART_Backdrop.Size.Y.Offset
 ),
 }
 )
 local Success, Response = pcall(function()
 Element.Values.Callback(Element.Values.CurrentValue)
 end)

 if not Success then
 Element.Instance.Header.Text = "Callback Error"
 warn(`CB Error | {Element.Values.Name} ({Index})`)
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Element.Instance.Header.Text = ElementSettings.Name
 end

 tooltip.Text = Element.Values.Tooltip or ""

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
 Element.Values
 end

 function Element:Destroy()
 Element.Instance:Destroy()
 if Element.NestedElements ~= nil then
 for _, nestedElement in pairs(Element.NestedElements) do
 nestedElement:Destroy()
 end
 end
 Element = nil
 end

 function Element:Lock(Reason)
 Element.Instance.Lock_Overlay.Visible = true
 Element.Instance.Interactable = false
 Element.Instance.Lock_Overlay.Header.Text = Reason or ""
 end

 function Element:Unlock()
 Element.Instance.Lock_Overlay.Visible = false
 Element.Instance.Interactable = true
 Element.Instance.Lock_Overlay.Header.Text = ""
 end
 end)
 Element.Instance.Parent = Groupbox.ParentingItem

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
 end

 function Groupbox:CreateLabel(ElementSettings, Index)
 

 local Element = {
 Values = ElementSettings,
 Class = "Label",
 NestedElements = {},
 }

 task.spawn(function()
 local tooltip

 Element.Instance = GroupboxTemplateInstance.Label_TEMPLATE:Clone()
 Element.Instance.Visible = true
 Element.Instance.Parent = Groupbox.ParentingItem

 Element.Instance.Name = "LABEL_" .. Index
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""

 ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")

 tooltip = AddToolTip(Element.Values.Tooltip, Element.Instance)

 function Element:Set(NewElementSettings, NewIndex)
 NewIndex = NewIndex or Index

 for i, v in pairs(Element.Values) do
 if NewElementSettings[i] == nil then
 NewElementSettings[i] = v
 end
 end

 ElementSettings = NewElementSettings
 Index = NewIndex

 Element.Values = ElementSettings

 Element.Instance.Name = "LABEL_" .. NewIndex
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""

 tooltip.Text = Element.Values.Tooltip or ""

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index].Values =
 Element.Values
 end

 function Element:Destroy()
 Element.Instance:Destroy()
 if Element.NestedElements ~= nil then
 for _, nestedElement in pairs(Element.NestedElements) do
 nestedElement:Destroy()
 end
 end
 Element = nil
 end

 function Element:Lock(Reason)
 Element.Instance.Lock_Overlay.Visible = true
 Element.Instance.Interactable = false
 Element.Instance.Lock_Overlay.Header.Text = Reason or ""
 end

 function Element:Unlock()
 Element.Instance.Lock_Overlay.Visible = false
 Element.Instance.Interactable = true
 Element.Instance.Lock_Overlay.Header.Text = ""
 end
 end)

 

 function Element:AddBind(NestedSettings, NestedIndex, Parent, ParentIndex)
 Parent = Parent or Element
 local isToggle = Parent ~= Element

 ParentIndex = ParentIndex or Index

 

 NestedSettings.HoldToInteract = NestedSettings.HoldToInteract or false
 if NestedSettings.SyncToggleState == nil then
 NestedSettings.SyncToggleState = true
 end
 NestedSettings.OnChangedCallback = NestedSettings.OnChangedCallback or function() end
 if isToggle then
 NestedSettings.Callback = NestedSettings.Callback or function() end
 end
 NestedSettings.CurrentValue = NestedSettings.CurrentValue or "No Bind"
 NestedSettings.WindowSetting = NestedSettings.WindowSetting or false

 local NestedElement = {
 Values = NestedSettings,
 Active = false,
 Class = "Bind",
 IgnoreConfig = NestedSettings.IgnoreConfig,
 }

 task.spawn(function()
 

 local digits = {
 [1] = "One",
 [2] = "Two",
 [3] = "Three",
 [4] = "Four",
 [5] = "Five",
 [6] = "Six",
 [7] = "Seven",
 [8] = "Eight",
 [9] = "Nine",
 [0] = "Zero",
 }

 if tonumber(NestedElement.Values.CurrentValue) then
 NestedElement.Values.CurrentValue = digits[tonumber(NestedElement.Values.CurrentValue)]
 end

 NestedElement.Values.CurrentValue = NestedElement.Values.CurrentValue:sub(1, 1):upper()
 .. NestedElement.Values.CurrentValue:sub(2)

 

 NestedElement.Instance = Element.Instance.ElementContainer.Bind:Clone()
 NestedElement.Instance.Visible = true
 NestedElement.Instance.Parent = Parent.Instance.ElementContainer
 Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset - 26, 20)

 NestedElement.Instance.Name = "BIND_" .. NestedIndex

 local CheckingForKey = false

 NestedElement.Instance:GetPropertyChangedSignal("Text"):Connect(function()
 

 if NestedElement.Instance.ContentText == "" then
 Tween(
 NestedElement.Instance,
 { Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 30, 0, 22) }
 )
 else
 Tween(
 NestedElement.Instance,
 { Size = UDim2.new(0, NestedElement.Instance.TextBounds.X + 14, 0, 22) }
 )
 end
 end)

 task.delay(0.2, function()
 NestedElement.Instance.Text = NestedElement.Values.CurrentValue == "No Bind"
 and ' No Bind '
 or NestedElement.Values.CurrentValue
 end)

 NestedElement.Instance.Focused:Connect(function()
 task.wait()
 CheckingForKey = true
 end)

 NestedElement.Instance.MouseEnter:Connect(function()
 Tween(
 NestedElement.Instance.UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
 )
 end)
 NestedElement.Instance.MouseLeave:Connect(function()
 Tween(
 NestedElement.Instance.UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.Dark }
 )
 end)

 NestedElement.Instance.FocusLost:Connect(function(enter)
 if not enter then
 CheckingForKey = false
 if String.IsEmptyOrNull(NestedElement.Instance.Text) then
 NestedElement.Values.CurrentValue = "No Bind"
 NestedElement.Instance.Text = ' No Bind '
 end
 end
 end)

 connections[ParentIndex .. "_" .. Index] = UserInputService.InputBegan:Connect(
 function(input, processed)
 if CheckingForKey then
 if NestedElement.Values.WindowSetting then
 if input.KeyCode ~= Enum.KeyCode.Unknown then
 PlayStarlightClickSound()
 local SplitMessage = string.split(tostring(input.KeyCode), ".")
 local NewKeyNoEnum = SplitMessage[3]
 NestedElement.Instance.Text = tostring(NewKeyNoEnum)
 NestedElement.Values.CurrentValue = tostring(NewKeyNoEnum)
 local Success, Response = pcall(function()
 NestedElement.Values.OnChangedCallback(
 NestedElement.Values.CurrentValue
 )
 Starlight.WindowKeybind = tostring(NewKeyNoEnum)
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 NestedElement.Instance:ReleaseFocus()
 else
 Starlight.WindowKeybind = nil
 end
 elseif input.UserInputType == Enum.UserInputType.Keyboard then
 if
 input.KeyCode ~= Enum.KeyCode.Unknown
 and input.KeyCode ~= Enum.KeyCode[Starlight.WindowKeybind]
 then
 PlayStarlightClickSound()
 local SplitMessage = string.split(tostring(input.KeyCode), ".")
 local NewKeyNoEnum = SplitMessage[3]
 NestedElement.Instance.Text = tostring(NewKeyNoEnum)
 NestedElement.Values.CurrentValue = tostring(NewKeyNoEnum)
 local Success, Response = pcall(function()
 NestedElement.Values.OnChangedCallback(
 NestedElement.Values.CurrentValue
 )
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 NestedElement.Instance:ReleaseFocus()
 elseif input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
 NestedElement.Instance.Text = NestedElement.Values.CurrentValue
 == "No Bind"
 and ' No Bind '
 or NestedElement.Values.CurrentValue
 NestedElement.Instance:ReleaseFocus()
 end
 else
 if input.UserInputType == Enum.UserInputType.MouseButton1 then
 PlayStarlightClickSound()
 NestedElement.Instance.Text = "MB1"
 NestedElement.Values.CurrentValue = "MB1"
 NestedElement.Instance:ReleaseFocus()
 local Success, Response = pcall(function()
 NestedElement.Values.OnChangedCallback(
 NestedElement.Values.CurrentValue
 )
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
 PlayStarlightClickSound()
 NestedElement.Instance.Text = "MB2"
 NestedElement.Values.CurrentValue = "MB2"
 NestedElement.Instance:ReleaseFocus()
 local Success, Response = pcall(function()
 NestedElement.Values.OnChangedCallback(
 NestedElement.Values.CurrentValue
 )
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 end
 end
 CheckingForKey = false
 elseif
 NestedElement.Values.CurrentValue ~= nil
 and NestedElement.Values.CurrentValue ~= "No Bind"
 and not processed
 then
 if NestedElement.Values.CurrentValue == "MB1" then
 if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
 return
 end
 elseif NestedElement.Values.CurrentValue == "MB2" then
 if input.UserInputType ~= Enum.UserInputType.MouseButton2 then
 return
 end
 else
 if input.KeyCode ~= Enum.KeyCode[NestedElement.Values.CurrentValue] then
 return
 end
 end

 if not NestedElement.Values.HoldToInteract then
 NestedElement.Active = not NestedElement.Active

 local success, response = pcall(function()
 NestedElement.Values.Callback(NestedElement.Active)
 if isToggle and NestedElement.Values.SyncToggleState then
 Parent:Set({ CurrentValue = NestedElement.Active })
 elseif isToggle then
 Parent.Values.Callback(NestedElement.Active)
 end
 end)

 if not success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 else
 local Held = true

 NestedElement.Active = true
 local success, response = pcall(function()
 NestedElement.Values.Callback(true)
 if isToggle and NestedElement.Values.SyncToggleState then
 if Parent.Values.CurrentValue ~= true then
 Parent:Set({ CurrentValue = true })
 end
 elseif isToggle then
 Parent.Values.Callback(true)
 end
 end)

 if not success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end

 local connection
 connection = input.Changed:Connect(function(prop)
 if prop == "UserInputState" then
 connection:Disconnect()
 Held = false
 NestedElement.Active = false

 local success2, response2 = pcall(function()
 NestedElement.Values.Callback(false)
 if isToggle and NestedElement.Values.SyncToggleState then
 if Parent.Values.CurrentValue ~= false then
 Parent:Set({ CurrentValue = false })
 end
 elseif isToggle then
 Parent.Values.Callback(false)
 end
 end)

 if not success2 then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(response2)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(response2),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 end
 end)
 end
 end
 end
 )

 local Success, Response = pcall(function()
 NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
 if NestedElement.Values.WindowSetting then
 Starlight.WindowKeybind = tostring(NestedElement.Values.CurrentValue)
 end
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end

 ThemeMethods.bindTheme(NestedElement.Instance, "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(NestedElement.Instance.UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(NestedElement.Instance, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(NestedElement.Instance, "PlaceholderColor3", "Foregrounds.Medium")

 function NestedElement:Destroy()
 NestedElement.Instance:Destroy()
 NestedElement = nil
 if connections[ParentIndex .. "_" .. Index] ~= nil then
 connections[ParentIndex .. "_" .. Index]:Disconnect()
 end
 connections[ParentIndex .. "_" .. Index] = nil
 Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset + 26, 20)
 end

 function NestedElement:Set(NewNestedSettings, NewNestedIndex)
 NewNestedIndex = NewNestedIndex or NestedIndex

 for i, v in pairs(NestedElement.Values) do
 if NewNestedSettings[i] == nil then
 NewNestedSettings[i] = v
 end
 end

 NestedSettings = NewNestedSettings
 NestedIndex = NewNestedIndex

 NestedElement.Values = NestedSettings

 NestedElement.Instance.Name = "BIND_" .. NestedIndex

 NestedElement.Instance.Text = NestedElement.Values.CurrentValue == "No Bind"
 and ' No Bind '
 or NestedElement.Values.CurrentValue

 local Success, Response = pcall(function()
 NestedElement.Values.OnChangedCallback(NestedElement.Values.CurrentValue)
 if NestedElement.Values.WindowSetting then
 Starlight.WindowKeybind = tostring(NestedElement.Values.CurrentValue)
 end
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values =
 NestedElement.Values
 end
 end)

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] =
 NestedElement
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex]
 end

 function Element:AddColorPicker(NestedSettings, NestedIndex, Parent, ParentIndex)
 Parent = Parent or Element
 ParentIndex = ParentIndex or Index

 

 local NestedElement = {
 Values = NestedSettings,
 Class = "ColorPicker",
 Instances = {},
 IgnoreConfig = NestedSettings.IgnoreConfig,
 }

 task.spawn(function()
 local hover = false
 local sliders = {}

 NestedElement.Instances[1] = Element.Instance.ElementContainer.ColorPicker:Clone()
 NestedElement.Instances[1].Visible = true
 NestedElement.Instances[1].Parent = Parent.Instance.ElementContainer
 Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset - 26, 20)

 NestedElement.Instances[2] = Resources.Elements.ColorPicker:Clone()
 NestedElement.Instances[2].Parent = _popupOverlay

 NestedElement.Instances[1].Name = "COLORPICKER_" .. NestedIndex
 NestedElement.Instances[2].Name = "COLORPICKER_" .. NestedIndex

 acrylicEvent.Event:Connect(function()
 if mainAcrylic then
 NestedElement.Instances[2].BackgroundTransparency = 0.5
 else
 NestedElement.Instances[2].BackgroundTransparency = 0
 end
 end)
 local AcrylicObject = Acrylic.AcrylicPaint()
 AcrylicObject.AddParent(NestedElement.Instances[2])
 AcrylicObject.Frame.Parent = NestedElement.Instances[2]

 local function close()
 if
 NestedElement.Instances[1].AbsolutePosition.Y + 27 + 245
 >= Camera.ViewportSize.Y - (GuiInset + 20)
 then
 NestedElement.Instances[2].AnchorPoint = Vector2.new(1, 1)
 NestedElement.Instances[2].Position = UDim2.fromOffset(
 math.ceil(NestedElement.Instances[1].AbsolutePosition.X) + 22,
 math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) - 5
 )
 else
 NestedElement.Instances[2].AnchorPoint = Vector2.new(1, 0)
 NestedElement.Instances[2].Position = UDim2.fromOffset(
 math.ceil(NestedElement.Instances[1].AbsolutePosition.X) + 22,
 math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) + 35
 )
 end

 NestedElement.Instances[2].Container.Visible = false
 NestedElement.Instances[2].TabSelector.Visible = false
 NestedElement.Instances[2].Buttons.Visible = false

 Tween(NestedElement.Instances[2], { Size = UDim2.fromOffset(0, 0) }, function()
 if NestedElement and NestedElement.Instances ~= nil then
 NestedElement.Instances[2].Visible = false
 if acrylicFlag then
 AcrylicObject.Model.Transparency = 1
 end
 end
 end, Tween.Info(nil, nil, 0.24))

 NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundColor3 =
 NestedElement.Values.CurrentValue
 NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundTransparency = NestedElement.Values.Transparency
 or 0
 end

 NestedElement.Instances[1]:GetPropertyChangedSignal("AbsolutePosition"):Connect(close)

 NestedElement.Instances[1].Interact.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 if NestedElement.Instances[2].Visible then
 close()
 else
 NestedElement.Instances[2].Visible = true
 Tween(
 NestedElement.Instances[2],
 { Size = UDim2.fromOffset(320, 245) },
 nil,
 Tween.Info(nil, nil, 0.18)
 )
 NestedElement.Instances[2].Container.Visible = true
 NestedElement.Instances[2].TabSelector.Visible = true
 NestedElement.Instances[2].Buttons.Visible = true
 if acrylicFlag then
 AcrylicObject.Model.Transparency = 0.98
 end
 local connection
 connection = UserInputService.InputBegan:Connect(function(i)
 if i.UserInputType ~= Enum.UserInputType.MouseButton1 then
 return
 end
 local p, pos, size =
 i.Position,
 NestedElement.Instances[2].AbsolutePosition,
 NestedElement.Instances[2].AbsoluteSize
 if
 not (
 p.X >= pos.X
 and p.X <= pos.X + size.X
 and p.Y >= pos.Y
 and p.Y <= pos.Y + size.Y
 ) and not hover
 then
 close()
 connection:Disconnect()
 end
 end)
 end
 end)

 NestedElement.Instances[1].MouseEnter:Connect(function()
 hover = true
 end)
 NestedElement.Instances[1].MouseLeave:Connect(function()
 hover = false
 end)

 for _, TabButton in pairs(NestedElement.Instances[2].TabSelector:GetChildren()) do
 if TabButton.Name == "UIListLayout" or TabButton.Name == "UIPadding" then
 continue
 end

 TabButton.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 for _, OtherTabButton in pairs(NestedElement.Instances[2].TabSelector:GetChildren()) do
 if
 OtherTabButton.Name == "UIListLayout"
 or OtherTabButton.Name == "UIPadding"
 then
 continue
 end
 if OtherTabButton == TabButton then
 continue
 end

 Tween(
 OtherTabButton,
 {
 BackgroundTransparency = 1,
 TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium,
 }
 )
 OtherTabButton.Accent.Enabled = false
 end
 Tween(TabButton, { BackgroundTransparency = 0.8, TextColor3 = Color3.new(1, 1, 1) })
 TabButton.Accent.Enabled = true

 NestedElement.Instances[2].Container.UIPageLayout:JumpTo(
 NestedElement.Instances[2].Container[TabButton.Name]
 )
 end)
 end

 
 local function GammaBlend(fg: Color3, transparency: number, bg: Color3): Color3
 local function toLinear(channel)
 return math.pow(channel, 2.2)
 end

 local function toSRGB(channel)
 return math.pow(channel, 1 / 2.2)
 end

 local alpha = 1 - transparency

 local r = toSRGB(toLinear(fg.R) * alpha + toLinear(bg.R) * transparency)
 local g = toSRGB(toLinear(fg.G) * alpha + toLinear(bg.G) * transparency)
 local b = toSRGB(toLinear(fg.B) * alpha + toLinear(bg.B) * transparency)

 return Color3.new(r, g, b)
 end

 local function safeCallback()
 local Success, Response = pcall(function()
 NestedElement.Values.Callback(
 NestedElement.Values.CurrentValue,
 NestedElement.Values.Transparency
 )
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = Element.Values.Name
 end
 end

 local function updateInstances(currentBox, ignoreCallback)
 local oldValue = Color3.fromRGB(
 tonumber(
 NestedElement.Instances[2].Container.Values.HexRGB.Red.PART_Backdrop.PART_Input.Text
 ),
 tonumber(
 NestedElement.Instances[2].Container.Values.HexRGB.Green.PART_Backdrop.PART_Input.Text
 ),
 tonumber(
 NestedElement.Instances[2].Container.Values.HexRGB.Blue.PART_Backdrop.PART_Input.Text
 )
 )

 local h, s, v = NestedElement.Values.CurrentValue:ToHSV()
 if
 currentBox == NestedElement.Instances[2].Container.Color.ColorPicker
 or currentBox == NestedElement.Instances[2].Container.Color.HueSlider
 then
 h = NestedElement.Instances[2].Container.Color.HueSlider.Value.Size.Y.Scale
 else
 if
 currentBox == NestedElement.Instances[2].Container.Values.AlphaHSV.Hue
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Red
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Green
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Blue
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Hex
 then
 local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

 NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text =
 tostring(math.floor((h * 255) + 0.5))
 end
 h = (
 tonumber(
 NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text
 ) or h * 255
 ) / 255
 end
 local r, g, b =
 NestedElement.Values.CurrentValue.R * 255,
 NestedElement.Values.CurrentValue.G * 255,
 NestedElement.Values.CurrentValue.B * 255

 if NestedElement.Instances[2].Visible == false then
 NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundColor3 =
 NestedElement.Values.CurrentValue
 NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundTransparency = NestedElement.Values.Transparency
 or 0
 end

 NestedElement.Instances[2].Container.Color.NewColor.Frame.BackgroundColor3 =
 NestedElement.Values.CurrentValue
 NestedElement.Instances[2].Container.Color.NewColor.Frame.BackgroundTransparency = NestedElement.Values.Transparency
 or 0
 NestedElement.Instances[1].BackgroundColor3 = NestedElement.Values.CurrentValue
 NestedElement.Instances[1].BackgroundTransparency = NestedElement.Values.Transparency
 or 0
 task.delay(1 / 60, function()
 NestedElement.Instances[1].DropShadowHolder.DropShadow.ImageColor3 = GammaBlend(
 NestedElement.Values.CurrentValue,
 NestedElement.Values.Transparency or 0,
 Color3.fromRGB(242, 242, 242)
 )
 end)

 if currentBox ~= NestedElement.Instances[2].Container.Color.ColorPicker then
 NestedElement.Instances[2].Container.Color.ColorPicker.Point.Position =
 UDim2.new(s, 0, 1 - v, 0)
 end
 NestedElement.Instances[2].Container.Color.ColorPicker.BackgroundColor3 =
 Color3.fromHSV(h, 1, 1)
 NestedElement.Instances[2].Container.Color.TransparencySlider.Color.BackgroundColor3 =
 NestedElement.Values.CurrentValue
 if s * 255 < 30 then
 if v * 255 > 90 and v * 255 < 180 then
 NestedElement.Instances[2].Container.Color.ColorPicker.Point.UIStroke.Color =
 Color3.new(1, 1, 1)
 else
 NestedElement.Instances[2].Container.Color.ColorPicker.Point.UIStroke.Color =
 Color3.fromRGB(165, 165, 165)
 end
 if v * 255 > 250 then
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob.ImageColor3 =
 Color3.new()
 else
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob.ImageColor3 =
 Color3.new(1, 1, 1)
 end
 else
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob.ImageColor3 =
 Color3.new(1, 1, 1)
 NestedElement.Instances[2].Container.Color.ColorPicker.Point.UIStroke.Color =
 Color3.fromRGB(165, 165, 165)
 end

 Tween(
 NestedElement.Instances[2].Container.Color.HueSlider.Value,
 { Size = UDim2.new(1, 0, h, 0) }
 )
 Tween(
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value,
 { Size = UDim2.new(1, 0, 1 - (NestedElement.Values.Transparency or 0), 0) }
 )

 local color = Color3.fromHSV(h, s, v)
 local r, g, b =
 math.floor((color.R * 255) + 0.5),
 math.floor((color.G * 255) + 0.5),
 math.floor((color.B * 255) + 0.5)

 for _, Side in pairs(NestedElement.Instances[2].Container.Values:GetChildren()) do
 if Side.ClassName ~= "Frame" then
 continue
 end

 for _, Input in pairs(Side:GetChildren()) do
 if Input.ClassName ~= "Frame" then
 continue
 end
 local inputinstance = Input.PART_Backdrop.PART_Input

 if Input == currentBox then
 continue
 end

 if Input.Name == "Hex" then
 inputinstance.Text = NestedElement.Values.Transparency == nil
 and string.format(
 "#%02X%02X%02X",
 color.R * 0xFF,
 color.G * 0xFF,
 color.B * 0xFF
 )
 or string.format(
 "#%02X%02X%02X%02X",
 color.R * 0xFF,
 color.G * 0xFF,
 color.B * 0xFF,
 (1 - NestedElement.Values.Transparency) * 0xFF
 )
 end
 if Input.Name == "Alpha" then
 inputinstance.Text = tostring(
 math.floor(
 (255 - ((NestedElement.Values.Transparency or 0) * 255)) + 0.5
 )
 )
 end
 if Input.Name == "Hue" then
 if
 currentBox
 == NestedElement.Instances[2].Container.Values.AlphaHSV.Hue
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Red
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Green
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Blue
 or currentBox == NestedElement.Instances[2].Container.Values.HexRGB.Hex
 or currentBox
 == NestedElement.Instances[2].Container.Color.HueSlider
 then
 local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

 inputinstance.Text = tostring(math.floor((h * 255) + 0.5))
 end
 end
 if Input.Name == "Saturation" then
 inputinstance.Text = tostring(math.floor((s * 255) + 0.5))
 end
 if Input.Name == "Value" then
 inputinstance.Text = tostring(math.floor((v * 255) + 0.5))
 end
 if Input.Name == "Red" then
 inputinstance.Text = tostring(r)
 end
 if Input.Name == "Green" then
 inputinstance.Text = tostring(g)
 end
 if Input.Name == "Blue" then
 inputinstance.Text = tostring(b)
 end
 end
 end

 if NestedElement.Values.Transparency == nil then
 NestedElement.Instances[2].Container.Values.AlphaHSV.Alpha.Visible = false
 NestedElement.Instances[2].Container.Color.TransparencySlider.Visible = false
 NestedElement.Instances[2].Container.Color.HueSlider.Position =
 UDim2.new(1, -11, 0, 15)
 NestedElement.Instances[2].Container.Color.ColorPicker.Size =
 UDim2.fromOffset(283, 160)
 NestedElement.Instances[2].Container.Color.OldColor.Size = UDim2.fromOffset(137, 24)
 NestedElement.Instances[2].Container.Color.NewColor.Size = UDim2.fromOffset(137, 24)
 NestedElement.Instances[2].Container.Color.OldColor.Position =
 UDim2.fromOffset(155, 180)
 else
 NestedElement.Instances[2].Container.Values.AlphaHSV.Alpha.Visible = true
 NestedElement.Instances[2].Container.Color.TransparencySlider.Visible = true
 NestedElement.Instances[2].Container.Color.HueSlider.Position =
 UDim2.new(1, -23, 0, 15)
 NestedElement.Instances[2].Container.Color.ColorPicker.Size =
 UDim2.fromOffset(268, 160)
 NestedElement.Instances[2].Container.Color.OldColor.Size = UDim2.fromOffset(130, 24)
 NestedElement.Instances[2].Container.Color.NewColor.Size = UDim2.fromOffset(130, 24)
 NestedElement.Instances[2].Container.Color.OldColor.Position =
 UDim2.fromOffset(148, 180)
 end

 if not ignoreCallback then
 safeCallback()
 end
 end

 updateInstances()
 local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

 NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text =
 tostring(math.floor((h * 255) + 0.5))

 do
 local mainDragging, sliderDragging, transDragging = nil, nil, nil
 local mainHover, sliderHover, transHover = false, false, false

 local h, s, v = NestedElement.Values.CurrentValue:ToHSV()

 function NestedElement:__updateHsv()
 h, s, v = NestedElement.Values.CurrentValue:ToHSV()
 end

 local color = Color3.fromHSV(h, s, v)
 local hex =
 string.format("#%02X%02X%02X", color.R * 0xFF, color.G * 0xFF, color.B * 0xFF)

 UserInputService.InputEnded:Connect(function(input)
 if
 input.UserInputType == Enum.UserInputType.MouseButton1
 or input.UserInputType == Enum.UserInputType.Touch
 then
 if mainDragging then
 Tween(
 NestedElement.Instances[2].Container.Color.ColorPicker.Point,
 { Size = mainHover and UDim2.new(0, 10, 0, 10) or UDim2.new(0, 7, 0, 7) }
 )
 end
 if sliderDragging then
 Tween(
 NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
 { Size = sliderHover and UDim2.new(0, 8, 0, 8) or UDim2.new(0, 6, 0, 6) }
 )
 end
 if transDragging then
 Tween(
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
 { Size = transHover and UDim2.new(0, 10, 0, 10) or UDim2.new(0, 8, 0, 8) }
 )
 end
 mainDragging = false
 sliderDragging = false
 transDragging = false
 end
 end)
 NestedElement.Instances[2].Container.Color.ColorPicker.MouseButton1Down:Connect(
 function()
 mainDragging = true
 Tween(
 NestedElement.Instances[2].Container.Color.ColorPicker.Point,
 { Size = UDim2.new(0, 5, 0, 5) }
 )
 end
 )
 NestedElement.Instances[2].Container.Color.ColorPicker.MouseLeave:Connect(function()
 mainHover = false
 if mainDragging then
 return
 end
 Tween(
 NestedElement.Instances[2].Container.Color.ColorPicker.Point,
 { Size = UDim2.new(0, 7, 0, 7) }
 )
 end)
 NestedElement.Instances[2].Container.Color.ColorPicker.MouseEnter:Connect(function()
 mainHover = true
 if mainDragging then
 return
 end
 Tween(
 NestedElement.Instances[2].Container.Color.ColorPicker.Point,
 { Size = UDim2.new(0, 9, 0, 9) }
 )
 end)
 NestedElement.Instances[2].Container.Color.HueSlider.MouseButton1Down:Connect(function()
 sliderDragging = true
 Tween(
 NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
 { Size = UDim2.new(0, 4, 0, 4) }
 )
 end)
 NestedElement.Instances[2].Container.Color.HueSlider.MouseLeave:Connect(function()
 sliderHover = false
 if sliderDragging then
 return
 end
 Tween(
 NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
 { Size = UDim2.new(0, 6, 0, 6) }
 )
 end)
 NestedElement.Instances[2].Container.Color.HueSlider.MouseEnter:Connect(function()
 sliderHover = true
 if sliderDragging then
 return
 end
 Tween(
 NestedElement.Instances[2].Container.Color.HueSlider.Value.Knob,
 { Size = UDim2.new(0, 8, 0, 8) }
 )
 end)
 NestedElement.Instances[2].Container.Color.TransparencySlider.MouseButton1Down:Connect(
 function()
 transDragging = true
 Tween(
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
 { Size = UDim2.new(0, 6, 0, 6) }
 )
 end
 )
 NestedElement.Instances[2].Container.Color.TransparencySlider.MouseLeave:Connect(
 function()
 transHover = false
 if sliderDragging then
 return
 end
 Tween(
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
 { Size = UDim2.new(0, 8, 0, 8) }
 )
 end
 )
 NestedElement.Instances[2].Container.Color.TransparencySlider.MouseEnter:Connect(
 function()
 transHover = true
 if transDragging then
 return
 end
 Tween(
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value.Knob,
 { Size = UDim2.new(0, 10, 0, 10) }
 )
 end
 )

 RunService.RenderStepped:Connect(function()
 if mainDragging then
 local localX = math.clamp(
 Mouse.X
 - NestedElement.Instances[2].Container.Color.ColorPicker.AbsolutePosition.X,
 0,
 NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.X
 )
 local localY = math.clamp(
 Mouse.Y
 - NestedElement.Instances[2].Container.Color.ColorPicker.AbsolutePosition.Y,
 0,
 NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.Y
 )
 Tween(
 NestedElement.Instances[2].Container.Color.ColorPicker.Point,
 { Position = UDim2.new(0, localX, 0, localY) }
 )
 s = localX
 / NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.X
 v = 1
 - (
 localY
 / NestedElement.Instances[2].Container.Color.ColorPicker.AbsoluteSize.Y
 )
 local color = Color3.fromHSV(h, s, v)
 NestedElement.Values.CurrentValue = color
 updateInstances(NestedElement.Instances[2].Container.Color.ColorPicker)
 local r, g, b =
 math.floor((color.R * 255) + 0.5),
 math.floor((color.G * 255) + 0.5),
 math.floor((color.B * 255) + 0.5)
 end
 if sliderDragging then
 local localY = math.clamp(
 Mouse.Y
 - NestedElement.Instances[2].Container.Color.HueSlider.AbsolutePosition.Y,
 0,
 NestedElement.Instances[2].Container.Color.HueSlider.AbsoluteSize.Y
 )
 h = localY / NestedElement.Instances[2].Container.Color.HueSlider.AbsoluteSize.Y
 local color = Color3.fromHSV(h, s, v)
 NestedElement.Values.CurrentValue = color
 updateInstances(NestedElement.Instances[2].Container.Color.HueSlider)
 Tween(
 NestedElement.Instances[2].Container.Color.HueSlider.Value,
 { Size = UDim2.new(1, 0, h, 0) }
 )
 local r, g, b =
 math.floor((color.R * 255) + 0.5),
 math.floor((color.G * 255) + 0.5),
 math.floor((color.B * 255) + 0.5)
 end
 if transDragging then
 local localY = math.clamp(
 Mouse.Y
 - NestedElement.Instances[2].Container.Color.TransparencySlider.AbsolutePosition.Y,
 0,
 NestedElement.Instances[2].Container.Color.TransparencySlider.AbsoluteSize.Y
 )
 local t = localY
 / NestedElement.Instances[2].Container.Color.TransparencySlider.AbsoluteSize.Y
 Tween(
 NestedElement.Instances[2].Container.Color.TransparencySlider.Value,
 { Size = UDim2.new(1, 0, t, 0) }
 )
 NestedElement.Values.Transparency = 1 - t
 updateInstances()
 end
 end)
 end

 NestedElement.Instances[2].Container.Color.OldColor.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 NestedElement.Values.CurrentValue =
 NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundColor3
 if NestedElement.Values.Transparency ~= nil then
 NestedElement.Values.Transparency =
 NestedElement.Instances[2].Container.Color.OldColor.Frame.BackgroundTransparency
 end
 updateInstances(NestedElement.Instances[2].Container.Values.AlphaHSV.Hue)
 end)

 for _, Side in pairs(NestedElement.Instances[2].Container.Values:GetChildren()) do
 if Side.ClassName ~= "Frame" then
 continue
 end

 for _, Input in pairs(Side:GetChildren()) do
 if Input.ClassName ~= "Frame" then
 continue
 end
 local inputinstance = Input.PART_Backdrop.PART_Input

 if Input.Name == "Hex" then
 inputinstance.FocusLost:Connect(function()
 if
 not pcall(function()
 if NestedElement.Values.Transparency ~= nil then
 local text = inputinstance.Text

 local r, g, b, a = text:match("^%s*#?(%x%x)(%x%x)(%x%x)(%x%x)$")
 local rgbColor = Color3.fromRGB(
 tonumber(r, 16),
 tonumber(g, 16),
 tonumber(b, 16)
 )
 NestedElement.Values.CurrentValue = rgbColor
 NestedElement.Values.Transparency = 1 - (tonumber(a, 16) / 255)
 else
 local r, g, b =
 string.match(inputinstance.Text, "^#?(%x%x)(%x%x)(%x%x)$")
 local rgbColor = Color3.fromRGB(
 tonumber(r, 16),
 tonumber(g, 16),
 tonumber(b, 16)
 )
 NestedElement.Values.CurrentValue = rgbColor
 end
 updateInstances(Input)
 end)
 then
 inputinstance.Text = NestedElement.Values.Transparency == nil
 and string.format(
 "#%02X%02X%02X",
 NestedElement.Values.CurrentValue.R * 0xFF,
 NestedElement.Values.CurrentValue.G * 0xFF,
 NestedElement.Values.CurrentValue.B * 0xFF
 )
 or string.format(
 "#%02X%02X%02X%02X",
 NestedElement.Values.CurrentValue.R * 0xFF,
 NestedElement.Values.CurrentValue.G * 0xFF,
 NestedElement.Values.CurrentValue.B * 0xFF,
 (1 - NestedElement.Values.Transparency) * 0xFF
 )
 end
 end)
 end
 if Input.Name == "Alpha" then
 inputinstance.FocusLost:Connect(function()
 local old = NestedElement.Values.Transparency
 if
 not pcall(function()
 if tonumber(inputinstance.Text) > 255 then
 inputinstance.Text = tostring((1 - old) * 255)
 return
 end
 NestedElement.Values.Transparency = 1
 - tonumber(inputinstance.Text) / 255
 updateInstances(Input)
 end)
 then
 inputinstance.Text = tostring((1 - old) * 255)
 end
 end)
 end
 if Input.Name == "Hue" then
 inputinstance.FocusLost:Connect(function()
 local old, s, v = NestedElement.Values.CurrentValue:ToHSV()
 if
 not pcall(function()
 if tonumber(inputinstance.Text) > 255 then
 inputinstance.Text = tostring(old * 255)
 return
 end
 NestedElement.Values.CurrentValue =
 Color3.fromHSV(tonumber(inputinstance.Text) / 255, s, v)
 updateInstances(Input)
 end)
 then
 inputinstance.Text = tostring(old * 255)
 end
 end)
 end
 if Input.Name == "Saturation" then
 inputinstance.FocusLost:Connect(function()
 local h, old, v = NestedElement.Values.CurrentValue:ToHSV()
 if
 not pcall(function()
 if tonumber(inputinstance.Text) > 255 then
 inputinstance.Text = tostring(old * 255)
 return
 end
 NestedElement.Values.CurrentValue =
 Color3.fromHSV(h, tonumber(inputinstance.Text) / 255, v)
 updateInstances(Input)
 end)
 then
 inputinstance.Text = tostring(old * 255)
 end
 end)
 end
 if Input.Name == "Value" then
 inputinstance.FocusLost:Connect(function()
 local h, s, old = NestedElement.Values.CurrentValue:ToHSV()
 if
 not pcall(function()
 if tonumber(inputinstance.Text) > 255 then
 inputinstance.Text = tostring(old * 255)
 return
 end
 NestedElement.Values.CurrentValue =
 Color3.fromHSV(h, s, tonumber(inputinstance.Text) / 255)
 updateInstances(Input)
 end)
 then
 inputinstance.Text = tostring(old * 255)
 end
 end)
 end
 if Input.Name == "Red" then
 inputinstance.FocusLost:Connect(function()
 local old, g, b =
 NestedElement.Values.CurrentValue.R,
 NestedElement.Values.CurrentValue.G,
 NestedElement.Values.CurrentValue.B
 if
 not pcall(function()
 if tonumber(inputinstance.Text) > 255 then
 inputinstance.Text = tostring(old * 255)
 return
 end
 NestedElement.Values.CurrentValue =
 Color3.new(tonumber(inputinstance.Text) / 255, g, b)
 updateInstances(Input)
 end)
 then
 inputinstance.Text = tostring(old * 255)
 end
 end)
 end
 if Input.Name == "Green" then
 inputinstance.FocusLost:Connect(function()
 local r, old, b =
 NestedElement.Values.CurrentValue.R,
 NestedElement.Values.CurrentValue.G,
 NestedElement.Values.CurrentValue.B
 if
 not pcall(function()
 if tonumber(inputinstance.Text) > 255 then
 inputinstance.Text = tostring(old * 255)
 return
 end
 NestedElement.Values.CurrentValue =
 Color3.new(r, tonumber(inputinstance.Text) / 255, b)
 updateInstances(Input)
 end)
 then
 inputinstance.Text = tostring(old * 255)
 end
 end)
 end
 if Input.Name == "Blue" then
 inputinstance.FocusLost:Connect(function()
 local r, g, old =
 NestedElement.Values.CurrentValue.R,
 NestedElement.Values.CurrentValue.G,
 NestedElement.Values.CurrentValue.B
 if
 not pcall(function()
 if tonumber(inputinstance.Text) > 255 then
 inputinstance.Text = tostring(old * 255)
 return
 end
 NestedElement.Values.CurrentValue =
 Color3.new(r, g, tonumber(inputinstance.Text) / 255)
 updateInstances(Input)
 end)
 then
 inputinstance.Text = tostring(old * 255)
 end
 end)
 end
 end
 end

 ThemeMethods.bindTheme(
 NestedElement.Instances[2],
 "BackgroundColor3",
 "Backgrounds.Groupbox"
 )
 ThemeMethods.bindTheme(NestedElement.Instances[2].UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(
 NestedElement.Instances[2].Background,
 "BackgroundColor3",
 "Backgrounds.Dark"
 )
 for _, button in pairs(NestedElement.Instances[2].Buttons:GetChildren()) do
 if button.ClassName ~= "TextButton" then
 continue
 end
 ThemeMethods.bindTheme(button, "ImageColor3", "Foregrounds.Dark")
 end
 for _, button in pairs(NestedElement.Instances[2].TabSelector:GetChildren()) do
 if button.ClassName ~= "TextButton" then
 continue
 end
 ThemeMethods.bindTheme(button, "TextColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(button.Accent, "Color", "Accents.Main")
 end
 themeEvent.Event:Connect(function()
 NestedElement.Instances[2].TabSelector[NestedElement.Instances[2].Container.UIPageLayout.CurrentPage.Name].TextColor3 =
 Color3.new(1, 1, 1)
 end)
 for _, shadow in pairs(NestedElement.Instances[2].DropShadowHolder:GetChildren()) do
 ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
 end
 for _, side in pairs(NestedElement.Instances[2].Container.Values:GetChildren()) do
 if side.ClassName ~= "Frame" then
 continue
 end
 for _, input in pairs(side:GetChildren()) do
 if input.ClassName ~= "Frame" then
 continue
 end
 ThemeMethods.bindTheme(input.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(input.PART_Backdrop, "BackgroundColor3", "Backgrounds.Dark")
 pcall(function()
 ThemeMethods.bindTheme(
 input.PART_Backdrop.UIStroke,
 "Color",
 "Foregrounds.Dark"
 )
 end)
 ThemeMethods.bindTheme(
 input.PART_Backdrop.PART_Input,
 "TextColor3",
 "Foregrounds.Light"
 )
 ThemeMethods.bindTheme(
 input.PART_Backdrop.PART_Input,
 "PlaceholderColor3",
 "Foregrounds.Medium"
 )
 end
 end

 function NestedElement:Destroy()
 NestedElement.Instances[1]:Destroy()
 NestedElement.Instances[2]:Destroy()
 NestedElement = nil
 Parent.Instance.Header.Size = UDim2.fromOffset(Parent.Instance.Header.Size.X.Offset - 26, 20)
 end

 function NestedElement:Set(NewNestedSettings, NewNestedIndex, ignoreCallback: boolean?)
 NewNestedIndex = NewNestedIndex or NestedIndex

 for i, v in pairs(NestedElement.Values) do
 if NewNestedSettings[i] == nil then
 NewNestedSettings[i] = v
 end
 end

 NestedSettings = NewNestedSettings
 NestedIndex = NewNestedIndex

 NestedElement.Values = NestedSettings
 local h, _, _ = NestedElement.Values.CurrentValue:ToHSV()

 NestedElement.Instances[2].Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input.Text =
 tostring(math.floor((h * 255) + 0.5))

 updateInstances(nil, ignoreCallback)
 NestedElement:__updateHsv()

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values =
 NestedElement.Values
 end
 end)

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] =
 NestedElement
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex]
 end

 function Element:AddDropdown(NestedSettings, NestedIndex, Parent, ParentIndex)
 Parent = Parent or Element
 ParentIndex = ParentIndex or Index

 

			local additionSize = Parent.Instance.DropdownHolder:FindFirstChild("Dropdown") and 36 or 34
			local localConnections = {}

			if NestedSettings.CurrentOptions and not NestedSettings.CurrentOption then
				NestedSettings.CurrentOption = NestedSettings.CurrentOptions
			end

			NestedSettings.MultipleOptions = NestedSettings.MultipleOptions or false
			NestedSettings.Special = NestedSettings.Special or 0
			NestedSettings.Required = NestedSettings.Required or false

			local NestedElement = {
				Values = NestedSettings,
				Class = "Dropdown",
				Instances = {},
				IgnoreConfig = NestedSettings.IgnoreConfig,
			}

			task.spawn(function()
				local hover = false
				local height = 175

				NestedElement.Instances[1] = Element.Instance.DropdownHolder.Dropdown:Clone()
 NestedElement.Instances[1].Visible = true
 NestedElement.Instances[1].Parent = Parent.Instance.DropdownHolder
 if Parent ~= Element then
 local instance2
 for i, v in pairs(Parent.Instance.Parent:GetChildren()) do
 if v.Name == Parent.Instance.Name and v ~= Parent.Instance then
 instance2 = v
 end
 end
 instance2.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset + additionSize)
 Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset + additionSize)
 else
 Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset + additionSize)
 end

 NestedElement.Instances[2] = Resources.Elements.DropdownPopup:Clone()
 NestedElement.Instances[2].Parent = _popupOverlay

 NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
 NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex

 for _, option in pairs(NestedElement.Instances[2].List:GetChildren()) do
 if option.ClassName == "Frame" then
 option:Destroy()
 end
 end

 acrylicEvent.Event:Connect(function()
 if mainAcrylic then
 NestedElement.Instances[2].BackgroundTransparency = 0.5
 else
 NestedElement.Instances[2].BackgroundTransparency = 0
 end
 end)
 local AcrylicObject = Acrylic.AcrylicPaint()
 AcrylicObject.AddParent(NestedElement.Instances[2])
 AcrylicObject.Frame.Parent = NestedElement.Instances[2]

 local function updPos()
 if
 NestedElement.Instances[1].AbsolutePosition.Y + 35 + height
 >= Camera.ViewportSize.Y - (GuiInset + 20)
 then
 NestedElement.Instances[2].AnchorPoint = Vector2.new(0, 1)
 NestedElement.Instances[2].Position = UDim2.fromOffset(
 math.ceil(NestedElement.Instances[1].AbsolutePosition.X),
 math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) - 5
 )
 else
 NestedElement.Instances[2].AnchorPoint = Vector2.new(0, 0)
 NestedElement.Instances[2].Position = UDim2.fromOffset(
 math.ceil(NestedElement.Instances[1].AbsolutePosition.X),
 math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) + 35
 )
 end
 end
 local function close()
 Tween(
 NestedElement.Instances[2].List,
 { Size = UDim2.new(1, 0, 0, 0) },
 nil,
 Tween.Info(nil, nil, 0.18)
 )
 Tween(
 NestedElement.Instances[2],
 { Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, 0) },
 function()
 if NestedElement and NestedElement.Instances ~= nil then
 NestedElement.Instances[2].Visible = false
 if acrylicFlag then
 AcrylicObject.Model.Transparency = 1
 end
 end
 end,
 Tween.Info(nil, nil, 0.18)
 )
 end
 NestedElement.Instances[1]:GetPropertyChangedSignal("AbsolutePosition"):Connect(close)
 NestedElement.Instances[1]:GetPropertyChangedSignal("AbsolutePosition"):Connect(updPos)
 updPos()
 close()

 NestedElement.Instances[1]:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
 NestedElement.Instances[2].Size = UDim2.fromOffset(
 math.ceil(NestedElement.Instances[1].AbsoluteSize.X),
 NestedElement.Instances[2].Size.Y.Offset
 )
 
 NestedElement:truncate()
 end)

 NestedElement.Instances[1].Interact.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 if NestedElement.Instances[2].Visible then
 close()
 else
 NestedElement.Instances[2].Visible = true
 height = NestedElement.Instances[2].List.AbsoluteCanvasSize.Y >= 175 and 175
 or NestedElement.Instances[2].List.AbsoluteCanvasSize.Y
 updPos()
 NestedElement.Instances[2].List.Size = UDim2.new(1, 0, 0, 0)
 NestedElement.Instances[2].List.ScrollBarImageTransparency = 1
 Tween(
 NestedElement.Instances[2],
 { Size = UDim2.fromOffset(NestedElement.Instances[2].Size.X.Offset, height) }
 )
 Tween(
 NestedElement.Instances[2].List,
 { Size = UDim2.new(1, 0, 0, height) },
 function()
 NestedElement.Instances[2].List.ScrollBarImageTransparency = 0
 end
 )
 if acrylicFlag then
 AcrylicObject.Model.Transparency = 0.98
 end
 local connection
 connection = UserInputService.InputBegan:Connect(function(i)
 if i.UserInputType ~= Enum.UserInputType.MouseButton1 then
 return
 end
 local p, pos, size =
 i.Position,
 NestedElement.Instances[2].AbsolutePosition,
 NestedElement.Instances[2].AbsoluteSize
 if
 not (
 p.X >= pos.X
 and p.X <= pos.X + size.X
 and p.Y >= pos.Y
 and p.Y <= pos.Y + size.Y
 ) and not hover
 then
 close()
 connection:Disconnect()
 end
 end)
 end
 end)

 local function hover()
 Tween(
 NestedElement.Instances[1].UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
 )
 Tween(
 NestedElement.Instances[2].UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.DarkHover }
 )
 hover = true
 end
 local function leave()
 Tween(
 NestedElement.Instances[1].UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.Dark }
 )
 Tween(
 NestedElement.Instances[2].UIStroke,
 { Color = Starlight.CurrentTheme.Foregrounds.Dark }
 )
 hover = false
 end

 NestedElement.Instances[1].MouseEnter:Connect(hover)
 NestedElement.Instances[1].MouseLeave:Connect(leave)
 NestedElement.Instances[2].MouseEnter:Connect(hover)
 NestedElement.Instances[2].MouseLeave:Connect(leave)

 if NestedElement.Values.CurrentOption then
 if typeof(NestedElement.Values.CurrentOption) == "string" then
 NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption }
 end
 if
 not NestedElement.Values.MultipleOptions
 and typeof(NestedElement.Values.CurrentOption) == "table"
 then
 NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption[1] }
 end
 if typeof(NestedElement.Values.CurrentOption) == "number" then
 NestedElement.Values.CurrentOption =
 { NestedElement.Values.Options[NestedElement.Values.CurrentOption] }
 end
 else
 NestedElement.Values.CurrentOption = {}
 end
 if NestedElement.Values.Required and unpack(NestedElement.Values.CurrentOption) == nil then
 NestedElement.Values.CurrentOption = { NestedElement.Values.Options[1] }
 end

 

 function NestedElement:truncate()
 NestedElement.Instances[1].Header.Size = UDim2.new(1, -18, 0, 20)
 if
 NestedElement.Instances[1].Header.TextBounds.X
 <= NestedElement.Instances[1].Header.AbsoluteSize.X
 then
 NestedElement.Instances[1].Truncater.Visible = false
 return
 end
 NestedElement.Instances[1].Header.Size = UDim2.new(1, -26, 0, 20)
 NestedElement.Instances[1].Truncater.Visible = true
 end

 NestedElement.Instances[1].Header:GetPropertyChangedSignal("Text"):Connect(function()
 NestedElement:truncate()
 end)

 

 local function Activate(option)
 pcall(function()
 Tween(option, { BackgroundTransparency = 0.5 })
 Tween(option.header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light })
 Tween(
 option.UIPadding,
 { PaddingLeft = UDim.new(0, 12) },
 nil,
 Tween.Info(nil, nil, 0.2)
 )
 Tween(
 option.Indicator,
 { Size = UDim2.fromOffset(4, 17) },
 nil,
 Tween.Info(nil, nil, 0.2)
 )
 option:SetAttribute("Active", true)
 end)
 end

 local function Deactivate(option)
 pcall(function()
 Tween(option, { BackgroundTransparency = 1 })
 Tween(option.header, { TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium })
 Tween(
 option.UIPadding,
 { PaddingLeft = UDim.new(0, 8) },
 nil,
 Tween.Info(nil, nil, 0.2)
 )
 Tween(
 option.Indicator,
 { Size = UDim2.fromOffset(4, 0) },
 nil,
 Tween.Info(nil, nil, 0.2)
 )
 option:SetAttribute("Active", false)
 end)
 end

 local function ToggleOption(option)
 if not NestedElement.Values.MultipleOptions then
 for i, v in pairs(NestedElement.Instances[2].List:GetChildren()) do
 if v.ClassName == "Frame" and v ~= option then
 Deactivate(v)
 NestedElement.Values.CurrentOption = {}
 end
 end
 end

 if option:GetAttribute("Active") == false then
 Activate(option)
 local Success, Response = pcall(function()
 table.insert(NestedElement.Values.CurrentOption, option.header.Text)
 NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
 NestedElement.Instances[1].Header.Text =
 Table.Unpack(NestedElement.Values.CurrentOption)
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 else
 if
 NestedElement.Values.Required == true
 and NestedElement.Values.CurrentOption ~= {}
 then
 return
 end

 Deactivate(option)
 local Success, Response = pcall(function()
 Table.Remove(NestedElement.Values.CurrentOption, option.header.Text)
 NestedElement.Values.Callback(NestedElement.Values.CurrentOption)
 NestedElement.Instances[1].Header.Text =
 Table.Unpack(NestedElement.Values.CurrentOption)
 end)

 if not Success then
 Parent.Instance.Header.Text = "Callback Error"
 warn(
 `CB Error | {Element.Values.Name} ({Index} {NestedIndex})`
 )
 print(Response)
 if WindowSettings.NotifyOnCallbackError then
 Starlight:Notification({
 Title = Element.Values.Name .. " Callback Error",
 Content = tostring(Response),
 Icon = 129398364168201,
 })
 end
 wait(0.5)
 Parent.Instance.Header.Text = ElementSettings.Name
 end
 end
 end

 local function Refresh()
 for i, v in pairs(NestedElement.Instances[2].List:GetChildren()) do
 if v.ClassName == "Frame" then
 v:Destroy()
 end
 end

 if NestedElement.Values.Special == 1 then
 NestedElement.Values.Options = {}
 for i, v in pairs(Players:GetChildren()) do
 table.insert(NestedElement.Values.Options, v.Name)
 end
 end
 if NestedElement.Values.Special == 2 then
 NestedElement.Values.Options = {}
 for i, v in pairs(Teams:GetChildren()) do
 table.insert(NestedElement.Values.Options, v.Name)
 end
 end

 
 for _, option in ipairs(NestedElement.Values.Options) do
 local optioninstance = Resources.Elements.DropdownPopup.List.Option_TEMPLATE:Clone()
 optioninstance.Parent = NestedElement.Instances[2].List
 optioninstance.Name = "OPTION_" .. option
 optioninstance.header.Text = option
 optioninstance:SetAttribute("Active", false)
 ThemeMethods.bindTheme(optioninstance, "BackgroundColor3", "Backgrounds.Highlight")
 ThemeMethods.bindTheme(
 optioninstance.Indicator.AccentBrighter,
 "Color",
 "Accents.Brighter"
 )
 ThemeMethods.bindTheme(optioninstance.header, "TextColor3", "Foregrounds.Medium")
 themeEvent.Event:Connect(function()
 if optioninstance:GetAttribute("Active") then
 Activate(optioninstance)
 else
 Deactivate(optioninstance)
 end
 end)

 optioninstance.Interact.MouseButton1Click:Connect(function()
 ToggleOption(optioninstance)
 end)

 optioninstance.MouseEnter:Connect(function()
 if optioninstance:GetAttribute("Active") == false then
 Tween(optioninstance, { BackgroundTransparency = 0.8 })
 Tween(
 optioninstance.header,
 { TextColor3 = Starlight.CurrentTheme.Foregrounds.Light }
 )
 end
 end)
					optioninstance.MouseLeave:Connect(function()
						if optioninstance:GetAttribute("Active") == false then
							Tween(optioninstance, { BackgroundTransparency = 1 })
							Tween(
								optioninstance.header,
								{ TextColor3 = Starlight.CurrentTheme.Foregrounds.Medium }
							)
						end
					end)

					pcall(function()
						if HoverFXReady then
							local inter = optioninstance:FindFirstChild("Interact")
							AttachAllHoverFX(
								optioninstance,
								false,
								inter and inter:IsA("GuiObject") and inter or nil
							)
						end
					end)
				end
			end

			Refresh()
 NestedElement.Instances[2].Size = UDim2.fromOffset(
 math.ceil(NestedElement.Instances[1].AbsoluteSize.X),
 NestedElement.Instances[2].Size.Y.Offset
 )
 NestedElement.Instances[2].Position = UDim2.fromOffset(
 math.ceil(NestedElement.Instances[1].AbsolutePosition.X),
 math.ceil(NestedElement.Instances[1].AbsolutePosition.Y) + (135 / 2) + 30
 )

 local preoptions = NestedElement.Values.CurrentOption
 NestedElement.Values.CurrentOption = {}
 for i, v in pairs(preoptions) do
 for _, optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
 if optioninstance.Name == "OPTION_" .. v then
 ToggleOption(optioninstance)
 end
 end
 end
 NestedElement.Instances[1].Header.Text = Table.Unpack(NestedElement.Values.CurrentOption)
 NestedElement.Instances[1].Header.PlaceholderText = NestedElement.Values.Placeholder or "--"

 if NestedElement.Values.Special == 1 then
 local c
 c = Players.PlayerAdded:Connect(function()
 if not pcall(Refresh) then
 c:Disconnect()
 end
 end)
 local c
 c = Players.ChildRemoved:Connect(function()
 if not pcall(Refresh) then
 c:Disconnect()
 end
 end)
 end
 if NestedElement.Values.Special == 2 then
 local c
 c = Teams.ChildAdded:Connect(function()
 if not pcall(Refresh) then
 c:Disconnect()
 end
 end)
 local c
 c = Teams.ChildRemoved:Connect(function()
 if not pcall(Refresh) then
 c:Disconnect()
 end
 end)
 end

 ThemeMethods.bindTheme(
 NestedElement.Instances[2],
 "BackgroundColor3",
 "Backgrounds.Groupbox"
 )
 ThemeMethods.bindTheme(NestedElement.Instances[2].UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(
 NestedElement.Instances[2].Background,
 "BackgroundColor3",
 "Backgrounds.Dark"
 )
 for _, shadow in pairs(NestedElement.Instances[2].DropShadowHolder:GetChildren()) do
 ThemeMethods.bindTheme(shadow, "ImageColor3", "Miscellaneous.LighterShadow")
 end
 ThemeMethods.bindTheme(
 NestedElement.Instances[2].List,
 "ScrollBarImageColor3",
 "Foregrounds.Medium"
 )
 ThemeMethods.bindTheme(NestedElement.Instances[1], "BackgroundColor3", "Backgrounds.Dark")
 ThemeMethods.bindTheme(NestedElement.Instances[1].UIStroke, "Color", "Foregrounds.Dark")
 ThemeMethods.bindTheme(NestedElement.Instances[1].Icon, "ImageColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(
 NestedElement.Instances[1].Truncater,
 "TextColor3",
 "Foregrounds.Light"
 )
 ThemeMethods.bindTheme(NestedElement.Instances[1].Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(
 NestedElement.Instances[1].Header,
 "PlaceholderColor3",
 "Foregrounds.Medium"
 )

 function NestedElement:Destroy()
 NestedElement.Instances[1]:Destroy()
 NestedElement.Instances[2]:Destroy()
 Parent.Instance.Size = UDim2.fromOffset(0, Parent.Instance.Size.Y.Offset - additionSize)
 NestedElement = nil
 end

 function NestedElement:Set(NewNestedSettings, NewNestedIndex)
 NewNestedIndex = NewNestedIndex or NestedIndex

 for i, v in pairs(NestedElement.Values) do
 if NewNestedSettings[i] == nil then
 NewNestedSettings[i] = v
 end
 end

 NestedSettings = NewNestedSettings
 NestedIndex = NewNestedIndex

 NestedElement.Values = NestedSettings

 if NestedElement.Values.CurrentOption then
 if typeof(NestedElement.Values.CurrentOption) == "string" then
 NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption }
 end
 if
 not NestedElement.Values.MultipleOptions
 and typeof(NestedElement.Values.CurrentOption) == "table"
 then
 NestedElement.Values.CurrentOption = { NestedElement.Values.CurrentOption[1] }
 end
 if
 not NestedElement.Values.MultipleOptions
 and typeof(NestedElement.Values.CurrentOption) == "number"
 then
 NestedElement.Values.CurrentOption =
 { NestedElement.Values.Options[NestedElement.Values.CurrentOption] }
 end
 end
 if
 NestedElement.Values.Required
 and unpack(NestedElement.Values.CurrentOption) == nil
 then
 NestedElement.Values.CurrentOption = { NestedElement.Values.Options[1] }
 end

 NestedElement.Instances[1].Name = "DROPDOWN_" .. NestedIndex
 NestedElement.Instances[2].Name = "DROPDOWN_" .. NestedIndex

 Refresh()
 local preoptions = table.clone(NestedElement.Values.CurrentOption or {})
 NestedElement.Values.CurrentOption = {}
 task.delay(1 / 60, function()
 for i, v in pairs(preoptions) do
 for _, optioninstance in pairs(NestedElement.Instances[2].List:GetChildren()) do
 if optioninstance.Name == "OPTION_" .. v then
 ToggleOption(optioninstance)
 end
 end
 end
 NestedElement.Instances[1].Header.Text =
 Table.Unpack(NestedElement.Values.CurrentOption)
 NestedElement.Instances[1].Header.PlaceholderText = NestedElement.Values.Placeholder
 or "--"
 end)

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex].Values =
 NestedElement.Values
 end
 end)

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] =
 NestedElement
 return NestedElement
 end

			

			function Element:AddKeybind(NestedSettings, NestedIndex, ...)
				if NestedSettings.CurrentValue and typeof(NestedSettings.CurrentValue) == "EnumItem" then
					NestedSettings.CurrentValue = NestedSettings.CurrentValue.Name
				end
				local origCallback = NestedSettings.Callback
				if origCallback then
					NestedSettings.OnChangedCallback = function(keyName)
						local enumItem = nil
						pcall(function()
							enumItem = Enum.KeyCode[keyName]
						end)
						pcall(origCallback, enumItem)
					end
					NestedSettings.Callback = nil
				end
				return Element:AddBind(NestedSettings, NestedIndex, ...)
			end

			function Element:AddInput(NestedSettings, NestedIndex, Parent, ParentIndex)
				Parent = Parent or Element
				ParentIndex = ParentIndex or Index

				NestedSettings.CurrentValue = NestedSettings.CurrentValue or ""
				NestedSettings.Placeholder = NestedSettings.Placeholder or ""
				NestedSettings.Callback = NestedSettings.Callback or function() end

				local NestedElement = {
					Values = NestedSettings,
					Class = "Input",
				}

				task.spawn(function()
					NestedElement.Instance = Instance.new("TextBox")
					NestedElement.Instance.Name = "INPUT_" .. (NestedIndex or "default")
					NestedElement.Instance.Size = UDim2.new(0, 120, 0, 22)
					NestedElement.Instance.Position = UDim2.new(1, -126, 0.5, -11)
					NestedElement.Instance.AnchorPoint = Vector2.new(0, 0)
					NestedElement.Instance.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
					NestedElement.Instance.BorderSizePixel = 0
					NestedElement.Instance.TextColor3 = Color3.fromRGB(255, 255, 255)
					NestedElement.Instance.PlaceholderText = NestedSettings.Placeholder
					NestedElement.Instance.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
					NestedElement.Instance.Text = NestedSettings.CurrentValue
					NestedElement.Instance.Font = Enum.Font.Gotham
					NestedElement.Instance.TextSize = 12
					NestedElement.Instance.ClearTextOnFocus = false
					NestedElement.Instance.Parent = Parent.Instance.ElementContainer or Parent.Instance

					local corner = Instance.new("UICorner")
					corner.CornerRadius = UDim.new(0, 6)
					corner.Parent = NestedElement.Instance

					local stroke = Instance.new("UIStroke")
					stroke.Color = Starlight.CurrentTheme and Starlight.CurrentTheme.Foregrounds.Dark or Color3.fromRGB(65, 69, 77)
					stroke.Thickness = 1
					stroke.Parent = NestedElement.Instance

					local padding = Instance.new("UIPadding")
					padding.PaddingLeft = UDim.new(0, 6)
					padding.PaddingRight = UDim.new(0, 6)
					padding.Parent = NestedElement.Instance

					NestedElement.Instance.FocusLost:Connect(function()
						local text = NestedElement.Instance.Text
						NestedElement.Values.CurrentValue = text
						local ok, err = pcall(NestedSettings.Callback, text)
						if not ok then
							warn("[UI] Input callback error: " .. tostring(err))
						end
					end)

					NestedElement.Instance.MouseEnter:Connect(function()
						pcall(function()
							Tween(stroke, { Color = Starlight.CurrentTheme.Foregrounds.DarkHover })
						end)
					end)
					NestedElement.Instance.MouseLeave:Connect(function()
						pcall(function()
							Tween(stroke, { Color = Starlight.CurrentTheme.Foregrounds.Dark })
						end)
					end)

					function NestedElement:Set(NewSettings, NewIndex)
						if NewSettings.CurrentValue then
							NestedElement.Values.CurrentValue = NewSettings.CurrentValue
							NestedElement.Instance.Text = NewSettings.CurrentValue
						end
						if NewSettings.Placeholder then
							NestedElement.Values.Placeholder = NewSettings.Placeholder
							NestedElement.Instance.PlaceholderText = NewSettings.Placeholder
						end
						if NewSettings.Callback then
							NestedElement.Values.Callback = NewSettings.Callback
						end
					end

					function NestedElement:Destroy()
						pcall(function() NestedElement.Instance:Destroy() end)
					end

					pcall(function()
						if HoverFXReady then
							AttachAllHoverFX(NestedElement.Instance, false)
						end
					end)
				end)

				Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[ParentIndex].NestedElements[NestedIndex] =
					NestedElement
				return NestedElement
			end

			Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
			return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
		end

		function Groupbox:CreateParagraph(ElementSettings, Index)
 

 local Element = {
 Values = ElementSettings,
 Class = "Paragraph",
 }

 task.spawn(function()
 Element.Instance = GroupboxTemplateInstance.Paragraph_TEMPLATE:Clone()
 Element.Instance.Visible = true
 Element.Instance.Parent = Groupbox.ParentingItem

 Element.Instance.Name = "PARAGRAPH_" .. Index
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""
 Element.Instance.Content.Text = Element.Values.Content

 ThemeMethods.bindTheme(Element.Instance.Header, "TextColor3", "Foregrounds.Light")
 ThemeMethods.bindTheme(Element.Instance.Content, "TextColor3", "Foregrounds.Medium")
 ThemeMethods.bindTheme(Element.Instance.Header.Icon, "ImageColor3", "Foregrounds.Light")

 function Element:Set(NewElementSettings, NewIndex)
 NewIndex = NewIndex or Index

 for i, v in pairs(Element.Values) do
 if NewElementSettings[i] == nil then
 NewElementSettings[i] = v
 end
 end

 ElementSettings = NewElementSettings
 Index = NewIndex

 Element.Values = ElementSettings

 Element.Instance.Name = "PARAGRAPH_" .. NewIndex
 Element.Instance.Header.Text = Element.Values.Name
 Element.Instance.Header.Icon.Visible = not String.IsEmptyOrNull(Element.Values.Icon)
 if Element.Instance.Header.Icon.Visible == false then
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 6)
 Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 6)
 else
 Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 32)
 Element.Instance.Content.UIPadding.PaddingLeft = UDim.new(0, 32)
 end
 Element.Instance.Header.Icon.Image = not String.IsEmptyOrNull(Element.Values.Icon)
 and "rbxassetid://" .. Element.Values.Icon
 or ""
 Element.Instance.Content.Text = Element.Values.Content

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[NewIndex].Values =
 ElementSettings
 end

 function Element:Lock(Reason)
 Element.Instance.Lock_Overlay.Visible = true
 Element.Instance.Interactable = false
 Element.Instance.Lock_Overlay.Header.Text = Reason or ""
 end

 function Element:Unlock()
 Element.Instance.Lock_Overlay.Visible = false
 Element.Instance.Interactable = true
 Element.Instance.Lock_Overlay.Header.Text = ""
 end

 function Element:Destroy()
 Element.Instance:Destroy()
 if Element.NestedElements ~= nil then
 for _, nestedElement in pairs(Element.NestedElements) do
 nestedElement:Destroy()
 end
 end
 Element = nil
 end
 end)

 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index] = Element
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex].Elements[Index]
 end

 

 Groupbox.Instance.Parent = Tab.Instances.Page["Column_" .. GroupboxSettings.Column]
 Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex] = Groupbox
 return Starlight.Window.TabSections[Name].Tabs[TabIndex].Groupboxes[GroupIndex]
 end

 

 

 function Tab:BuildThemeGroupbox(Column, Style, ButtonsCentered)
 if ButtonsCentered == nil then
 ButtonsCentered = false
 end

 local themesPath = WindowSettings.FileSettings.ThemesInRoot
 and `{Starlight.FileSystem.Folder}/{root}/themes`
 or `{Starlight.FileSystem.Folder}/{folderpath}/themes`

 if not isStudio and not isfolder(themesPath) then
 Starlight.FileSystem:BuildFolderTree(WindowSettings.FileSettings)
 end

 local instance = Tab:CreateGroupbox({
 Name = "Themes",
 Icon = 6031625148,
 Column = Column,
 Style = Style or 1,
 }, "__prebuiltThemeGroupbox")

 local themesArray = {
 "Sphincter",
 "Starlight",
 "Hollywood Dark",
 "Hollywood Light",
 "Orca",
 "Glacier",
 "Pacific",
 "Neo",
 "Neo (Dark)",
 "Crimson",
 "Nebula",
 "Evergreen",
 "Luna",
 "OperaGX",
 "BBot",
 "Ubuntu",
 "Tokyo Night",
 "Hollywood Fluent",
 "Catppuccin Mocha",
 "Catppuccin Macchiato",
 "Catppuccin Frappe",
 "Catppuccin Latte",
 }
 local customThemes = not isStudio and Starlight.FileSystem:RefreshConfigList(themesPath) or {}
 for _, v in pairs(customThemes) do
 table.insert(themesArray, v)
 end

 instance:CreateToggle({
 Name = "Acrylic",
 CurrentValue = false,
 Tooltip = "Enables The Glass And Acrylic Style for the main UI",
 Icon = 6031371068,
 Callback = function(v)
 mainAcrylic = v
 acrylicEvent:Fire()
 end,
 }, "mainacrylic")
 instance:CreateToggle({
 Name = "Notification Acrylic",
 CurrentValue = true,
 Tooltip = "Enables The Glass And Acrylic Style for notifications",
 Icon = 6031488930,
 Callback = function(v)
 notificationAcrylic = v
 notificationAcrylicEvent:Fire()
 end,
 }, "notitficationacrylic")

 instance:CreateDivider()

 local colorpickers = {}
 do
 colorpickers.bg = instance:CreateLabel({
 Name = "Backgrounds",
 }, "colorpicker_bg")
 colorpickers.fg = instance:CreateLabel({
 Name = "Foregrounds",
 }, "colorpicker_fg")
 colorpickers.fga = instance:CreateLabel({
 Name = "Foreground Hovers",
 }, "colorpicker_fga")
 colorpickers.divider = instance:CreateLabel({
 Name = "Divider",
 }, "colorpicker_divider")
 colorpickers.shadows = instance:CreateLabel({
 Name = "Shadows",
 }, "colorpicker_shadows")
 colorpickers.accent = instance:CreateLabel({
 Name = "Accent",
 }, "colorpicker_accents")
 colorpickers.accent2 = instance:CreateLabel({
 Name = "Accent Brighter",
 }, "colorpicker_accents")
 end

 
 do
 do
 local debounce = false
 local cp = colorpickers.bg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Backgrounds.Dark,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Backgrounds.Dark = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "dark")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Dark }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.bg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Backgrounds.Medium,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Backgrounds.Medium = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "medium")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Medium }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.bg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Backgrounds.Light,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Backgrounds.Light = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "light")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Light }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.bg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Backgrounds.Groupbox,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Backgrounds.Groupbox = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "gb")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Groupbox }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.bg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Backgrounds.Highlight,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Backgrounds.Highlight = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "popup")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Backgrounds.Highlight }, nil, true)
 end
 end)
 end
 end

 
 do
 do
 local debounce = false
 local cp = colorpickers.fg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Foregrounds.Dark,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Foregrounds.Dark = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "dark")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Dark }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.fg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Foregrounds.Medium,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Foregrounds.Medium = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "medium")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Medium }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.fg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Foregrounds.Light,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Foregrounds.Light = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "light")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Light }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.fg:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Foregrounds.Active,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Foregrounds.Active = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "active")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.Active }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.fga:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Foregrounds.DarkHover,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Foregrounds.DarkHover = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "dark")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.DarkHover }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.fga:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Foregrounds.MediumHover,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Foregrounds.MediumHover = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "medium")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Foregrounds.MediumHover }, nil, true)
 end
 end)
 end
 end

 
 do
 local debounce = false
 local cp = colorpickers.divider:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Miscellaneous.Divider,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Miscellaneous.Divider = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "dark")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Miscellaneous.Divider }, nil, true)
 end
 end)
 end

 
 do
 do
 local debounce = false
 local cp = colorpickers.shadows:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Miscellaneous.Shadow,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Miscellaneous.Shadow = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "dark")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Miscellaneous.Shadow }, nil, true)
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.shadows:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Miscellaneous.LighterShadow,
 Callback = function(c)
 debounce = true
 Starlight.CurrentTheme.Miscellaneous.LighterShadow = c
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "light")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set({ CurrentValue = Starlight.CurrentTheme.Miscellaneous.LighterShadow }, nil, true)
 end
 end)
 end
 end

 
 do
 
 do
 do
 local debounce = false
 local cp = colorpickers.accent:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[1].Value,
 Callback = function(c)
 debounce = true
 local keypoints = Starlight.CurrentTheme.Accents.Main.Keypoints
 Starlight.CurrentTheme.Accents.Main = ColorSequence.new({
 ColorSequenceKeypoint.new(keypoints[1].Time, c),
 keypoints[2],
 keypoints[3],
 })
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "1")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set(
 { CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[1].Value },
 nil,
 true
 )
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.accent:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[2].Value,
 Callback = function(c)
 debounce = true
 local keypoints = Starlight.CurrentTheme.Accents.Main.Keypoints
 Starlight.CurrentTheme.Accents.Main = ColorSequence.new({
 keypoints[1],
 ColorSequenceKeypoint.new(keypoints[2].Time, c),
 keypoints[3],
 })
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "2")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set(
 { CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[2].Value },
 nil,
 true
 )
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.accent:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[3].Value,
 Callback = function(c)
 debounce = true
 local keypoints = Starlight.CurrentTheme.Accents.Main.Keypoints
 Starlight.CurrentTheme.Accents.Main = ColorSequence.new({
 keypoints[1],
 keypoints[2],
 ColorSequenceKeypoint.new(keypoints[3].Time, c),
 })
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "3")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set(
 { CurrentValue = Starlight.CurrentTheme.Accents.Main.Keypoints[3].Value },
 nil,
 true
 )
 end
 end)
 end
 end
 
 do
 do
 local debounce = false
 local cp = colorpickers.accent2:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[1].Value,
 Callback = function(c)
 debounce = true
 local keypoints = Starlight.CurrentTheme.Accents.Brighter.Keypoints
 Starlight.CurrentTheme.Accents.Brighter = ColorSequence.new({
 ColorSequenceKeypoint.new(keypoints[1].Time, c),
 keypoints[2],
 keypoints[3],
 })
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "1")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set(
 { CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[1].Value },
 nil,
 true
 )
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.accent2:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[2].Value,
 Callback = function(c)
 debounce = true
 local keypoints = Starlight.CurrentTheme.Accents.Brighter.Keypoints
 Starlight.CurrentTheme.Accents.Brighter = ColorSequence.new({
 keypoints[1],
 ColorSequenceKeypoint.new(keypoints[2].Time, c),
 keypoints[3],
 })
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "2")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set(
 { CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[2].Value },
 nil,
 true
 )
 end
 end)
 end
 do
 local debounce = false
 local cp = colorpickers.accent2:AddColorPicker({
 IgnoreConfig = true,
 CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[3].Value,
 Callback = function(c)
 debounce = true
 local keypoints = Starlight.CurrentTheme.Accents.Brighter.Keypoints
 Starlight.CurrentTheme.Accents.Brighter = ColorSequence.new({
 keypoints[1],
 keypoints[2],
 ColorSequenceKeypoint.new(keypoints[3].Time, c),
 })
 themeEvent:Fire()
 task.wait(6 / 60)
 debounce = false
 end,
 }, "3")
 themeEvent.Event:Connect(function()
 if not debounce then
 cp:Set(
 { CurrentValue = Starlight.CurrentTheme.Accents.Brighter.Keypoints[3].Value },
 nil,
 true
 )
 end
 end)
 end
 end
 end

 instance:CreateDivider()

 local newName = instance:CreateInput({
 Name = "New Theme Name",
 PlaceholderText = "Name",
 RemoveTextOnFocus = true,
 Callback = function(v) end,
 }, "newthemename")
 instance:CreateButton({
 Name = "Create New Theme",
 Icon = 6031471484,
 CenteredContent = ButtonsCentered,
 Callback = function()
 if not newName.CurrentValue or String.IsEmptyOrNull(newName.CurrentValue) then
 Starlight:Notification({
 Title = "Theme Error",
 Icon = 129398364168201,
 Content = "Theme name cannot be empty.",
 })
 return
 end
 newName.CurrentValue = string.gsub(newName.CurrentValue, "/", " ")
 newName.CurrentValue = string.gsub(newName.CurrentValue, "\\", " ")

 if
 isfile(`{themesPath}/{newName.CurrentValue}{Starlight.FileSystem.FileExtension}`)
 or themesArray[newName.CurrentValue]
 then
 Starlight:Notification({
 Title = "Theme Exists",
 Icon = 129398364168201,
 Content = "Theme with the provided name exists already. Overwrite it with overwrite theme below.",
 })
 return
 end

 local success, returned = pcall(function()
 if isStudio or not isfile then
 return "File System unavailable."
 end

 local fullPath = `{themesPath}/{newName.CurrentValue}{Starlight.FileSystem.FileExtension}`

 local success, encoded = ThemeMethods.encodeTheme(Starlight.CurrentTheme)
 if not success then
 return false, "Unable to encode into JSON data"
 end

 writefile(fullPath, encoded)
 end)
 if not success then
 Starlight:Notification({
 Title = "Theme Error",
 Icon = 6031071057,
 Content = "Unable to save Theme, return error: " .. returned,
 })
 return
 end

 themesArray = {
 "Sphincter",
 "Starlight",
 "Hollywood Dark",
 "Hollywood Light",
 "Orca",
 "Glacier",
 "Pacific",
 "Neo",
 "Neo (Dark)",
 "Crimson",
 "Nebula",
 "Evergreen",
 "Luna",
 "OperaGX",
 "BBot",
 "Ubuntu",
 "Tokyo Night",
 "Hollywood Fluent",
 }
 local customThemes = not isStudio and Starlight.FileSystem:RefreshConfigList(themesPath) or {}
 for _, v in pairs(customThemes) do
 table.insert(themesArray, v)
 end
 instance.Elements.themedropdownlabel.NestedElements.themedropdown:Set({
 Options = themesArray,
 })
 Starlight:Notification({
 Title = "Theme Created",
 Icon = 6026568227,
 Content = string.format("Created Theme %q", newName.CurrentValue),
 })
 end,
 }, "newtheme")

 local newThemeToApply
 local themeDropdown = instance
 :CreateLabel({
 Name = "Themes List",
 }, "themedropdownlabel")
 :AddDropdown({
 Options = themesArray,
 CurrentOption = "Sphincter",
 Required = true,
 Callback = function(newTheme)
 newThemeToApply = newTheme[1]
 end,
 }, "themedropdown")
 themeEvent.Event:Connect(function()
 for key, theme in pairs(Themes) do
 if theme == Starlight.CurrentTheme then
 
 end
 end
 end)

 instance:CreateButton({
 Name = "Apply Theme",
 Icon = 6034439635,
 CenteredContent = ButtonsCentered,
 Style = 1,
 Callback = function()
 if Themes[newThemeToApply] ~= nil then
 Starlight:SetTheme(Themes[newThemeToApply])
 else
 Starlight:SetTheme(
 ThemeMethods.decodeTheme(
 readfile(`{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`)
 )
 )
 end
 end,
 }, "applytheme")

 instance:CreateButton({
 Name = "Overwrite Theme",
 CenteredContent = ButtonsCentered,
 Icon = 6031225810,
 Callback = function()
 if newThemeToApply == nil then
 Starlight:Notification({
 Title = "Null Selection",
 Icon = 129398364168201,
 Content = "Theme Must Be Selected!",
 })
 return
 end
 if Themes[newThemeToApply] then
 Starlight:Notification({
 Title = "Preset Theme",
 Icon = 129398364168201,
 Content = "Only A Custom Theme Can Be Overwritten!",
 })
 return
 end

 local success, returned = pcall(function()
 if isStudio or not isfile then
 return "File System unavailable."
 end

 local fullPath = `{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`

 local success, encoded = pcall(HttpService.JSONEncode, HttpService, Starlight.CurrentTheme)
 if not success then
 return false, "Unable to encode into JSON data"
 end

 writefile(fullPath, encoded)
 end)
 if not success then
 Starlight:Notification({
 Title = "Theme Error",
 Icon = 6031071057,
 Content = "Unable to overwrite theme, return error: " .. returned,
 })
 return
 end

 Starlight:Notification({
 Title = "Theme Updated",
 Icon = 6026568227,
 Content = string.format("Overwrote theme %q", newThemeToApply),
 })
 end,
 }, "overwritetheme")

 local loadlabel = instance:CreateParagraph({
 Name = "Current Autoload Theme:",
 Content = not isStudio and (isfile(`{themesPath}/autoload.txt`) and readfile(
 `{themesPath}/autoload.txt`
 )) or "Starlight",
 }, "autoloadlabel")

 instance:CreateButton({
 Name = "Autoload Theme",
 Icon = 6023565901,
 CenterContent = ButtonsCentered,
 Callback = function()
 if newThemeToApply == nil then
 Starlight:Notification({
 Title = "Null Selection",
 Icon = 129398364168201,
 Content = "Theme Must Be Selected!",
 })
 return
 end
 local name = newThemeToApply
 pcall(function()
 writefile(`{themesPath}/autoload.txt`, name)
 end)
 loadlabel:Set({ Content = name })

 Starlight:Notification({
 Title = "Theme Updated",
 Icon = 6026568227,
 Content = string.format(
 "Set %q to be automatically loaded on your future sessions.",
 newThemeToApply
 ),
 })
 end,
 Style = 1,
 }, "autoloadtheme")

 instance:CreateButton({
 Name = "Reset Autoload",
 Icon = 6034767619,
 CenteredContent = ButtonsCentered,
 Callback = function()
 if isfile(`{themesPath}/autoload.txt`) then
 delfile(`{themesPath}/autoload.txt`)
 end
 loadlabel:Set({ Content = "None" })

 Starlight:Notification({
 Title = "Autoload Cleared",
 Icon = 6026568227,
 Content = string.format("Disabled current autoload.", newThemeToApply),
 })
 end,
 }, "clearautoload")

 instance:CreateButton({
 Name = "Delete Theme",
 Icon = 115577765236264,
 CenteredContent = ButtonsCentered,
 Callback = function()
 if newThemeToApply == nil then
 Starlight:Notification({
 Title = "Null Selection",
 Icon = 129398364168201,
 Content = "Theme Must Be Selected!",
 })
 return
 end
 if isfile(`{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`) then
 delfile(`{themesPath}/{newThemeToApply}{Starlight.FileSystem.FileExtension}`)
 end

 if loadlabel.Values.Content == newThemeToApply then
 if isfile(`{themesPath}/autoload.txt`) then
 delfile(`{themesPath}/autoload.txt`)
 end
 loadlabel:Set({ Content = "None" })
 end

 themesArray = {
 "Sphincter",
 "Starlight",
 "Hollywood Dark",
 "Hollywood Light",
 "Orca",
 "Glacier",
 "Pacific",
 "Neo",
 "Neo (Dark)",
 "Crimson",
 "Nebula",
 "Evergreen",
 "Luna",
 "OperaGX",
 "BBot",
 "Ubuntu",
 "Tokyo Night",
 "Hollywood Fluent",
 }
 local customThemes = not isStudio and Starlight.FileSystem:RefreshConfigList(themesPath) or {}
 for _, v in pairs(customThemes) do
 table.insert(themesArray, v)
 end
 themeDropdown:Set({
 Options = themesArray,
 CurrentOption = "",
 })

 Starlight:Notification({
 Title = "Theme Deleted",
 Icon = 6026568227,
 Content = string.format("Deleted Configuration %q", newThemeToApply),
 })
 if newThemeToApply then
 newThemeToApply = nil
 end
 end,
 }, "deletetheme")
 end

 function Tab:BuildConfigGroupbox(Column, Style, ButtonsCentered)
 if ButtonsCentered == nil then
 ButtonsCentered = false
 end

 local instance = Tab:CreateGroupbox({
 Name = "Configurations",
 Icon = 6031280882,
 Column = Column,
 Style = Style or 1,
 }, "__prebuiltConfigGroupbox")

 if isStudio then
 instance:CreateParagraph({
 Name = "Config System Unavailable.",
 Content = "Environment Invalid : isStudio.",
 }, "__prebuiltConfigEnvironmentWarning")
 return "Config System Unavailable"
 end
 if not isfile or isfile == nil then
 instance:CreateParagraph({
 Name = "Config System Unavailable.",
 Content = "Environment Invalid : isFile UNC Function Not Found.",
 }, "__prebuiltConfigEnvironmentWarning")
 return "Config System Unavailable"
 end

 local inputPath = nil
 local selectedConfig = nil

 inputPath = instance:CreateInput({
 Name = "Config Name",
 Tooltip = "Insert a name for the config you want to create.",
 PlaceholderText = "Name",
 RemoveTextOnFocus = true,
 IgnoreConfig = true,
 Callback = function(val) end,
 }, "__prebuiltConfigNameInput")

 instance:CreateButton({
 Name = "Create Config",
 Icon = 6035053304,
 CenterContent = ButtonsCentered,
 Tooltip = "Create a configuration to access any time with all your current settings.",
 Callback = function()
 if not inputPath.Values.CurrentValue or String.IsEmptyOrNull(inputPath.Values.CurrentValue) then
 Starlight:Notification({
 Title = "Configuration Error",
 Icon = 129398364168201,
 Content = "Config name cannot be empty.",
 })
 return
 end
 inputPath.Values.CurrentValue = string.gsub(inputPath.Values.CurrentValue, "/", " ")
 inputPath.Values.CurrentValue = string.gsub(inputPath.Values.CurrentValue, "\\", " ")

 if
 isfile(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs/{inputPath.Values.CurrentValue}{Starlight.FileSystem.FileExtension}`
 )
 then
 Starlight:Notification({
 Title = "Configuration Exists",
 Icon = 129398364168201,
 Content = "Configuration with the provided name exists already. Overwrite it with update config below.",
 })
 return
 end

 local success, returned = Starlight.FileSystem:SaveConfig(
 inputPath.Values.CurrentValue,
 `{Starlight.FileSystem.Folder}/{folderpath}/configs/`
 )
 if not success then
 Starlight:Notification({
 Title = "Configuration Error",
 Icon = 6031071057,
 Content = "Unable to save config, return error: " .. returned,
 })
 end

 Starlight:Notification({
 Title = "Configuration Created",
 Icon = 6026568227,
 Content = string.format("Created config %q", inputPath.Values.CurrentValue),
 })

 instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({
 Options = Starlight.FileSystem:RefreshConfigList(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs`
 ),
 })
 end,
 Style = 1,
 }, "__prebuiltConfigCreator")

 instance:CreateDivider()

 local configSelection = instance
 :CreateLabel({
 Name = "Select Config",
 Tooltip = "Select a config for this section to work on.",
 }, "__prebuiltConfigSelector_lbl")
 :AddDropdown({
 Options = Starlight.FileSystem:RefreshConfigList(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs`
 ),
 CurrentOption = nil,
 MultipleOptions = false,
 Callback = function(val)
 selectedConfig = val[1]
 end,
 }, "__prebuiltConfigSelector_lbl")

 instance:CreateButton({
 Name = "Load Config",
 Icon = 10723433935,
 CenterContent = ButtonsCentered,
 Tooltip = "Load the selected configuration and all its settings.",
 Callback = function()
 if selectedConfig == nil then
 Starlight:Notification({
 Title = "Null Selection",
 Icon = 129398364168201,
 Content = "Configuration Must Be Selected!",
 })
 return
 end

 local success, returned = Starlight.FileSystem:LoadConfig(
 selectedConfig,
 `{Starlight.FileSystem.Folder}/{folderpath}/configs/`
 )
 if not success then
 Starlight:Notification({
 Title = "Configuration Error",
 Icon = 6031071057,
 Content = "Unable to load config, return error: " .. returned,
 })
 return
 end

 Starlight:Notification({
 Title = "Configuration Loaded",
 Icon = 6026568227,
 Content = string.format("Loaded config %q", selectedConfig),
 })
 end,
 Style = 1,
 }, "__prebuiltConfigLoader")

 instance:CreateButton({
 Name = "Update Config",
 Icon = 6031225810,
 CenterContent = ButtonsCentered,
 Tooltip = "Overwrite and update the selected configuration and all its settings with your current ones.",
 Callback = function()
 if selectedConfig == nil then
 Starlight:Notification({
 Title = "Null Selection",
 Icon = 129398364168201,
 Content = "Configuration Must Be Selected!",
 })
 return
 end

 local success, returned = Starlight.FileSystem:SaveConfig(
 selectedConfig,
 `{Starlight.FileSystem.Folder}/{folderpath}/configs/`
 )
 if not success then
 Starlight:Notification({
 Title = "Configuration Error",
 Icon = 6031071057,
 Content = "Unable to overwrite config, return error: " .. returned,
 })
 return
 end

 Starlight:Notification({
 Title = "Configuration Updated",
 Icon = 6026568227,
 Content = string.format("Overwrote config %q", selectedConfig),
 })
 end,
 Style = 2,
 }, "__prebuiltConfigUpdater")

 instance:CreateButton({
 Name = "Refresh Configuration List",
 Icon = 6035056483,
 CenterContent = ButtonsCentered,
 Tooltip = "Manually refresh the list of configurations incase of any errors.",
 Callback = function()
 instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({
 Options = Starlight.FileSystem:RefreshConfigList(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs`
 ),
 })
 end,
 Style = 2,
 }, "__prebuiltConfigRefresher")

 local loadlabel = instance:CreateParagraph({
 Name = "Current Autoload Config:",
 Content = isfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`) and readfile(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`
 ) or "None",
 }, "__prebuiltConfigAutoloadLabel")

 instance:CreateButton({
 Name = "Autoload Configuration",
 Icon = 6023565901,
 CenterContent = ButtonsCentered,
 Tooltip = "Set the selected configuration to load whenever you run the script automatically.",
 Callback = function()
 if selectedConfig == nil then
 Starlight:Notification({
 Title = "Null Selection",
 Icon = 129398364168201,
 Content = "Configuration Must Be Selected!",
 })
 return
 end
 local name = selectedConfig
 pcall(function()
 writefile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`, name)
 end)
 loadlabel:Set({ Content = name })

 Starlight:Notification({
 Title = "Configuration Updated",
 Icon = 6026568227,
 Content = string.format(
 "Set %q to be automatically loaded on your future sessions.",
 selectedConfig
 ),
 })
 end,
 Style = 1,
 }, "__prebuiltConfigLoader")

 instance:CreateDivider()

 local warning = instance:CreateLabel({
 Name = "! DANGER ZONE !",
 }, "__prebuiltConfigDangerWarning")
 warning.Instance.Header.TextXAlignment = Enum.TextXAlignment.Center
 warning.Instance.Header.Size = UDim2.new(1, 0, 0, warning.Instance.Header.Size.Y.Offset)
 warning.Instance.Header.UIPadding.PaddingLeft = UDim.new(0, 0)

 instance:CreateButton({
 Name = "Clear Autoload",
 Icon = 6034767619,
 CenterContent = ButtonsCentered,
 Tooltip = "Removes the autoloading of the current autoload config.",
 Callback = function()
 if isfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`) then
 delfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`)
 end
 loadlabel:Set({ Content = "None" })

 Starlight:Notification({
 Title = "Autoload Cleared",
 Icon = 6026568227,
 Content = string.format("Disabled current autoload.", selectedConfig),
 })
 end,
 Style = 2,
 }, "__prebuiltConfigDeleter")

 instance:CreateButton({
 Name = "Delete Configuration",
 Icon = 115577765236264,
 CenterContent = ButtonsCentered,
 Tooltip = "Deleting A Configuration is permanent and you have to redo it!",
 Callback = function()
 if selectedConfig == nil then
 Starlight:Notification({
 Title = "Null Selection",
 Icon = 129398364168201,
 Content = "Configuration Must Be Selected!",
 })
 return
 end
 if
 isfile(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs/{selectedConfig}{Starlight.FileSystem.FileExtension}`
 )
 then
 delfile(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs/{selectedConfig}{Starlight.FileSystem.FileExtension}`
 )
 end

 if loadlabel.Values.Content == selectedConfig then
 if isfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`) then
 delfile(`{Starlight.FileSystem.Folder}/{folderpath}/configs/autoload.txt`)
 end
 loadlabel:Set({ Content = "None" })
 end

 instance.Elements["__prebuiltConfigSelector_lbl"].NestedElements["__prebuiltConfigSelector_lbl"]:Set({
 Options = Starlight.FileSystem:RefreshConfigList(
 `{Starlight.FileSystem.Folder}/{folderpath}/configs`
 ),
 CurrentOption = "",
 })

 Starlight:Notification({
 Title = "Configuration Deleted",
 Icon = 6026568227,
 Content = string.format("Deleted Configuration %q", selectedConfig),
 })
 if selectedConfig then
 selectedConfig = nil
 end
 end,
 Style = 2,
 }, "__prebuiltConfigDeleter")
 end

 

 Tab.Instances.Button.Parent = Starlight.Window.TabSections[Name].Instance
 Starlight.Window.TabSections[Name].Tabs[TabIndex] = Tab
 return Starlight.Window.TabSections[Name].Tabs[TabIndex]
 end

 TabSection.Instance.Parent = navigation
 Starlight.Window.TabSections[Name] = TabSection
 return Starlight.Window.TabSections[Name]

 
 end

 

 
 do
 mainWindow.Content.Topbar.NotificationCenterIcon["MouseEnter"]:Connect(function()
 Tween(
 mainWindow.Content.Topbar.NotificationCenterIcon,
 { ImageColor3 = Starlight.CurrentTheme.Foregrounds.DarkHover }
 )
 end)
 mainWindow.Content.Topbar.NotificationCenterIcon["MouseLeave"]:Connect(function()
 Tween(
 mainWindow.Content.Topbar.NotificationCenterIcon,
 { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Dark }
 )
 end)

 local notifdebounce = false
 mainWindow.Content.Topbar.NotificationCenterIcon["MouseButton1Click"]:Connect(function()
 if not notifdebounce then
 PlayStarlightClickSound()
 notifdebounce = true
 if Starlight.NotificationsOpen then
 for i, newNotification in pairs(CollectionService:GetTagged("__starlight_ExpiredNotification")) do
 newNotification.Icon.Visible = false
 TweenService:Create(
 newNotification,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { BackgroundTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.UIStroke,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { Transparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.antumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.penumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.umbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Title,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Description,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 1 }
 ):Play()
 TweenService:Create(
 newNotification.Time,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 1 }
 ):Play()

 pcall(function()
 TweenService:Create(
 newNotification.Acrylic.shadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.7 }
 ):Play()
 TweenService:Create(
 newNotification.Acrylic.tint,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.98 }
 ):Play()
 TweenService:Create(
 newNotification.Acrylic.Noise,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.9 }
 ):Play()
 end)

 TweenService:Create(
 newNotification,
 TweenInfo.new(1, Enum.EasingStyle.Exponential),
 { Size = UDim2.new(1, -90, 0, 0) }
 ):Play()

 Tween(
 newNotification,
 {
 Size = UDim2.new(
 1,
 -90,
 0,
 -_notifs:FindFirstChild("UIListLayout").Padding.Offset
 ),
 },
 function()
 newNotification.Visible = false
 end,
 TweenInfo.new(1, Enum.EasingStyle.Exponential)
 )
 end
 else
 for i, newNotification in pairs(CollectionService:GetTagged("__starlight_ExpiredNotification")) do
 task.spawn(function()
 newNotification.Icon.Visible = true

 newNotification.Size = UDim2.new(
 1,
 0,
 0,
 -_notifs:FindFirstChild("UIListLayout").Padding.Offset
 )

 newNotification.Icon.Size = UDim2.new(0, 28, 0, 28)

 newNotification.Visible = true

 newNotification.Description.Size = UDim2.new(1, -65, 0, math.huge)
 local bounds = newNotification.Description.TextBounds.Y
 newNotification.Description.Size = UDim2.new(1, -65, 0, bounds + 2)
 TweenService:Create(
 newNotification,
 TweenInfo.new(0.6, Enum.EasingStyle.Exponential),
 { Size = UDim2.new(1, 0, 0, bounds + 50) }
 ):Play()

 task.wait(0.15)
 TweenService
 :Create(
 newNotification,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 {
 BackgroundTransparency = notificationAcrylic
 and (mainAcrylic and 0.55 or 0.375)
 or 0,
 }
 )
 :Play()
 TweenService:Create(
 newNotification.Shadow.antumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.94 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.penumbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.55 }
 ):Play()
 TweenService:Create(
 newNotification.Shadow.umbraShadow,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0.4 }
 ):Play()
 TweenService:Create(
 newNotification.Title,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 0 }
 ):Play()

 task.wait(0.05)

 TweenService:Create(
 newNotification.Icon,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { ImageTransparency = 0 }
 ):Play()

 task.wait(0.05)
 TweenService:Create(
 newNotification.Description,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 0.35 }
 ):Play()
 TweenService:Create(
 newNotification.Time,
 TweenInfo.new(0.3, Enum.EasingStyle.Exponential),
 { TextTransparency = 0.35 }
 ):Play()
 TweenService:Create(
 newNotification.UIStroke,
 TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
 { Transparency = 0.95 }
 ):Play()
 end)
 end
 end
 Starlight.NotificationsOpen = not Starlight.NotificationsOpen
 task.wait(1)
 notifdebounce = false
 end
 end)

 mainWindow.Content.Topbar.Search["MouseEnter"]:Connect(function()
 Tween(mainWindow.Content.Topbar.Search, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.DarkHover })
 end)
 mainWindow.Content.Topbar.Search["MouseLeave"]:Connect(function()
 Tween(mainWindow.Content.Topbar.Search, { ImageColor3 = Starlight.CurrentTheme.Foregrounds.Dark })
 end)

 for _, Button in pairs(mainWindow.Content.Topbar.Controls:GetChildren()) do
 if Button.ClassName == "TextButton" then
 Button["MouseEnter"]:Connect(function()
 Tween(Button.Fill, { BackgroundTransparency = 0 })
 Tween(Button.Fill.Icon, { Position = UDim2.fromScale(0.5, 0.5) })
 end)

 Button["MouseLeave"]:Connect(function()
 Tween(Button.Fill, { BackgroundTransparency = 1 })
 Tween(Button.Fill.Icon, { Position = UDim2.fromScale(0.5, 1.8) })
 end)
 end
 end

 mainWindow.Content.Topbar.Controls.Close["MouseButton1Click"]:Connect(function()
 PlayStarlightClickSound()
 Starlight.Window:PromptDialog({
 Name = "Are you sure?",
 Content = "Are you sure you wish to exit the Interface?",
 Type = 1,
 Actions = {
 Primary = {
 Name = "Cancel",
 Callback = function() end,
 },
 {
 Name = "Yes",
 Callback = function()
 Starlight:Destroy()
 end,
 },
 },
 })
 end)
 mainWindow.Content.Topbar.Controls.Maximize["MouseButton1Click"]:Connect(function()
 PlayStarlightClickSound()
 if Starlight.Maximized then
 Unmaximize(mainWindow)
 else
 Maximize(mainWindow)
 end
 end)

 local debounce = false

 mainWindow.Content.Topbar.Controls.Minimize["MouseButton1Click"]:Connect(function()
 if not debounce then
 PlayStarlightClickSound()
 debounce = true
 Hide(mainWindow, false, true, Starlight.WindowKeybind)
 Hide(_drag, false, false, Starlight.WindowKeybind)
 task.delay(0.4, function()
 debounce = false
 end)
 end
 end)

 _mobileToggle.MouseButton1Click:Connect(function()
 PlayStarlightClickSound()
 if Starlight.Minimized == true then
 if not debounce then
 debounce = true
 Unhide(mainWindow)
 Unhide(_drag)
 Tween(
 mainWindow.Content.Topbar.Controls.Minimize.Fill.Icon,
 { Position = UDim2.fromScale(0.5, 1.5) }
 )
 Tween(mainWindow.Content.Topbar.Controls.Minimize.Fill, { BackgroundTransparency = 1 })
 task.delay(0.4, function()
 debounce = false
 end)
 end
 elseif Starlight.Minimized == false then
 if not debounce then
 debounce = true
 Hide(mainWindow, false, true, Starlight.WindowKeybind)
 Hide(_drag, false, false, Starlight.WindowKeybind)
 task.delay(0.4, function()
 debounce = false
 end)
 end
 end
 end)

 connections["__windowKeybindHidingBindConnection"] = UserInputService.InputBegan:Connect(function(input, gpe)
 if gpe then
 return
 end
 if input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
 if Starlight.Minimized == true then
 if not debounce then
 debounce = true
 Unhide(mainWindow)
 Unhide(_drag)
 Tween(
 mainWindow.Content.Topbar.Controls.Minimize.Fill.Icon,
 { Position = UDim2.fromScale(0.5, 1.5) }
 )
 Tween(mainWindow.Content.Topbar.Controls.Minimize.Fill, { BackgroundTransparency = 1 })
 task.delay(0.4, function()
 debounce = false
 end)
 end
 elseif Starlight.Minimized == false then
 if not debounce then
 debounce = true
 Hide(mainWindow, false, true, Starlight.WindowKeybind)
 Hide(_drag, false, false, Starlight.WindowKeybind)
 task.delay(0.4, function()
 debounce = false
 end)
 end
 end
 end
 end)
 end
 

	
	function Starlight.Window:CreateHitboxEditorPreview(opts)
		opts = opts or {}
		local mw = self.Instance
		if not mw then
			return nil
		end

		local sgParent = StarlightUI.Parent
		if sgParent then
			for _, ch in ipairs(sgParent:GetChildren()) do
				if ch:IsA("ScreenGui") and ch.Name:sub(1, 3) == "_el" and ch ~= StarlightUI then
					ch:Destroy()
				end
			end
		end
		local _edDockName = "_dk" .. _rndStr(8)
		for _, ch in ipairs(StarlightUI:GetChildren()) do
			if ch.Name:sub(1, 3) == "_dk" then ch:Destroy() end
		end
		local oldDock = StarlightUI:FindFirstChild(_edDockName)
		if oldDock then
			oldDock:Destroy()
		end

		
		local editorLayer = Instance.new("ScreenGui")
		editorLayer.Name = "_el" .. _rndStr(8)
		editorLayer.ResetOnSpawn = false
		pcall(function()
			editorLayer.IgnoreGuiInset = StarlightUI.IgnoreGuiInset
		end)
		pcall(function()
			editorLayer.ZIndexBehavior = StarlightUI.ZIndexBehavior
		end)
		do
			local baseDO = 0
			pcall(function()
				baseDO = StarlightUI.DisplayOrder
			end)
			editorLayer.DisplayOrder = (typeof(baseDO) == "number" and baseDO or 0) + 150
		end
		if sgParent then
			editorLayer.Parent = sgParent
		elseif gethui then
			editorLayer.Parent = gethui()
		else
			editorLayer.Parent = _cref(_game:GetService("CoreGui"))
		end

		local r6 = { "Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg" }
		local defSz: { [string]: Vector3 } = {
			["Head"] = Vector3.new(2, 1, 1),
			["Torso"] = Vector3.new(2, 2, 1),
			["Left Arm"] = Vector3.new(1, 2, 1),
			["Right Arm"] = Vector3.new(1, 2, 1),
			["Left Leg"] = Vector3.new(1, 2, 1),
			["Right Leg"] = Vector3.new(1, 2, 1),
		}
		local defCF: { [string]: CFrame } = {
			["Head"] = CFrame.new(0, 1.5, 0),
			["Torso"] = CFrame.new(0, 0, 0),
			["Left Arm"] = CFrame.new(-1.5, 0, 0),
			["Right Arm"] = CFrame.new(1.5, 0, 0),
			["Left Leg"] = CFrame.new(-0.5, -2, 0),
			["Right Leg"] = CFrame.new(0.5, -2, 0),
		}
		local partCol: { [string]: Color3 } = {
			["Head"] = Color3.fromRGB(245, 205, 48),
			["Torso"] = Color3.fromRGB(13, 105, 172),
			["Left Arm"] = Color3.fromRGB(245, 205, 48),
			["Right Arm"] = Color3.fromRGB(245, 205, 48),
			["Left Leg"] = Color3.fromRGB(40, 127, 71),
			["Right Leg"] = Color3.fromRGB(40, 127, 71),
		}

		local previewSizes: { [string]: { X: number, Y: number, Z: number } } = opts.BindSizes
		if type(previewSizes) ~= "table" then
			previewSizes = {}
			for _, n in ipairs(r6) do
				previewSizes[n] = { X = 1, Y = 1, Z = 1 }
			end
		else
			for _, n in ipairs(r6) do
				if type(previewSizes[n]) ~= "table" then
					previewSizes[n] = { X = 1, Y = 1, Z = 1 }
				end
			end
		end

		
		local userWantsOpen = opts.Visible == true

		local dock = Instance.new("Frame")
		dock.Name = _edDockName
		dock.BorderSizePixel = 0
		dock.ClipsDescendants = true
		dock.ZIndex = 1
		dock.Visible = false
		dock.Parent = editorLayer

		local dockStroke = Instance.new("UIStroke")
		dockStroke.Thickness = 1
		pcall(function()
			dockStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		end)
		dockStroke.Parent = dock
		ThemeMethods.bindTheme(dock, "BackgroundColor3", "Backgrounds.Dark")
		ThemeMethods.bindTheme(dockStroke, "Color", "Foregrounds.Dark")

		local corner = Instance.new("UICorner")
		corner.CornerRadius = UDim.new(0, 10)
		corner.Parent = dock

		local mainFrame = Instance.new("Frame")
		mainFrame.Name = "EditorRoot"
		mainFrame.Size = UDim2.new(1, 0, 1, 0)
		mainFrame.BackgroundTransparency = 1
		mainFrame.BorderSizePixel = 0
		mainFrame.Parent = dock

		local titleH, ctrlH, pad = 36, 182, 8
		local minVpH = 140
		local titleBar = Instance.new("Frame")
		titleBar.Name = "TitleBar"
		titleBar.Size = UDim2.new(1, 0, 0, titleH)
		titleBar.BorderSizePixel = 0
		titleBar.ZIndex = 2
		titleBar.Parent = mainFrame
		ThemeMethods.bindTheme(titleBar, "BackgroundColor3", "Backgrounds.Medium")
		local titleBarCorner = Instance.new("UICorner")
		titleBarCorner.CornerRadius = UDim.new(0, 10)
		titleBarCorner.Parent = titleBar

		local titleLbl = Instance.new("TextLabel")
		titleLbl.BackgroundTransparency = 1
		titleLbl.Size = UDim2.new(1, -40, 1, 0)
		titleLbl.Position = UDim2.new(0, 10, 0, 0)
		titleLbl.Font = Enum.Font.GothamBold
		titleLbl.TextSize = 14
		titleLbl.TextXAlignment = Enum.TextXAlignment.Left
		titleLbl.Text = opts.Title or "3D Hitbox Editor (Preview)"
		titleLbl.Parent = titleBar
		ThemeMethods.bindTheme(titleLbl, "TextColor3", "Foregrounds.Light")

		local closeBtn = Instance.new("TextButton")
		closeBtn.Name = "Close"
		closeBtn.AutoButtonColor = false
		closeBtn.BorderSizePixel = 0
		closeBtn.Size = UDim2.fromOffset(24, 24)
		closeBtn.AnchorPoint = Vector2.new(0.5, 0.5)
		closeBtn.Position = UDim2.new(1, -16, 0.5, 0)
		closeBtn.ZIndex = 5
		closeBtn.Text = "✕"
		closeBtn.TextSize = 14
		closeBtn.Font = Enum.Font.GothamBold
		closeBtn.TextXAlignment = Enum.TextXAlignment.Center
		closeBtn.TextYAlignment = Enum.TextYAlignment.Center
		closeBtn.Parent = titleBar
		local closeCorner = Instance.new("UICorner")
		closeCorner.CornerRadius = UDim.new(1, 0)
		closeCorner.Parent = closeBtn
		ThemeMethods.bindTheme(closeBtn, "BackgroundColor3", "Backgrounds.Dark")
		ThemeMethods.bindTheme(closeBtn, "TextColor3", "Foregrounds.Medium")
		closeBtn.MouseEnter:Connect(function()
			closeBtn.TextColor3 = GetNestedValue(Starlight.CurrentTheme, "Foregrounds.Light")
			closeBtn.BackgroundTransparency = 0.12
		end)
		closeBtn.MouseLeave:Connect(function()
			closeBtn.TextColor3 = GetNestedValue(Starlight.CurrentTheme, "Foregrounds.Medium")
			closeBtn.BackgroundColor3 = GetNestedValue(Starlight.CurrentTheme, "Backgrounds.Dark")
			closeBtn.BackgroundTransparency = 0
		end)

		local viewport = Instance.new("ViewportFrame")
		viewport.Name = "Viewport"
		viewport.BorderSizePixel = 0
		viewport.BackgroundTransparency = 0
		viewport.ClipsDescendants = true
		viewport.LightColor = Color3.new(1, 1, 1)
		viewport.Ambient = Color3.fromRGB(140, 140, 160)
		viewport.LightDirection = Vector3.new(-1, -1, -1).Unit
		
		viewport.ZIndex = 1
		viewport.Parent = mainFrame
		local vpCorner = Instance.new("UICorner")
		vpCorner.CornerRadius = UDim.new(0, 8)
		vpCorner.Parent = viewport
		local vpStroke = Instance.new("UIStroke")
		vpStroke.Thickness = 1
		vpStroke.Parent = viewport
		ThemeMethods.bindTheme(viewport, "BackgroundColor3", "Backgrounds.Highlight")
		ThemeMethods.bindTheme(vpStroke, "Color", "Foregrounds.Dark")

		local cam = Instance.new("Camera")
		cam.CameraType = Enum.CameraType.Scriptable
		cam.FieldOfView = 50
		cam.Parent = viewport
		viewport.CurrentCamera = cam

		local world = Instance.new("WorldModel")
		world.Parent = viewport

		local tooltip = Instance.new("TextLabel")
		tooltip.BackgroundTransparency = 0.35
		tooltip.Size = UDim2.new(1, -16, 0, 22)
		tooltip.Position = UDim2.new(0, 8, 0, 8)
		tooltip.ZIndex = 10
		tooltip.Font = Enum.Font.Gotham
		tooltip.TextSize = 11
		tooltip.TextXAlignment = Enum.TextXAlignment.Left
		tooltip.Text = "  Click a body part to select it"
		tooltip.Parent = viewport
		local ttCorner = Instance.new("UICorner")
		ttCorner.CornerRadius = UDim.new(0, 4)
		ttCorner.Parent = tooltip
		ThemeMethods.bindTheme(tooltip, "BackgroundColor3", "Backgrounds.Medium")
		ThemeMethods.bindTheme(tooltip, "TextColor3", "Foregrounds.Medium")

		local partInfo = Instance.new("TextLabel")
		partInfo.BackgroundTransparency = 1
		partInfo.Size = UDim2.new(1, -16, 0, 18)
		partInfo.Position = UDim2.new(0, 8, 1, -24)
		partInfo.ZIndex = 10
		partInfo.Font = Enum.Font.GothamMedium
		partInfo.TextSize = 11
		partInfo.TextXAlignment = Enum.TextXAlignment.Left
		partInfo.Text = "No part selected"
		partInfo.Parent = viewport
		ThemeMethods.bindTheme(partInfo, "TextColor3", "Foregrounds.Medium")

		local control = Instance.new("Frame")
		control.Name = "ControlPanel"
		control.Size = UDim2.new(1, -pad * 2, 0, ctrlH)
		control.Position = UDim2.new(0, pad, 1, -pad - ctrlH)
		control.BorderSizePixel = 0
		control.ZIndex = 25
		control.Parent = mainFrame
		local ctrlCorner = Instance.new("UICorner")
		ctrlCorner.CornerRadius = UDim.new(0, 8)
		ctrlCorner.Parent = control
		ThemeMethods.bindTheme(control, "BackgroundColor3", "Backgrounds.Groupbox")

		local selTitle = Instance.new("TextLabel")
		selTitle.BackgroundTransparency = 1
		selTitle.Size = UDim2.new(1, -12, 0, 22)
		selTitle.Position = UDim2.new(0, 8, 0, 6)
		selTitle.ZIndex = 26
		selTitle.Font = Enum.Font.GothamBold
		selTitle.TextSize = 12
		selTitle.TextXAlignment = Enum.TextXAlignment.Left
		selTitle.Text = "Select a body part to edit"
		selTitle.Parent = control
		ThemeMethods.bindTheme(selTitle, "TextColor3", "Foregrounds.Light")

		local st = {
			SelectedPart = nil :: string?,
			MannekinParts = {} :: { [string]: BasePart },
			AxisSliders = {} :: { [string]: { track: Frame, fill: Frame, knob: Frame } },
			AxisValueLabels = {} :: { [string]: TextLabel },
			IsDraggingSlider = false,
			Connections = {} :: { RBXScriptConnection },
			ClonedChar = nil :: Model?,
		}

		local function layoutFrames(): number
			local mwH = mw.AbsoluteSize.Y
			
			local baseH = mwH > 1 and mwH or (titleH + pad + minVpH + pad + ctrlH + pad)
			local vpBudget = baseH - titleH - ctrlH - pad * 3
			local vpH = math.max(minVpH, vpBudget)
			local stackedH = titleH + pad + vpH + pad + ctrlH
			local dockH = math.max(baseH, stackedH)

			viewport.Position = UDim2.new(0, pad, 0, titleH + pad)
			viewport.Size = UDim2.new(1, -pad * 2, 0, vpH)
			control.Position = UDim2.new(0, pad, 0, titleH + pad + vpH + pad)
			return dockH
		end

		local function updateCam()
			local dist = 10
			local target = Vector3.new(0, -0.25, 0)
			local camPos = target + Vector3.new(0, 0.5, -dist)
			cam.CFrame = CFrame.lookAt(camPos, target + Vector3.new(0, 0.5, 0))
		end

		local function updatePartInfo()
			if not st.SelectedPart then
				partInfo.Text = "No part selected"
				return
			end
			local sz = previewSizes[st.SelectedPart]
			local ds = defSz[st.SelectedPart]
			if sz and ds then
				partInfo.Text = string.format(
					"%s: %.1f x %.1f x %.1f studs (%.2fx, %.2fx, %.2fx)",
					st.SelectedPart,
					ds.X * sz.X,
					ds.Y * sz.Y,
					ds.Z * sz.Z,
					sz.X,
					sz.Y,
					sz.Z
				)
			end
		end

		local function updateMannequinSize(partName: string)
			local p = st.MannekinParts[partName]
			local sz = previewSizes[partName]
			local ds = defSz[partName]
			if not p or not sz or not ds then
				return
			end
			local target = Vector3.new(ds.X * sz.X, ds.Y * sz.Y, ds.Z * sz.Z)
			TweenService:Create(p, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = target }):Play()
		end

		local function updateSliders()
			if not st.SelectedPart then
				return
			end
			local sz = previewSizes[st.SelectedPart]
			local minV, maxV = 1, 2
			for _, axis in ipairs({ "X", "Y", "Z" }) do
				local v = (axis == "X" and sz.X) or (axis == "Y" and sz.Y) or sz.Z
				local alpha = math.clamp((v - minV) / (maxV - minV), 0, 1)
				local sl = st.AxisSliders[axis]
				if sl then
					sl.fill.Size = UDim2.new(alpha, 0, 1, 0)
					sl.knob.Position = UDim2.new(alpha, -7, 0.5, -7)
				end
				local vl = st.AxisValueLabels[axis]
				if vl then
					vl.Text = string.format("%.2fx", v)
				end
			end
		end

		local function selectPart(partName: string)
			if st.SelectedPart and st.MannekinParts[st.SelectedPart] then
				st.MannekinParts[st.SelectedPart].Color = partCol[st.SelectedPart]
			end
			st.SelectedPart = partName
			if st.MannekinParts[partName] then
				st.MannekinParts[partName].Color = Color3.fromRGB(255, 100, 100)
			end
			selTitle.Text = "Editing: " .. partName
			tooltip.Text = "  Drag sliders to preview scale (no hitbox apply)"
			updateSliders()
			updatePartInfo()
		end

		local function buildMannequin()
			for _, p in pairs(st.MannekinParts) do
				if p and p.Parent then
					p:Destroy()
				end
			end
			table.clear(st.MannekinParts)
			if st.ClonedChar then
				pcall(function()
					st.ClonedChar:Destroy()
				end)
				st.ClonedChar = nil
			end

			local useClone = false
			local sourceChar: Model? = nil
			if Player and Player.Character then
				local hum = Player.Character:FindFirstChildOfClass("Humanoid")
				if hum then
					local ok, cl = pcall(function()
						return Player.Character:Clone()
					end)
					if ok and cl and cl:IsA("Model") then
						sourceChar = cl
						useClone = true
					end
				end
			end

			if useClone and sourceChar then
				for _, d in pairs(sourceChar:GetDescendants()) do
					if
						d:IsA("Script")
						or d:IsA("LocalScript")
						or d:IsA("ModuleScript")
						or d:IsA("Tool")
						or d:IsA("ForceField")
						or d:IsA("BillboardGui")
						or d:IsA("Sound")
						or d:IsA("ParticleEmitter")
					then
						pcall(function()
							d:Destroy()
						end)
					end
				end
				local hum = sourceChar:FindFirstChildOfClass("Humanoid")
				if hum then
					pcall(function()
						hum:Destroy()
					end)
				end
				local anim = sourceChar:FindFirstChild("Animate")
				if anim then
					pcall(function()
						anim:Destroy()
					end)
				end
				local torso = sourceChar:FindFirstChild("Torso") :: BasePart?
				local rootOff = torso and torso.CFrame:Inverse() or CFrame.new()
				for _, pn in ipairs(r6) do
					local bp = sourceChar:FindFirstChild(pn)
					if bp and bp:IsA("BasePart") then
						bp.Anchored = true
						bp.CanCollide = false
						bp.CFrame = rootOff * bp.CFrame
						st.MannekinParts[pn] = bp
						local s = previewSizes[pn]
						local ds = defSz[pn]
						bp.Size = Vector3.new(ds.X * s.X, ds.Y * s.Y, ds.Z * s.Z)
					end
				end
				local hrp = sourceChar:FindFirstChild("HumanoidRootPart")
				if hrp and hrp:IsA("BasePart") then
					hrp.Anchored = true
					hrp.Transparency = 1
				end
				sourceChar.Parent = world
				st.ClonedChar = sourceChar
			else
				local rootCF = CFrame.new(0, 0, 0)
				for _, pn in ipairs(r6) do
					local p = Instance.new("Part")
					p.Name = pn
					p.Anchored = true
					p.CanCollide = false
					p.Material = Enum.Material.SmoothPlastic
					p.Color = partCol[pn]
					p.Size = defSz[pn]
					p.CFrame = rootCF * (defCF[pn] or CFrame.new())
					if pn == "Head" then
						local mesh = Instance.new("SpecialMesh")
						mesh.MeshType = Enum.MeshType.Head
						mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
						mesh.Parent = p
						local face = Instance.new("Decal")
						face.Texture = "rbxasset://textures/face.png"
						face.Face = Enum.NormalId.Front
						face.Parent = p
					end
					p.Parent = world
					st.MannekinParts[pn] = p
					local s = previewSizes[pn]
					local ds = defSz[pn]
					p.Size = Vector3.new(ds.X * s.X, ds.Y * s.Y, ds.Z * s.Z)
				end
			end
			updateCam()
		end

		
		local function bindAccentSolid(inst: Instance, propName: string)
			local function apply()
				local v = GetNestedValue(Starlight.CurrentTheme, "Accents.Main")
				local c: Color3
				if typeof(v) == "ColorSequence" then
					local kps = v.Keypoints
					if #kps >= 2 then
						c = kps[2].Value
					elseif #kps >= 1 then
						c = kps[1].Value
					else
						c = Color3.fromRGB(99, 102, 241)
					end
				elseif typeof(v) == "Color3" then
					c = v
				else
					c = Color3.fromRGB(99, 102, 241)
				end
				pcall(function()
					(inst :: any)[propName] = c
				end)
			end
			themeEvent.Event:Connect(apply)
			apply()
		end

		local axisMeta = {
			{ axis = "X", label = "Width (X)" },
			{ axis = "Y", label = "Height (Y)" },
			{ axis = "Z", label = "Depth (Z)" },
		}

		for idx, meta in ipairs(axisMeta) do
			local axis = meta.axis
			local y0 = 32 + (idx - 1) * 32
			local lab = Instance.new("TextLabel")
			lab.BackgroundTransparency = 1
			lab.Size = UDim2.new(0, 72, 0, 22)
			lab.Position = UDim2.new(0, 8, 0, y0)
			lab.Font = Enum.Font.GothamMedium
			lab.TextSize = 11
			lab.TextXAlignment = Enum.TextXAlignment.Left
			lab.Text = meta.label
			lab.ZIndex = 26
			lab.Parent = control
			ThemeMethods.bindTheme(lab, "TextColor3", "Foregrounds.Light")

			local track = Instance.new("Frame")
			track.Name = "Track_" .. axis
			track.Size = UDim2.new(1, -160, 0, 6)
			track.Position = UDim2.new(0, 84, 0, y0 + 8)
			track.BorderSizePixel = 0
			track.ZIndex = 26
			track.Parent = control
			local trC = Instance.new("UICorner")
			trC.CornerRadius = UDim.new(0, 3)
			trC.Parent = track
			ThemeMethods.bindTheme(track, "BackgroundColor3", "Backgrounds.Dark")

			local fill = Instance.new("Frame")
			fill.BorderSizePixel = 0
			fill.Size = UDim2.new(0, 0, 1, 0)
			fill.ZIndex = 27
			fill.Parent = track
			local fC = Instance.new("UICorner")
			fC.CornerRadius = UDim.new(0, 3)
			fC.Parent = fill
			bindAccentSolid(fill, "BackgroundColor3")

			local knob = Instance.new("Frame")
			knob.Size = UDim2.new(0, 14, 0, 14)
			knob.Position = UDim2.new(0, -7, 0.5, -7)
			knob.BorderSizePixel = 0
			knob.ZIndex = 28
			knob.Parent = track
			local kC = Instance.new("UICorner")
			kC.CornerRadius = UDim.new(1, 0)
			kC.Parent = knob
			ThemeMethods.bindTheme(knob, "BackgroundColor3", "Foregrounds.Light")
			local ks = Instance.new("UIStroke")
			ks.Thickness = 2
			ks.Parent = knob
			bindAccentSolid(ks, "Color")

			local valLab = Instance.new("TextLabel")
			valLab.Size = UDim2.new(0, 52, 0, 22)
			valLab.Position = UDim2.new(1, -58, 0, y0)
			valLab.BorderSizePixel = 0
			valLab.Font = Enum.Font.GothamBold
			valLab.TextSize = 11
			valLab.Text = "1.00x"
			valLab.ZIndex = 26
			valLab.Parent = control
			local vC = Instance.new("UICorner")
			vC.CornerRadius = UDim.new(0, 4)
			vC.Parent = valLab
			ThemeMethods.bindTheme(valLab, "BackgroundColor3", "Backgrounds.Dark")
			ThemeMethods.bindTheme(valLab, "TextColor3", "Foregrounds.Light")

			st.AxisSliders[axis] = { track = track, fill = fill, knob = knob }
			st.AxisValueLabels[axis] = valLab

			local dragging = false
			local minVal, maxVal, step = 1, 2, 0.01
			local function valToAlpha(v: number)
				return math.clamp((v - minVal) / (maxVal - minVal), 0, 1)
			end
			local function alphaToVal(a: number)
				local raw = minVal + a * (maxVal - minVal)
				return math.clamp(math.floor(raw / step + 0.5) * step, minVal, maxVal)
			end
			local function applySlider(inp: InputObject)
				if not st.SelectedPart then
					return
				end
				local tAbs = track.AbsolutePosition.X
				local tSize = track.AbsoluteSize.X
				if tSize < 1 then
					return
				end
				local alpha = math.clamp((inp.Position.X - tAbs) / tSize, 0, 1)
				local value = alphaToVal(alpha)
				fill.Size = UDim2.new(valToAlpha(value), 0, 1, 0)
				knob.Position = UDim2.new(valToAlpha(value), -7, 0.5, -7)
				valLab.Text = string.format("%.2fx", value)
				local row = previewSizes[st.SelectedPart]
				if axis == "X" then
					row.X = value
				elseif axis == "Y" then
					row.Y = value
				else
					row.Z = value
				end
				updateMannequinSize(st.SelectedPart)
				updatePartInfo()
				if type(opts.OnPreviewValueChanged) == "function" then
					pcall(opts.OnPreviewValueChanged, st.SelectedPart, axis, value)
				end
			end

			track.InputBegan:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					st.IsDraggingSlider = true
					applySlider(inp)
				end
			end)
			knob.InputBegan:Connect(function(inp)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					st.IsDraggingSlider = true
				end
			end)
			table.insert(
				st.Connections,
				UserInputService.InputChanged:Connect(function(inp)
					if
						dragging
						and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch)
					then
						applySlider(inp)
					end
				end)
			)
			table.insert(
				st.Connections,
				UserInputService.InputEnded:Connect(function(inp)
					if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
						if dragging then
							dragging = false
							task.delay(0.05, function()
								st.IsDraggingSlider = false
							end)
						end
					end
				end)
			)
		end

		local overlay = Instance.new("Frame")
		overlay.Name = "PartHitOverlay"
		overlay.BackgroundTransparency = 1
		overlay.ZIndex = 8
		overlay.Size = UDim2.new(1, 0, 1, 0)
		overlay.Parent = viewport

		local hitSpots = {
			{ "Head", 0.45, 0.26, 0.1, 0.11 },
			{ "Torso", 0.4, 0.4, 0.2, 0.22 },
			{ "Right Arm", 0.32, 0.4, 0.08, 0.22 },
			{ "Left Arm", 0.6, 0.4, 0.08, 0.22 },
			{ "Right Leg", 0.4, 0.62, 0.1, 0.18 },
			{ "Left Leg", 0.5, 0.62, 0.1, 0.18 },
		}
		for _, row in ipairs(hitSpots) do
			local name, xs, ys, ws, hs = row[1], row[2], row[3], row[4], row[5]
			local b = Instance.new("TextButton")
			b.Text = ""
			b.BackgroundTransparency = 1
			b.Size = UDim2.new(ws, 0, hs, 0)
			b.Position = UDim2.new(xs, 0, ys, 0)
			b.ZIndex = 9
			b.Parent = overlay
			local hsStroke = Instance.new("UIStroke")
			hsStroke.Transparency = 1
			hsStroke.Thickness = 1.5
			hsStroke.Color = Color3.new(1, 1, 1)
			hsStroke.Parent = b
			b.MouseEnter:Connect(function()
				hsStroke.Transparency = 0
				b.BackgroundTransparency = 0.88
				b.BackgroundColor3 = Color3.new(1, 1, 1)
			end)
			b.MouseLeave:Connect(function()
				hsStroke.Transparency = 1
				b.BackgroundTransparency = 1
			end)
			b.MouseButton1Click:Connect(function()
				if st.IsDraggingSlider then
					return
				end
				PlayStarlightClickSound()
				selectPart(name)
			end)
		end

		local resetPart = Instance.new("TextButton")
		resetPart.Size = UDim2.new(0.5, -10, 0, 26)
		resetPart.Position = UDim2.new(0, 8, 1, -34)
		resetPart.Font = Enum.Font.GothamBold
		resetPart.TextSize = 11
		resetPart.Text = "Reset Part"
		resetPart.BorderSizePixel = 0
		resetPart.ZIndex = 26
		resetPart.Parent = control
		local rpC = Instance.new("UICorner")
		rpC.CornerRadius = UDim.new(0, 6)
		rpC.Parent = resetPart
		ThemeMethods.bindTheme(resetPart, "BackgroundColor3", "Backgrounds.Medium")
		ThemeMethods.bindTheme(resetPart, "TextColor3", "Foregrounds.Light")

		local resetAll = Instance.new("TextButton")
		resetAll.Size = UDim2.new(0.5, -10, 0, 26)
		resetAll.Position = UDim2.new(0.5, 2, 1, -34)
		resetAll.Font = Enum.Font.GothamBold
		resetAll.TextSize = 11
		resetAll.Text = "Reset All"
		resetAll.BorderSizePixel = 0
		resetAll.ZIndex = 26
		resetAll.Parent = control
		local raC = Instance.new("UICorner")
		raC.CornerRadius = UDim.new(0, 6)
		raC.Parent = resetAll
		ThemeMethods.bindTheme(resetAll, "BackgroundColor3", "Backgrounds.Medium")
		ThemeMethods.bindTheme(resetAll, "TextColor3", "Foregrounds.Light")

		resetPart.MouseButton1Click:Connect(function()
			PlayStarlightClickSound()
			if not st.SelectedPart then
				return
			end
			previewSizes[st.SelectedPart] = { X = 1, Y = 1, Z = 1 }
			updateMannequinSize(st.SelectedPart)
			updateSliders()
			updatePartInfo()
			if type(opts.OnPreviewValueChanged) == "function" then
				pcall(opts.OnPreviewValueChanged, st.SelectedPart, "X", 1)
				pcall(opts.OnPreviewValueChanged, st.SelectedPart, "Y", 1)
				pcall(opts.OnPreviewValueChanged, st.SelectedPart, "Z", 1)
			end
		end)
		resetAll.MouseButton1Click:Connect(function()
			PlayStarlightClickSound()
			for _, pn in ipairs(r6) do
				previewSizes[pn] = { X = 1, Y = 1, Z = 1 }
				updateMannequinSize(pn)
				if type(opts.OnPreviewValueChanged) == "function" then
					pcall(opts.OnPreviewValueChanged, pn, "X", 1)
					pcall(opts.OnPreviewValueChanged, pn, "Y", 1)
					pcall(opts.OnPreviewValueChanged, pn, "Z", 1)
				end
			end
			updateSliders()
			updatePartInfo()
		end)

		local syncConns: { RBXScriptConnection } = {}
		local function syncDock()
			if not dock.Parent then
				return
			end
			local gap = typeof(opts.Gap) == "number" and opts.Gap or 8
			local w = typeof(opts.Width) == "number" and opts.Width or 420
			local shouldShow = mw.Visible and userWantsOpen
			dock.Visible = shouldShow
			if not shouldShow then
				return
			end
			local dockH = layoutFrames()
			dock.Size = UDim2.new(0, w, 0, dockH)
			dock.Position =
				UDim2.new(0, mw.AbsolutePosition.X + mw.AbsoluteSize.X + gap, 0, mw.AbsolutePosition.Y)
		end

		local function scheduleDeferredRelayout()
			task.defer(function()
				if dock.Parent then
					syncDock()
					updateCam()
				end
			end)
			local hbConn: RBXScriptConnection?
			hbConn = RunService.Heartbeat:Connect(function()
				if hbConn then
					hbConn:Disconnect()
				end
				if dock.Parent then
					syncDock()
					updateCam()
				end
			end)
		end

		table.insert(syncConns, mw:GetPropertyChangedSignal("AbsolutePosition"):Connect(syncDock))
		table.insert(syncConns, mw:GetPropertyChangedSignal("AbsoluteSize"):Connect(syncDock))
		table.insert(syncConns, mw:GetPropertyChangedSignal("Visible"):Connect(syncDock))
		table.insert(syncConns, Camera:GetPropertyChangedSignal("ViewportSize"):Connect(syncDock))

		closeBtn.MouseButton1Click:Connect(function()
			PlayStarlightClickSound()
			userWantsOpen = false
			dock.Visible = false
			if type(opts.OnClose) == "function" then
				pcall(opts.OnClose)
			end
		end)

		buildMannequin()
		syncDock()
		updateCam()
		scheduleDeferredRelayout()

		return {
			Root = dock,
			Sizes = previewSizes,
			Open = function()
				userWantsOpen = true
				buildMannequin()
				updateCam()
				syncDock()
				scheduleDeferredRelayout()
			end,
			Close = function()
				userWantsOpen = false
				dock.Visible = false
			end,
			Toggle = function()
				userWantsOpen = not userWantsOpen
				if userWantsOpen then
					buildMannequin()
					updateCam()
					syncDock()
					scheduleDeferredRelayout()
				else
					dock.Visible = false
				end
			end,
			Sync = syncDock,
			RefreshMannequin = function()
				buildMannequin()
				layoutFrames()
				updateCam()
				if userWantsOpen and mw.Visible then
					syncDock()
					scheduleDeferredRelayout()
				end
			end,
			Destroy = function()
				for _, c in ipairs(syncConns) do
					pcall(function()
						c:Disconnect()
					end)
				end
				for _, c in ipairs(st.Connections) do
					pcall(function()
						c:Disconnect()
					end)
				end
				pcall(function()
					editorLayer:Destroy()
				end)
			end,
		}
	end

 
 return Starlight.Window
end



function Starlight.FileSystem:BuildFolderTree(FileSettings)
 
 if isStudio or not isfolder then
 return "Config system unavailable."
 end
 local paths = {}
 if FileSettings.RootFolder ~= nil then
 
 if FileSettings.ThemesInRoot then
 paths = {
 Starlight.FileSystem.Folder,
 `{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}`,
 `{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}/configs`,
 `{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/themes`,
 }
 else
 paths = {
 Starlight.FileSystem.Folder,
 `{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}`,
 `{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}/{FileSettings.ConfigFolder}/configs`,
 `{Starlight.FileSystem.Folder}/{FileSettings.RootFolder}}/{FileSettings.ConfigFolder}/themes`,
 }
 end
 else
 
 paths = {
 Starlight.FileSystem.Folder,
 `{Starlight.FileSystem.Folder}/{FileSettings.ConfigFolder}`,
 `{Starlight.FileSystem.Folder}/{FileSettings.ConfigFolder}/configs`,
 `{Starlight.FileSystem.Folder}/{FileSettings.ConfigFolder}/themes`,
 }
 end

 for i, str in ipairs(paths) do
 if not isfolder(str) then
 makefolder(str)
 end
 end
end

function Starlight.FileSystem:SaveConfig(file, path)
 if isStudio or not isfile then
 return "Config system unavailable."
 end

 if not path or not file then
 return false, "Please select a config file."
 end

 local fullPath = `{path}{file}{Starlight.FileSystem.FileExtension}`

 local data = {
 objects = {},
 }

 for tsecidx, tabsection in next, Starlight.Window.TabSections do
 for tidx, tab in next, tabsection.Tabs do
 for grpidx, groupbox in next, tab.Groupboxes do
 if groupbox.ClassName and groupbox.ClassName ~= "TabBox" then
 for idx, object in next, groupbox.Elements do
 if object.IgnoreConfig then
 continue
 end

 local fullidx = `{tsecidx}.Tabs.{tidx}.Groupboxes.{grpidx}.Elements.{idx}`

 table.insert(data.objects, ConfigMethods.Save(fullidx, object.Values, object.Class))

 if
 object.Class == "Toggle" or object.Class == "Label" 
 then
 for nestedidx, nestedobject in next, object.NestedElements do
 if nestedobject.IgnoreConfig then
 continue
 end

 table.insert(
 data.objects,
 ConfigMethods.Save(`{fullidx}.NestedElements.{nestedidx}`, nestedobject.Values)
 )
 end
 end
 end
 end

 
 end
 end
 end

 local success, encoded = pcall(HttpService.JSONEncode, HttpService, data)
 if not success then
 return false, "Unable to encode into JSON data"
 end

 writefile(fullPath, encoded)
 return true
end

function Starlight.FileSystem:LoadConfig(file, path)
 if isStudio or not isfile then
 return "Config system unavailable."
 end

 if not path or not file then
 return false, "Please select a config file."
 end

 local fullPath = `{path}{file}{Starlight.FileSystem.FileExtension}`
 if not isfile(fullPath) then
 return false, "Invalid file."
 end

 local success, decoded = pcall(HttpService.JSONDecode, HttpService, readfile(fullPath))
 if not success then
 return false, "Unable to decode JSON data."
 end

 for _, object in next, decoded.objects do
 task.spawn(function()
 ConfigMethods.Load(object.idx, object.data)
 end)
 end

 return true
end

function Starlight.FileSystem:RefreshConfigList(path)
 if isStudio or not isfile then
 return "Config system unavailable."
 end

 if not isfolder(path) then
 Starlight:Notification({
 Title = "shitty executor",
 Icon = 0,
 Content = identifyexecutor() .. " is so shit bro.\n your file system is just broken 💀",
 }, "hdajdnj")
 return {}
 end

 local list = listfiles(path) or {}

 local configs = {}
 for i = 1, #list do
 local file = list[i]
 if file:sub(-#Starlight.FileSystem.FileExtension) == Starlight.FileSystem.FileExtension then
 local pos = file:find(Starlight.FileSystem.FileExtension, 1, true)
 local start = pos

 local char = file:sub(pos, pos)
 while char ~= "/" and char ~= "\\" and char ~= "" do
 pos = pos - 1
 char = file:sub(pos, pos)
 end

 if char == "/" or char == "\\" then
 local name = file:sub(pos + 1, start - 1)
 if name ~= "options" then
 table.insert(configs, name)
 end
 end
 end
 end

 return configs
end

function Starlight:LoadAutoloadConfig()
 if isStudio or not isfile then
 return "Config system unavailable."
 end

 if
 Starlight.FileSystem.AutoloadConfigPath and isfile(Starlight.FileSystem.AutoloadConfigPath .. "autoload.txt")
 then
 local name = readfile(Starlight.FileSystem.AutoloadConfigPath .. "autoload.txt")

 local success, err = Starlight.FileSystem:LoadConfig(name, Starlight.FileSystem.AutoloadConfigPath)
 if not success then
 Starlight:Notification({
 Title = "Autoloading Error",
 Icon = 6031071057,
 Content = "Failed to load autoload config: " .. err,
 })
 return
 end

 Starlight:Notification({
 Title = "Autoloaded Configuration",
 Icon = 4483362748,
 Content = string.format("Auto loaded config %q", name),
 })
 end
end

function Starlight:SetTheme(newTheme)
 local themeToCopy = newTheme
 if type(themeToCopy) == "string" then
 themeToCopy = Starlight.Themes[themeToCopy]
 end

 Starlight.CurrentTheme = deepCopy(themeToCopy)
 themeEvent:Fire()
end

function Starlight:LoadAutoloadTheme()
 if isStudio or not isfile then
 return "Config system unavailable."
 end

 if Starlight.FileSystem.AutoloadThemePath and isfile(Starlight.FileSystem.AutoloadThemePath .. "autoload.txt") then
 local name = readfile(Starlight.FileSystem.AutoloadThemePath .. "autoload.txt")

 if Themes[name] then
 Starlight:SetTheme(name)
 else
 local content =
 readfile(Starlight.FileSystem.AutoloadThemePath .. name .. Starlight.FileSystem.FileExtension)
 local success, decoded = pcall(HttpService.JSONDecode, HttpService, content)
 if not success then
 return false, "Unable to decode JSON data."
 end

 Starlight:SetTheme(decoded)
 end
 end
end



StarlightUI.Enabled = true





local enabled = true
local suppressDemo = (getgenv and getgenv().__GLASSUI_NO_DEMO) or false

if isStudio and enabled and not suppressDemo then
 

 local win = Starlight:CreateWindow({
 Name = "Window",
 Subtitle = "this is an optional subtitle",
 Icon = 92936499827985,

 LoadingEnabled = false,
 LoadingSettings = {
 Title = "Interface Suite",
 Subtitle = "Welcome",
 },

 BuildWarnings = true,
 InterfaceAdvertisingPrompts = true,
 NotifyOnCallbackError = true,

 ConfigurationSettings = {
 Enabled = false,
 RootFolder = nil,
 FolderName = nil,
 },

 DefaultSize = nil,

 KeySystem = {
 Enabled = false,
 Title = "Key System",
 Subtitle = "Enter Your Key To Use The Script",
 Note = "This Key System Only supports strings",

 SaveKey = false,
 KeyFile = "Key",

 KeyObtainLink = "",
 Discord = false,

 HttpKey = false,
 Keys = { "Key" }, 
 },

 Discord = { 
 Enabled = false,
 RememberJoins = true,
 Link = "1234",
 },
 })

 win:CreateHomeTab({
 Backdrop = 78881404248017,
 })
 local ts = win:CreateTabSection("ELEMENT SHOWCASE")
 local ts2 = win:CreateTabSection("TAB SECTION EXAMPLE")

 local t = ts:CreateTab({
 Name = "Elements",
 Columns = 2,
 Icon = NebulaIcons:GetIcon("broadcast", "Phosphor"),
 }, "hi")
 local t2 = ts2:CreateTab({
 Name = "Premium Tab",
 Columns = 1,
 Icon = NebulaIcons:GetIcon("sparkle", "Material"),
 }, "hi2")
 local t3 = ts2:CreateTab({
 Name = "Extra Tab",
 Columns = 2,
 }, "hi3")

 local g = t:CreateGroupbox({
 Name = "Groupbox Example",
 Column = 2,
 }, "g")
 local g2 = t:CreateGroupbox({
 Name = "Groupbox Example",
 Icon = NebulaIcons:GetIcon("atom", "Phosphor"),
 Style = 2,
 }, "g2")
 t2:CreateGroupbox({
 Name = "Groupbox Example",
 Icon = NebulaIcons:GetIcon("rocket", "Lucide"),
 }, "noindex")

 local x = g:CreateButton({
 Name = "Centered Button",
 Callback = function() end,
 Tooltip = "Button 2!",
 CenterContent = true,
 Style = 1,
 }, "btn2")

 local hi = g2:CreateButton({
 Name = "Button",
 Icon = NebulaIcons:GetIcon("cursor-click", "Phosphor"),
 Callback = function()
 win:PromptDialog({
 Name = "Dialog Test",
 Content = "COntent TEst",
 Icon = NebulaIcons:GetIcon("filter_list_alt"),
 Type = 1,
 Actions = {
 Primary = {
 Name = "Okay!",
 Icon = NebulaIcons:GetIcon("check", "Material"),
 Callback = function()
 win:PromptDialog({
 Name = "Dialog Input Test",
 Content = "COntent TEst",
 Type = 2,
 Actions = {
 {
 PlaceholderText = "placeholder",
 Numeric = false,
 RemoveTextAfterFocusLost = true,
 Callback = function(x)
 print(x)
 end,
 },
 {
 PlaceholderText = "numbers",
 Numeric = true,
 MaxCharacters = 5,
 RemoveTextOnFocus = false,
 Callback = function(x)
 print(x)
 end,
 },
 },
 })
 end,
 },
 {
 Name = "Cancel",
 Callback = function() end,
 },
 },
 })
 end,
 Style = 1,
 Tooltip = "Button 1!",
 }, "btn")

 g2:CreateButton({
 Name = "Flat Button",
 Icon = NebulaIcons:GetIcon("locate", "Lucide"),
 Callback = function()
 x:Lock("this is a reason")
 end,
 Tooltip = "flat Button!",
 }, "btn3")

 g2:CreateToggle({
 Name = "Toggle",
 CheckboxIcon = NebulaIcons:GetIcon("check"),
 Callback = function() end,
 Tooltip = "Hi",
 }, "tggle")
 g:CreateToggle({
 Name = "Toggle without Icon",
 Callback = function() end,
 Tooltip = "Hi",
 }, "tggle2")

 g:CreateToggle({
 Name = "Toggle - Switch Style",
 Style = 2,
 Callback = function() end,
 Tooltip = "Hi",
 }, "tggle2")

 g2:CreateSlider({
 Name = "Slider",
 Range = { -100, 100 },
 Increment = 0.5,
 Suffix = "%",
 Callback = function() end,
 }, "sldr")

 g2:CreateSlider({
 Name = "Slider",
 Range = { 0.2, 1 },
 HideMax = true,
 Tooltip = "Hi",
 CurrentValue = 0.2,
 Increment = 0.002,
 Suffix = "km/h",
 Callback = function(v)
 print(v)
 end,
 }, "sldr2")

 g:CreateInput({
 Name = "dynamic input",
 Tooltip = "Hi",
 Callback = function() end,
 }, "inpt")
 g2:CreateInput({
 Name = "numeric input",
 Numeric = true,
 PlaceholderText = "Numbers Only Hehe",
 Tooltip = "Hi",
 Callback = function() end,
 }, "nmrcinpt")

 
 
 
 
 
 g2:CreateLabel({
 Tooltip = "Hi",
 Name = "Label",
 }, "lblbnd"):AddBind({
 CurrentValue = "1",
 HoldToInteract = true,
 Tooltip = "Hi",
 Callback = function(v)
 print(v)
 end,
 }, "bnd")

 g2:CreateLabel({
 Tooltip = "Hi",
 Name = "Window Bind",
 }, "lblbnd"):AddBind({
 CurrentValue = "q",
 HoldToInteract = false,
 Tooltip = "Hi",
 WindowSetting = true,
 Callback = function() end,
 }, "wndwbnd")

 g2:CreateToggle({
 Name = "Toggle Bind",
 CurrentValue = false,
 Tooltip = "Hi",
 Style = 2,
 SyncToggleState = true,
 Callback = function(v)
 print(v)
 end,
 }, "bndprnt"):AddBind({
 CurrentValue = "return",
 Tooltip = "Hi",
 SyncToggleState = true,
 }, "bnd2")

 
 
 
 
 
 
 
 
 
 
 

 g:CreateDivider()

 local dropdown = g:CreateLabel({ Name = "Dropdown" }, "lbldrpdwn"):AddDropdown({
 Options = { "hi", "heeh", "huh" },
 Tooltip = "Hi",
 CurrentOption = nil,
 Callback = function(v)
 print(v)
 end,
 }, "drpdwn")

 local dropdown2 = g:CreateLabel({ Name = "Dropdown MultiOptions" }, "lbldrpdwn2"):AddDropdown({
 Options = { "smthhhhh veryyyyyyyyyyyy loooooooonggggggg", "heeh", "huh" },
 CurrentOption = { "wsp", "huh" },
 Tooltip = "Hi",
 MultipleOptions = true,
 Callback = function(v)
 print(v)
 end,
 }, "drpdwn2")
 dropdown2:Set({
 Options = { "noooo" },
 })

 local mix =
 g2:CreateToggle({ Name = "Dropdown On Toggle", CurrentValue = false, Callback = function() end }, "tgglemix")
 local id = mix:AddDropdown({
 Options = { "hi", "heeh", "huh" },
 CurrentOption = { "wsp", "huh" },
 Tooltip = "Hi",
 MultipleOptions = true,
 Special = 1,
 Placeholder = "Select a player!",
 Callback = function(v)
 print(v)
 end,
 }, "drpdwn3")

 mix:AddBind({
 CurrentValue = nil,
 Tooltip = "Hi",
 SyncToggleState = true,
 }, "bnd3")
 local cp = mix:AddColorPicker({
 Transparency = 0,
 CurrentValue = Color3.new(0, 1, 0.333333),
 Callback = function(c, v)
 local p = Instance.new("Part", workspace)
 p.CFrame = Player.Character.HumanoidRootPart.CFrame
 p.Color = c
 p.Transparency = v
 end,
 }, "cp")

 g:CreateLabel({
 Name = "Color Picker No Alpha",
 Icon = NebulaIcons:GetIcon("color_lens", "Material"),
 Tooltip = "Hi",
 }, "cplbl2"):AddColorPicker({
 CurrentValue = Color3.new(),
 Callback = function() end,
 }, "cp")

 g:CreateSlider({
 Name = "slider test",
 Range = { 0, 255 },
 CurrentValue = 99,
 Callback = function(v)
 cp:Set({
 CurrentValue = Color3.fromHSV(v / 255, 1, 1),
 })
 end,
 }, "sldrcp")

 g:CreateLabel({
 Name = "Label w Icon",
 Icon = NebulaIcons:GetIcon("aperture", "Lucide"),
 Tooltip = "Hi",
 }, "lbl")
 g2:CreateParagraph({
 Name = "paragraph",
 Content = "Hello!! Im A Paragraph, and i can store bunch of text",
 }, "prgrph")
 g:CreateParagraph({
 Name = "paragraph 2",
 Icon = NebulaIcons:GetIcon("filter_list_alt"),
 Content = "Hello!! Im A Paragraph, and i can store bunch of text. \nI also grow bigger or smaller depending on how much text is in my body! \nLike this, i am a much bigger paragraph than the other one! i also support multi lines ",
 }, "prgrph2")

 Starlight:Notification({
 Title = "Hi",
 Content = "Hello!! Im A Paragraph, and i can store bunch of text. \nI also grow bigger or smaller depending on how much text is in my body! \nLike this, i am a much bigger paragraph than the other one! i also support multi lines ",
 Icon = NebulaIcons:GetIcon("notifications_active", "Material"),
 })
 Starlight:Notification({
 Title = "Infinite Notification",
 Content = "same as the other guy but i cant expire cus im set to -1 duration",
 Duration = -1,
 Icon = NebulaIcons:GetIcon("bell-simple-ringing", "Phosphor-Filled"),
 })

 

 local configg = t:BuildConfigGroupbox(2)
 local themeg = t:BuildThemeGroupbox(1)

 ts2:CreateCustomTab({
 Name = "Custom Tab",
 Icon = 11963368654,
 Page = Instance.new("Frame"),
 }, "customtab")

 Starlight:LoadAutoloadConfig()
end 


return Starlight
