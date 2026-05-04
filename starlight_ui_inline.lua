
local G2L = {};

-- StarterGui.Starlight V2
G2L["1"] = Instance.new("ScreenGui");
G2L["1"]["DisplayOrder"] = 999999999;
G2L["1"]["ClipToDeviceSafeArea"] = false;
G2L["1"]["Name"] = [[Starlight V2]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.Starlight V2.Resources
G2L["2"] = Instance.new("Folder", G2L["1"]);
G2L["2"]["Name"] = [[Resources]];


-- StarterGui.Starlight V2.Resources.Elements
G2L["3"] = Instance.new("Folder", G2L["2"]);
G2L["3"]["Name"] = [[Elements]];


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate
G2L["4"] = Instance.new("ImageLabel", G2L["3"]);
G2L["4"]["ZIndex"] = 998;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["4"]["ImageTransparency"] = 0.73;
G2L["4"]["Image"] = [[rbxassetid://132687652275989]];
G2L["4"]["Size"] = UDim2.new(1, 0, 0, 120);
G2L["4"]["Visible"] = false;
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BackgroundTransparency"] = 0.25;
G2L["4"]["Rotation"] = 180;
G2L["4"]["Name"] = [[NotificationTemplate]];
G2L["4"]["Position"] = UDim2.new(0, 0, 0.87063, 0);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 9);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Icon
G2L["6"] = Instance.new("ImageLabel", G2L["4"]);
G2L["6"]["ZIndex"] = 999;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(210, 210, 210);
G2L["6"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["6"]["Image"] = [[rbxassetid://6034304908]];
G2L["6"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Rotation"] = 180;
G2L["6"]["Name"] = [[Icon]];
G2L["6"]["Position"] = UDim2.new(1, -18, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Icon.UIGradient
G2L["7"] = Instance.new("UIGradient", G2L["6"]);
G2L["7"]["Rotation"] = 45;
G2L["7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(172, 172, 172))};


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["4"]);
G2L["8"]["Transparency"] = 0.8;
G2L["8"]["Color"] = Color3.fromRGB(66, 67, 78);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Description
G2L["9"] = Instance.new("TextLabel", G2L["4"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["ZIndex"] = 999;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["TextTransparency"] = 0.35;
G2L["9"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["9"]["Size"] = UDim2.new(1, -80, 1, -50);
G2L["9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9"]["Text"] = [[This Is A Preview Of Starlight's Dynamic Notification System Entailing Estimated/Calculated Wait Times, A Sleek Design, Icons, And A Glassmorphic Look]];
G2L["9"]["Rotation"] = 180;
G2L["9"]["Name"] = [[Description]];
G2L["9"]["Position"] = UDim2.new(1, -56, 1, -32);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Description.UIGradient
G2L["a"] = Instance.new("UIGradient", G2L["9"]);
G2L["a"]["Rotation"] = 90;
G2L["a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.495, Color3.fromRGB(236, 236, 236)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(210, 210, 210))};


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Title
G2L["b"] = Instance.new("TextLabel", G2L["4"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["ZIndex"] = 999;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 15;
G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["b"]["Size"] = UDim2.new(1, -110, 0, 16);
G2L["b"]["ClipsDescendants"] = true;
G2L["b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["b"]["Text"] = [[Notification System]];
G2L["b"]["Rotation"] = 180;
G2L["b"]["Name"] = [[Title]];
G2L["b"]["Position"] = UDim2.new(1, -56, 1, -11);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Title.UIGradient
G2L["c"] = Instance.new("UIGradient", G2L["b"]);
G2L["c"]["Rotation"] = 78;
G2L["c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.450, Color3.fromRGB(241, 241, 241)),ColorSequenceKeypoint.new(0.813, Color3.fromRGB(195, 195, 195)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(242, 242, 242))};


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Time
G2L["d"] = Instance.new("TextLabel", G2L["4"]);
G2L["d"]["TextWrapped"] = true;
G2L["d"]["ZIndex"] = 999;
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["TextSize"] = 14;
G2L["d"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["d"]["TextTransparency"] = 0.5;
G2L["d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["BackgroundTransparency"] = 1;
G2L["d"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["d"]["Size"] = UDim2.new(0, 0, 0, 17);
G2L["d"]["ClipsDescendants"] = true;
G2L["d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["d"]["Text"] = [[now]];
G2L["d"]["Rotation"] = 180;
G2L["d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["d"]["Name"] = [[Time]];
G2L["d"]["Position"] = UDim2.new(0, 20, 1, -13);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Shadow
G2L["e"] = Instance.new("Frame", G2L["4"]);
G2L["e"]["ZIndex"] = 997;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e"]["Name"] = [[Shadow]];
G2L["e"]["Rotation"] = 180;
G2L["e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Shadow.antumbraShadow
G2L["f"] = Instance.new("ImageLabel", G2L["e"]);
G2L["f"]["ZIndex"] = 997;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["ImageTransparency"] = 0.94;
G2L["f"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Image"] = [[rbxassetid://3523728077]];
G2L["f"]["Size"] = UDim2.new(1.026, 70, 1.98124, 60);
G2L["f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Name"] = [[antumbraShadow]];
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Shadow.penumbraShadow
G2L["10"] = Instance.new("ImageLabel", G2L["e"]);
G2L["10"]["ZIndex"] = 997;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["10"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["10"]["ImageTransparency"] = 0.55;
G2L["10"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["Image"] = [[rbxassetid://5587865193]];
G2L["10"]["Size"] = UDim2.new(1.155, 0, 1.24, 0);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Name"] = [[penumbraShadow]];
G2L["10"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.NotificationTemplate.Shadow.umbraShadow
G2L["11"] = Instance.new("ImageLabel", G2L["e"]);
G2L["11"]["ZIndex"] = 997;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["11"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["11"]["ImageTransparency"] = 0.1;
G2L["11"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11"]["Image"] = [[rbxassetid://6014261993]];
G2L["11"]["Size"] = UDim2.new(1, 47, 1, 47);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Name"] = [[umbraShadow]];
G2L["11"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup
G2L["12"] = Instance.new("Frame", G2L["3"]);
G2L["12"]["Visible"] = false;
G2L["12"]["Active"] = true;
G2L["12"]["ZIndex"] = 198;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["12"]["Selectable"] = true;
G2L["12"]["Size"] = UDim2.new(0, 313, 0, 175);
G2L["12"]["Position"] = UDim2.new(0, 446, 0, 344);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[DropdownPopup]];


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.UIStroke
G2L["13"] = Instance.new("UIStroke", G2L["12"]);
G2L["13"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["13"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.UICorner
G2L["14"] = Instance.new("UICorner", G2L["12"]);
G2L["14"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List
G2L["15"] = Instance.new("ScrollingFrame", G2L["12"]);
G2L["15"]["Active"] = true;
G2L["15"]["ZIndex"] = 199;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["15"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
G2L["15"]["Name"] = [[List]];
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["15"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["15"]["Size"] = UDim2.new(1, 0, 0, 175);
G2L["15"]["ScrollBarImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["15"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["ScrollBarThickness"] = 2;
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.UIListLayout
G2L["16"] = Instance.new("UIListLayout", G2L["15"]);
G2L["16"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["16"]["Padding"] = UDim.new(0, 4);
G2L["16"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.UIPadding
G2L["17"] = Instance.new("UIPadding", G2L["15"]);
G2L["17"]["PaddingTop"] = UDim.new(0, 6);
G2L["17"]["PaddingRight"] = UDim.new(0, 2);
G2L["17"]["PaddingLeft"] = UDim.new(0, 2);
G2L["17"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template
G2L["18"] = Instance.new("Frame", G2L["15"]);
G2L["18"]["ZIndex"] = 199;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(18, 20, 23);
G2L["18"]["Size"] = UDim2.new(1, -7, 0, 32);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Name"] = [[template]];
G2L["18"]["LayoutOrder"] = 1;
G2L["18"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.UIPadding
G2L["1a"] = Instance.new("UIPadding", G2L["18"]);
G2L["1a"]["PaddingRight"] = UDim.new(0, 2);
G2L["1a"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.header
G2L["1b"] = Instance.new("TextLabel", G2L["18"]);
G2L["1b"]["ZIndex"] = 199;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["TextSize"] = 13;
G2L["1b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(31, 33, 38);
G2L["1b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["RichText"] = true;
G2L["1b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[Active Option]];
G2L["1b"]["LayoutOrder"] = 1;
G2L["1b"]["Name"] = [[header]];


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Indicator
G2L["1c"] = Instance.new("Frame", G2L["18"]);
G2L["1c"]["ZIndex"] = 199;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1c"]["Size"] = UDim2.new(0, 4, 0, 17);
G2L["1c"]["Position"] = UDim2.new(0, -11, 0.5, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[Indicator]];


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Indicator.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1c"]);
G2L["1d"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Indicator.AccentBrighter
G2L["1e"] = Instance.new("UIGradient", G2L["1c"]);
G2L["1e"]["Rotation"] = 89;
G2L["1e"]["Name"] = [[AccentBrighter]];
G2L["1e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Interact
G2L["1f"] = Instance.new("TextButton", G2L["18"]);
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextTransparency"] = 1;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["ZIndex"] = 199;
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1, 12, 1, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[]];
G2L["1f"]["Name"] = [[Interact]];
G2L["1f"]["Position"] = UDim2.new(0, -12, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE
G2L["20"] = Instance.new("Frame", G2L["15"]);
G2L["20"]["Active"] = true;
G2L["20"]["ZIndex"] = 199;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(18, 20, 23);
G2L["20"]["Size"] = UDim2.new(1, -7, 0, 32);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[Option_TEMPLATE]];
G2L["20"]["LayoutOrder"] = 1;
G2L["20"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);
G2L["21"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE.UIPadding
G2L["22"] = Instance.new("UIPadding", G2L["20"]);
G2L["22"]["PaddingRight"] = UDim.new(0, 2);
G2L["22"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE.header
G2L["23"] = Instance.new("TextLabel", G2L["20"]);
G2L["23"]["ZIndex"] = 199;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["TextSize"] = 13;
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(31, 33, 38);
G2L["23"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["23"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["23"]["BackgroundTransparency"] = 1;
G2L["23"]["RichText"] = true;
G2L["23"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Text"] = [[Inactive Option]];
G2L["23"]["LayoutOrder"] = 1;
G2L["23"]["Name"] = [[header]];


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE.Indicator
G2L["24"] = Instance.new("Frame", G2L["20"]);
G2L["24"]["ZIndex"] = 199;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["24"]["Size"] = UDim2.new(0, 4, 0, 0);
G2L["24"]["Position"] = UDim2.new(0, -11, 0.5, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Name"] = [[Indicator]];


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE.Indicator.UICorner
G2L["25"] = Instance.new("UICorner", G2L["24"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE.Indicator.AccentBrighter
G2L["26"] = Instance.new("UIGradient", G2L["24"]);
G2L["26"]["Rotation"] = 89;
G2L["26"]["Name"] = [[AccentBrighter]];
G2L["26"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.Option_TEMPLATE.Interact
G2L["27"] = Instance.new("TextButton", G2L["20"]);
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["TextTransparency"] = 1;
G2L["27"]["TextSize"] = 14;
G2L["27"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["27"]["ZIndex"] = 199;
G2L["27"]["BackgroundTransparency"] = 1;
G2L["27"]["Size"] = UDim2.new(1, 12, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["Text"] = [[]];
G2L["27"]["Name"] = [[Interact]];
G2L["27"]["Position"] = UDim2.new(0, -12, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template
G2L["28"] = Instance.new("Frame", G2L["15"]);
G2L["28"]["ZIndex"] = 199;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(18, 20, 23);
G2L["28"]["Size"] = UDim2.new(1, -7, 0, 32);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Name"] = [[template]];
G2L["28"]["LayoutOrder"] = 1;
G2L["28"]["BackgroundTransparency"] = 0.8;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.UICorner
G2L["29"] = Instance.new("UICorner", G2L["28"]);
G2L["29"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.UIPadding
G2L["2a"] = Instance.new("UIPadding", G2L["28"]);
G2L["2a"]["PaddingRight"] = UDim.new(0, 2);
G2L["2a"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.header
G2L["2b"] = Instance.new("TextLabel", G2L["28"]);
G2L["2b"]["ZIndex"] = 199;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["TextSize"] = 13;
G2L["2b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(31, 33, 38);
G2L["2b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["BackgroundTransparency"] = 1;
G2L["2b"]["RichText"] = true;
G2L["2b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Text"] = [[Hovering Option]];
G2L["2b"]["LayoutOrder"] = 1;
G2L["2b"]["Name"] = [[header]];


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Indicator
G2L["2c"] = Instance.new("Frame", G2L["28"]);
G2L["2c"]["ZIndex"] = 199;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2c"]["Size"] = UDim2.new(0, 4, 1, -15);
G2L["2c"]["Position"] = UDim2.new(0, -11, 0.5, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[Indicator]];
G2L["2c"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Indicator.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2c"]);
G2L["2d"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Indicator.AccentBrighter
G2L["2e"] = Instance.new("UIGradient", G2L["2c"]);
G2L["2e"]["Rotation"] = 89;
G2L["2e"]["Name"] = [[AccentBrighter]];
G2L["2e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.List.template.Interact
G2L["2f"] = Instance.new("TextButton", G2L["28"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["TextTransparency"] = 1;
G2L["2f"]["TextSize"] = 14;
G2L["2f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["ZIndex"] = 199;
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Size"] = UDim2.new(1, 12, 1, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["Text"] = [[]];
G2L["2f"]["Name"] = [[Interact]];
G2L["2f"]["Position"] = UDim2.new(0, -12, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.Background
G2L["30"] = Instance.new("Frame", G2L["12"]);
G2L["30"]["Active"] = true;
G2L["30"]["ZIndex"] = 198;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["30"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[Background]];
G2L["30"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.Background.UICorner
G2L["31"] = Instance.new("UICorner", G2L["30"]);
G2L["31"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.DropShadowHolder
G2L["32"] = Instance.new("Frame", G2L["12"]);
G2L["32"]["ZIndex"] = 0;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["32"]["Name"] = [[DropShadowHolder]];
G2L["32"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.DropShadowHolder.umbraShadow
G2L["33"] = Instance.new("ImageLabel", G2L["32"]);
G2L["33"]["ZIndex"] = 197;
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["33"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["33"]["ImageTransparency"] = 0.2;
G2L["33"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["33"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["33"]["Image"] = [[rbxassetid://6014261993]];
G2L["33"]["Size"] = UDim2.new(1, 48, 1, 48);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Name"] = [[umbraShadow]];
G2L["33"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.DropShadowHolder.penumbraShadow
G2L["34"] = Instance.new("ImageLabel", G2L["32"]);
G2L["34"]["ZIndex"] = 197;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["34"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["34"]["ImageTransparency"] = 0.6;
G2L["34"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["34"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["34"]["Image"] = [[rbxassetid://8992230677]];
G2L["34"]["Size"] = UDim2.new(1.155, 0, 1.24, 0);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Name"] = [[penumbraShadow]];
G2L["34"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.DropdownPopup.DropShadowHolder.antumbraShadow
G2L["35"] = Instance.new("ImageLabel", G2L["32"]);
G2L["35"]["ZIndex"] = 197;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["35"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["35"]["ImageTransparency"] = 0.94;
G2L["35"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["35"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["35"]["Image"] = [[rbxassetid://5587865193]];
G2L["35"]["Size"] = UDim2.new(1.055, 0, 1.34, 0);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["Name"] = [[antumbraShadow]];
G2L["35"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker
G2L["36"] = Instance.new("TextButton", G2L["3"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["AutoButtonColor"] = false;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["36"]["ZIndex"] = 198;
G2L["36"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["36"]["Size"] = UDim2.new(0, 320, 0, 245);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[]];
G2L["36"]["Name"] = [[ColorPicker]];
G2L["36"]["Visible"] = false;
G2L["36"]["Position"] = UDim2.new(0, 726, 0, 292);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.UIStroke
G2L["37"] = Instance.new("UIStroke", G2L["36"]);
G2L["37"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["37"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.UICorner
G2L["38"] = Instance.new("UICorner", G2L["36"]);
G2L["38"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Background
G2L["39"] = Instance.new("Frame", G2L["36"]);
G2L["39"]["Active"] = true;
G2L["39"]["ZIndex"] = 198;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["39"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Name"] = [[Background]];
G2L["39"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Background.UICorner
G2L["3a"] = Instance.new("UICorner", G2L["39"]);
G2L["3a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.DropShadowHolder
G2L["3b"] = Instance.new("Frame", G2L["36"]);
G2L["3b"]["ZIndex"] = 0;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3b"]["Name"] = [[DropShadowHolder]];
G2L["3b"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.DropShadowHolder.umbraShadow
G2L["3c"] = Instance.new("ImageLabel", G2L["3b"]);
G2L["3c"]["ZIndex"] = 197;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["3c"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["3c"]["ImageTransparency"] = 0.2;
G2L["3c"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["3c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3c"]["Image"] = [[rbxassetid://6014261993]];
G2L["3c"]["Size"] = UDim2.new(1.15, 0, 1.19592, 0);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Name"] = [[umbraShadow]];
G2L["3c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.DropShadowHolder.penumbraShadow
G2L["3d"] = Instance.new("ImageLabel", G2L["3b"]);
G2L["3d"]["ZIndex"] = 197;
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["3d"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["3d"]["ImageTransparency"] = 0.6;
G2L["3d"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["3d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3d"]["Image"] = [[rbxassetid://8992230677]];
G2L["3d"]["Size"] = UDim2.new(1.155, 0, 1.24, 0);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["Name"] = [[penumbraShadow]];
G2L["3d"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.DropShadowHolder.antumbraShadow
G2L["3e"] = Instance.new("ImageLabel", G2L["3b"]);
G2L["3e"]["ZIndex"] = 197;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["3e"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["3e"]["ImageTransparency"] = 0.94;
G2L["3e"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["3e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3e"]["Image"] = [[rbxassetid://5587865193]];
G2L["3e"]["Size"] = UDim2.new(1.055, 0, 1.34, 0);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["Name"] = [[antumbraShadow]];
G2L["3e"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container
G2L["3f"] = Instance.new("Frame", G2L["36"]);
G2L["3f"]["Active"] = true;
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["ClipsDescendants"] = true;
G2L["3f"]["Size"] = UDim2.new(1, 0, 1, -30);
G2L["3f"]["Position"] = UDim2.new(0, 0, 0, 30);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[Container]];
G2L["3f"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color
G2L["40"] = Instance.new("Frame", G2L["3f"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Color]];
G2L["40"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.NewColor
G2L["41"] = Instance.new("ImageLabel", G2L["40"]);
G2L["41"]["ZIndex"] = 200;
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["Image"] = [[rbxassetid://96978989117558]];
G2L["41"]["TileSize"] = UDim2.new(0, 120, 0, 120);
G2L["41"]["Size"] = UDim2.new(0, 130, 0, 24);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["BackgroundTransparency"] = 1;
G2L["41"]["Name"] = [[NewColor]];
G2L["41"]["Position"] = UDim2.new(0, 12, 0, 180);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.NewColor.UICorner
G2L["42"] = Instance.new("UICorner", G2L["41"]);
G2L["42"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.NewColor.Frame
G2L["43"] = Instance.new("Frame", G2L["41"]);
G2L["43"]["ZIndex"] = 200;
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(96, 255, 150);
G2L["43"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.NewColor.Frame.UICorner
G2L["44"] = Instance.new("UICorner", G2L["43"]);
G2L["44"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.OldColor
G2L["45"] = Instance.new("ImageButton", G2L["40"]);
G2L["45"]["Active"] = false;
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["45"]["AutoButtonColor"] = false;
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["Selectable"] = false;
G2L["45"]["ZIndex"] = 200;
G2L["45"]["Image"] = [[rbxassetid://96978989117558]];
G2L["45"]["TileSize"] = UDim2.new(0, 120, 0, 120);
G2L["45"]["Size"] = UDim2.new(0, 130, 0, 24);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Name"] = [[OldColor]];
G2L["45"]["Position"] = UDim2.new(0, 148, 0, 180);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.OldColor.UICorner
G2L["46"] = Instance.new("UICorner", G2L["45"]);
G2L["46"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.OldColor.Frame
G2L["47"] = Instance.new("Frame", G2L["45"]);
G2L["47"]["ZIndex"] = 200;
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(96, 205, 255);
G2L["47"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.OldColor.Frame.UICorner
G2L["48"] = Instance.new("UICorner", G2L["47"]);
G2L["48"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.ColorPicker
G2L["49"] = Instance.new("ImageButton", G2L["40"]);
G2L["49"]["Active"] = false;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["AutoButtonColor"] = false;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 86);
G2L["49"]["Selectable"] = false;
G2L["49"]["ZIndex"] = 200;
G2L["49"]["Image"] = [[rbxassetid://4155801252]];
G2L["49"]["Size"] = UDim2.new(0, 268, 0, 160);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Name"] = [[ColorPicker]];
G2L["49"]["Position"] = UDim2.new(0, 12, 0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.ColorPicker.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["49"]);
G2L["4a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.ColorPicker.UICorner.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.ColorPicker.Point
G2L["4c"] = Instance.new("Frame", G2L["49"]);
G2L["4c"]["ZIndex"] = 200;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4c"]["Size"] = UDim2.new(0, 5, 0, 5);
G2L["4c"]["Position"] = UDim2.new(0.62353, 0, 0, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Name"] = [[Point]];
G2L["4c"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.ColorPicker.Point.UIStroke
G2L["4d"] = Instance.new("UIStroke", G2L["4c"]);
G2L["4d"]["Color"] = Color3.fromRGB(166, 166, 166);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.ColorPicker.Point.UICorner
G2L["4e"] = Instance.new("UICorner", G2L["4c"]);
G2L["4e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider
G2L["4f"] = Instance.new("ImageButton", G2L["40"]);
G2L["4f"]["Active"] = false;
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["AutoButtonColor"] = false;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["Selectable"] = false;
G2L["4f"]["ZIndex"] = 200;
G2L["4f"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["4f"]["Size"] = UDim2.new(0, 8, 0, 190);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Name"] = [[HueSlider]];
G2L["4f"]["Position"] = UDim2.new(1, -23, 0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.UICorner
G2L["50"] = Instance.new("UICorner", G2L["4f"]);
G2L["50"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.UIGradient
G2L["51"] = Instance.new("UIGradient", G2L["4f"]);
G2L["51"]["Rotation"] = 90;
G2L["51"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 0, 0)),ColorSequenceKeypoint.new(0.100, Color3.fromRGB(255, 154, 0)),ColorSequenceKeypoint.new(0.200, Color3.fromRGB(204, 255, 0)),ColorSequenceKeypoint.new(0.300, Color3.fromRGB(51, 255, 0)),ColorSequenceKeypoint.new(0.400, Color3.fromRGB(0, 255, 103)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(0, 255, 255)),ColorSequenceKeypoint.new(0.600, Color3.fromRGB(0, 102, 255)),ColorSequenceKeypoint.new(0.700, Color3.fromRGB(51, 0, 255)),ColorSequenceKeypoint.new(0.800, Color3.fromRGB(205, 0, 255)),ColorSequenceKeypoint.new(0.900, Color3.fromRGB(255, 0, 154)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 0, 0))};


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.Value
G2L["52"] = Instance.new("Frame", G2L["4f"]);
G2L["52"]["ZIndex"] = 201;
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["52"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[Value]];
G2L["52"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.Value.Knob
G2L["53"] = Instance.new("Frame", G2L["52"]);
G2L["53"]["ZIndex"] = 201;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["53"]["Size"] = UDim2.new(0, 6, 0, 6);
G2L["53"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[Knob]];
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.Value.Knob.UIStroke
G2L["54"] = Instance.new("UIStroke", G2L["53"]);
G2L["54"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.Value.Knob.UICorner
G2L["55"] = Instance.new("UICorner", G2L["53"]);
G2L["55"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.UIPadding
G2L["56"] = Instance.new("UIPadding", G2L["4f"]);
G2L["56"]["PaddingTop"] = UDim.new(0, 4);
G2L["56"]["PaddingBottom"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.TintAdder
G2L["57"] = Instance.new("TextLabel", G2L["4f"]);
G2L["57"]["ZIndex"] = 200;
G2L["57"]["TextSize"] = 14;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["57"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["BackgroundTransparency"] = 0.92;
G2L["57"]["Size"] = UDim2.new(1, 0, 1, 8);
G2L["57"]["Text"] = [[]];
G2L["57"]["Name"] = [[TintAdder]];
G2L["57"]["Position"] = UDim2.new(0, 0, 0, -4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.HueSlider.TintAdder.UICorner
G2L["58"] = Instance.new("UICorner", G2L["57"]);
G2L["58"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider
G2L["59"] = Instance.new("ImageButton", G2L["40"]);
G2L["59"]["Active"] = false;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["AutoButtonColor"] = false;
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["Selectable"] = false;
G2L["59"]["ZIndex"] = 200;
G2L["59"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["59"]["Size"] = UDim2.new(0, 8, 0, 190);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Name"] = [[TransparencySlider]];
G2L["59"]["Position"] = UDim2.new(1, -11, 0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.UICorner
G2L["5a"] = Instance.new("UICorner", G2L["59"]);
G2L["5a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.Color
G2L["5b"] = Instance.new("Frame", G2L["59"]);
G2L["5b"]["ZIndex"] = 201;
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(96, 255, 150);
G2L["5b"]["Size"] = UDim2.new(1, 0, 1, 8);
G2L["5b"]["Position"] = UDim2.new(0, 0, 0, -4);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[Color]];


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.Color.UIGradient
G2L["5c"] = Instance.new("UIGradient", G2L["5b"]);
G2L["5c"]["Rotation"] = 270;
G2L["5c"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.Color.UICorner
G2L["5d"] = Instance.new("UICorner", G2L["5b"]);
G2L["5d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.Value
G2L["5e"] = Instance.new("Frame", G2L["59"]);
G2L["5e"]["ZIndex"] = 201;
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Name"] = [[Value]];
G2L["5e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.Value.Knob
G2L["5f"] = Instance.new("ImageLabel", G2L["5e"]);
G2L["5f"]["ZIndex"] = 201;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5f"]["Image"] = [[http://www.roblox.com/asset/?id=12266946128]];
G2L["5f"]["Size"] = UDim2.new(0, 8, 0, 8);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Name"] = [[Knob]];
G2L["5f"]["Position"] = UDim2.new(0.5, 0, 1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.Background
G2L["60"] = Instance.new("ImageLabel", G2L["59"]);
G2L["60"]["ZIndex"] = 200;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["ImageTransparency"] = 0.45;
G2L["60"]["Image"] = [[http://www.roblox.com/asset/?id=14204231522]];
G2L["60"]["TileSize"] = UDim2.new(0, 40, 0, 40);
G2L["60"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Name"] = [[Background]];


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.Background.UICorner
G2L["61"] = Instance.new("UICorner", G2L["60"]);
G2L["61"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Color.TransparencySlider.UIPadding
G2L["62"] = Instance.new("UIPadding", G2L["59"]);
G2L["62"]["PaddingTop"] = UDim.new(0, 4);
G2L["62"]["PaddingBottom"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values
G2L["63"] = Instance.new("Frame", G2L["3f"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Name"] = [[Values]];
G2L["63"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.UIListLayout
G2L["64"] = Instance.new("UIListLayout", G2L["63"]);
G2L["64"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["64"]["Padding"] = UDim.new(0, 6);
G2L["64"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["64"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.UIPadding
G2L["65"] = Instance.new("UIPadding", G2L["63"]);
G2L["65"]["PaddingTop"] = UDim.new(0, 15);
G2L["65"]["PaddingRight"] = UDim.new(0, 11);
G2L["65"]["PaddingLeft"] = UDim.new(0, 11);
G2L["65"]["PaddingBottom"] = UDim.new(0, 11);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB
G2L["66"] = Instance.new("Frame", G2L["63"]);
G2L["66"]["ZIndex"] = 200;
G2L["66"]["BorderSizePixel"] = 0;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["66"]["Name"] = [[HexRGB]];
G2L["66"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.UIListLayout
G2L["67"] = Instance.new("UIListLayout", G2L["66"]);
G2L["67"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["67"]["Padding"] = UDim.new(0, 6);
G2L["67"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red
G2L["68"] = Instance.new("Frame", G2L["66"]);
G2L["68"]["ZIndex"] = 4;
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["68"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["Name"] = [[Red]];
G2L["68"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.Header
G2L["69"] = Instance.new("TextLabel", G2L["68"]);
G2L["69"]["ZIndex"] = 200;
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextSize"] = 15;
G2L["69"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["RichText"] = true;
G2L["69"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["69"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["69"]["ClipsDescendants"] = true;
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Text"] = [[Red]];
G2L["69"]["LayoutOrder"] = -1;
G2L["69"]["Name"] = [[Header]];
G2L["69"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.Header.UIPadding
G2L["6a"] = Instance.new("UIPadding", G2L["69"]);
G2L["6a"]["PaddingLeft"] = UDim.new(0, 6);
G2L["6a"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.UIPadding
G2L["6b"] = Instance.new("UIPadding", G2L["68"]);
G2L["6b"]["PaddingRight"] = UDim.new(0, 3);
G2L["6b"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.PART_Backdrop
G2L["6c"] = Instance.new("Frame", G2L["68"]);
G2L["6c"]["Active"] = true;
G2L["6c"]["ZIndex"] = 200;
G2L["6c"]["BorderSizePixel"] = 0;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["6c"]["Selectable"] = true;
G2L["6c"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["6c"]["ClipsDescendants"] = true;
G2L["6c"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["6c"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6c"]["Name"] = [[PART_Backdrop]];
G2L["6c"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.PART_Backdrop.UIStroke
G2L["6d"] = Instance.new("UIStroke", G2L["6c"]);
G2L["6d"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["6d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.PART_Backdrop.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6c"]);
G2L["6e"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.PART_Backdrop.UIPadding
G2L["6f"] = Instance.new("UIPadding", G2L["6c"]);
G2L["6f"]["PaddingRight"] = UDim.new(0, 15);
G2L["6f"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.PART_Backdrop.UISizeConstraint
G2L["70"] = Instance.new("UISizeConstraint", G2L["6c"]);
G2L["70"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.PART_Backdrop.PART_Input
G2L["71"] = Instance.new("TextBox", G2L["6c"]);
G2L["71"]["Name"] = [[PART_Input]];
G2L["71"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["71"]["ZIndex"] = 202;
G2L["71"]["BorderSizePixel"] = 0;
G2L["71"]["TextSize"] = 14;
G2L["71"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["71"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["71"]["RichText"] = true;
G2L["71"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["71"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["71"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["71"]["ClearTextOnFocus"] = false;
G2L["71"]["ClipsDescendants"] = true;
G2L["71"]["PlaceholderText"] = [[0-255]];
G2L["71"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["71"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["71"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["71"]["Text"] = [[]];
G2L["71"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Red.PART_Backdrop.Interact
G2L["72"] = Instance.new("ImageButton", G2L["6c"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["AutoButtonColor"] = false;
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["ZIndex"] = 201;
G2L["72"]["Image"] = [[rbxassetid://128607803905805]];
G2L["72"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Name"] = [[Interact]];
G2L["72"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green
G2L["73"] = Instance.new("Frame", G2L["66"]);
G2L["73"]["ZIndex"] = 4;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Name"] = [[Green]];
G2L["73"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.Header
G2L["74"] = Instance.new("TextLabel", G2L["73"]);
G2L["74"]["ZIndex"] = 200;
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["TextSize"] = 15;
G2L["74"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["74"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["RichText"] = true;
G2L["74"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["74"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["74"]["ClipsDescendants"] = true;
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Text"] = [[Green]];
G2L["74"]["LayoutOrder"] = -1;
G2L["74"]["Name"] = [[Header]];
G2L["74"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.Header.UIPadding
G2L["75"] = Instance.new("UIPadding", G2L["74"]);
G2L["75"]["PaddingLeft"] = UDim.new(0, 6);
G2L["75"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.UIPadding
G2L["76"] = Instance.new("UIPadding", G2L["73"]);
G2L["76"]["PaddingRight"] = UDim.new(0, 3);
G2L["76"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.PART_Backdrop
G2L["77"] = Instance.new("Frame", G2L["73"]);
G2L["77"]["Active"] = true;
G2L["77"]["ZIndex"] = 200;
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["77"]["Selectable"] = true;
G2L["77"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["77"]["ClipsDescendants"] = true;
G2L["77"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["77"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Name"] = [[PART_Backdrop]];
G2L["77"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.PART_Backdrop.UIStroke
G2L["78"] = Instance.new("UIStroke", G2L["77"]);
G2L["78"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["78"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.PART_Backdrop.UICorner
G2L["79"] = Instance.new("UICorner", G2L["77"]);
G2L["79"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.PART_Backdrop.UIPadding
G2L["7a"] = Instance.new("UIPadding", G2L["77"]);
G2L["7a"]["PaddingRight"] = UDim.new(0, 15);
G2L["7a"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.PART_Backdrop.UISizeConstraint
G2L["7b"] = Instance.new("UISizeConstraint", G2L["77"]);
G2L["7b"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.PART_Backdrop.PART_Input
G2L["7c"] = Instance.new("TextBox", G2L["77"]);
G2L["7c"]["Name"] = [[PART_Input]];
G2L["7c"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["7c"]["ZIndex"] = 202;
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["TextSize"] = 14;
G2L["7c"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["7c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["7c"]["RichText"] = true;
G2L["7c"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7c"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["7c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7c"]["ClearTextOnFocus"] = false;
G2L["7c"]["ClipsDescendants"] = true;
G2L["7c"]["PlaceholderText"] = [[0-255]];
G2L["7c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Text"] = [[]];
G2L["7c"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Green.PART_Backdrop.Interact
G2L["7d"] = Instance.new("ImageButton", G2L["77"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["AutoButtonColor"] = false;
G2L["7d"]["BackgroundTransparency"] = 1;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["ZIndex"] = 201;
G2L["7d"]["Image"] = [[rbxassetid://128607803905805]];
G2L["7d"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Name"] = [[Interact]];
G2L["7d"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue
G2L["7e"] = Instance.new("Frame", G2L["66"]);
G2L["7e"]["ZIndex"] = 4;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Name"] = [[Blue]];
G2L["7e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.Header
G2L["7f"] = Instance.new("TextLabel", G2L["7e"]);
G2L["7f"]["ZIndex"] = 200;
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["TextSize"] = 15;
G2L["7f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["7f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["RichText"] = true;
G2L["7f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["7f"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["7f"]["ClipsDescendants"] = true;
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Text"] = [[Blue]];
G2L["7f"]["LayoutOrder"] = -1;
G2L["7f"]["Name"] = [[Header]];
G2L["7f"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.Header.UIPadding
G2L["80"] = Instance.new("UIPadding", G2L["7f"]);
G2L["80"]["PaddingLeft"] = UDim.new(0, 6);
G2L["80"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.UIPadding
G2L["81"] = Instance.new("UIPadding", G2L["7e"]);
G2L["81"]["PaddingRight"] = UDim.new(0, 3);
G2L["81"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.PART_Backdrop
G2L["82"] = Instance.new("Frame", G2L["7e"]);
G2L["82"]["Active"] = true;
G2L["82"]["ZIndex"] = 200;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["82"]["Selectable"] = true;
G2L["82"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["82"]["ClipsDescendants"] = true;
G2L["82"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["82"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Name"] = [[PART_Backdrop]];
G2L["82"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.PART_Backdrop.UIStroke
G2L["83"] = Instance.new("UIStroke", G2L["82"]);
G2L["83"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["83"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.PART_Backdrop.UICorner
G2L["84"] = Instance.new("UICorner", G2L["82"]);
G2L["84"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.PART_Backdrop.UIPadding
G2L["85"] = Instance.new("UIPadding", G2L["82"]);
G2L["85"]["PaddingRight"] = UDim.new(0, 15);
G2L["85"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.PART_Backdrop.UISizeConstraint
G2L["86"] = Instance.new("UISizeConstraint", G2L["82"]);
G2L["86"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.PART_Backdrop.PART_Input
G2L["87"] = Instance.new("TextBox", G2L["82"]);
G2L["87"]["Name"] = [[PART_Input]];
G2L["87"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["87"]["ZIndex"] = 202;
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["TextSize"] = 14;
G2L["87"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["87"]["RichText"] = true;
G2L["87"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["87"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["87"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["87"]["ClearTextOnFocus"] = false;
G2L["87"]["ClipsDescendants"] = true;
G2L["87"]["PlaceholderText"] = [[0-255]];
G2L["87"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["87"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Text"] = [[]];
G2L["87"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Blue.PART_Backdrop.Interact
G2L["88"] = Instance.new("ImageButton", G2L["82"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["AutoButtonColor"] = false;
G2L["88"]["BackgroundTransparency"] = 1;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["ZIndex"] = 201;
G2L["88"]["Image"] = [[rbxassetid://128607803905805]];
G2L["88"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Name"] = [[Interact]];
G2L["88"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex
G2L["89"] = Instance.new("Frame", G2L["66"]);
G2L["89"]["ZIndex"] = 4;
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Name"] = [[Hex]];
G2L["89"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.Header
G2L["8a"] = Instance.new("TextLabel", G2L["89"]);
G2L["8a"]["ZIndex"] = 200;
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextSize"] = 15;
G2L["8a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["RichText"] = true;
G2L["8a"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["8a"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["8a"]["ClipsDescendants"] = true;
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[Hex]];
G2L["8a"]["LayoutOrder"] = -1;
G2L["8a"]["Name"] = [[Header]];
G2L["8a"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.Header.UIPadding
G2L["8b"] = Instance.new("UIPadding", G2L["8a"]);
G2L["8b"]["PaddingLeft"] = UDim.new(0, 6);
G2L["8b"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.UIPadding
G2L["8c"] = Instance.new("UIPadding", G2L["89"]);
G2L["8c"]["PaddingRight"] = UDim.new(0, 3);
G2L["8c"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.PART_Backdrop
G2L["8d"] = Instance.new("Frame", G2L["89"]);
G2L["8d"]["Active"] = true;
G2L["8d"]["ZIndex"] = 200;
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["8d"]["Selectable"] = true;
G2L["8d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["8d"]["ClipsDescendants"] = true;
G2L["8d"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["8d"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Name"] = [[PART_Backdrop]];
G2L["8d"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.PART_Backdrop.UIStroke
G2L["8e"] = Instance.new("UIStroke", G2L["8d"]);
G2L["8e"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["8e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.PART_Backdrop.UICorner
G2L["8f"] = Instance.new("UICorner", G2L["8d"]);
G2L["8f"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.PART_Backdrop.UIPadding
G2L["90"] = Instance.new("UIPadding", G2L["8d"]);
G2L["90"]["PaddingRight"] = UDim.new(0, 15);
G2L["90"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.PART_Backdrop.UISizeConstraint
G2L["91"] = Instance.new("UISizeConstraint", G2L["8d"]);
G2L["91"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.PART_Backdrop.PART_Input
G2L["92"] = Instance.new("TextBox", G2L["8d"]);
G2L["92"]["Name"] = [[PART_Input]];
G2L["92"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["92"]["ZIndex"] = 202;
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["TextSize"] = 14;
G2L["92"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["92"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["92"]["RichText"] = true;
G2L["92"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["92"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["92"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["92"]["ClearTextOnFocus"] = false;
G2L["92"]["ClipsDescendants"] = true;
G2L["92"]["PlaceholderText"] = [[00000000]];
G2L["92"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["92"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Text"] = [[]];
G2L["92"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.HexRGB.Hex.PART_Backdrop.Interact
G2L["93"] = Instance.new("ImageButton", G2L["8d"]);
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["AutoButtonColor"] = false;
G2L["93"]["BackgroundTransparency"] = 1;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["ZIndex"] = 201;
G2L["93"]["Image"] = [[rbxassetid://128607803905805]];
G2L["93"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["Name"] = [[Interact]];
G2L["93"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV
G2L["94"] = Instance.new("Frame", G2L["63"]);
G2L["94"]["ZIndex"] = 200;
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Name"] = [[AlphaHSV]];
G2L["94"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.UIListLayout
G2L["95"] = Instance.new("UIListLayout", G2L["94"]);
G2L["95"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["95"]["Padding"] = UDim.new(0, 6);
G2L["95"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue
G2L["96"] = Instance.new("Frame", G2L["94"]);
G2L["96"]["ZIndex"] = 4;
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Name"] = [[Hue]];
G2L["96"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.Header
G2L["97"] = Instance.new("TextLabel", G2L["96"]);
G2L["97"]["ZIndex"] = 200;
G2L["97"]["BorderSizePixel"] = 0;
G2L["97"]["TextSize"] = 15;
G2L["97"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["97"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["97"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["BackgroundTransparency"] = 1;
G2L["97"]["RichText"] = true;
G2L["97"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["97"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["97"]["ClipsDescendants"] = true;
G2L["97"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["97"]["Text"] = [[Hue]];
G2L["97"]["LayoutOrder"] = -1;
G2L["97"]["Name"] = [[Header]];
G2L["97"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.Header.UIPadding
G2L["98"] = Instance.new("UIPadding", G2L["97"]);
G2L["98"]["PaddingLeft"] = UDim.new(0, 6);
G2L["98"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.UIPadding
G2L["99"] = Instance.new("UIPadding", G2L["96"]);
G2L["99"]["PaddingRight"] = UDim.new(0, 3);
G2L["99"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.PART_Backdrop
G2L["9a"] = Instance.new("Frame", G2L["96"]);
G2L["9a"]["Active"] = true;
G2L["9a"]["ZIndex"] = 200;
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["9a"]["Selectable"] = true;
G2L["9a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["9a"]["ClipsDescendants"] = true;
G2L["9a"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["9a"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Name"] = [[PART_Backdrop]];
G2L["9a"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.PART_Backdrop.UIStroke
G2L["9b"] = Instance.new("UIStroke", G2L["9a"]);
G2L["9b"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["9b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.PART_Backdrop.UICorner
G2L["9c"] = Instance.new("UICorner", G2L["9a"]);
G2L["9c"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.PART_Backdrop.UIPadding
G2L["9d"] = Instance.new("UIPadding", G2L["9a"]);
G2L["9d"]["PaddingRight"] = UDim.new(0, 15);
G2L["9d"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.PART_Backdrop.UISizeConstraint
G2L["9e"] = Instance.new("UISizeConstraint", G2L["9a"]);
G2L["9e"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.PART_Backdrop.PART_Input
G2L["9f"] = Instance.new("TextBox", G2L["9a"]);
G2L["9f"]["Name"] = [[PART_Input]];
G2L["9f"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["9f"]["ZIndex"] = 202;
G2L["9f"]["BorderSizePixel"] = 0;
G2L["9f"]["TextSize"] = 14;
G2L["9f"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["9f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["9f"]["RichText"] = true;
G2L["9f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["9f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9f"]["ClearTextOnFocus"] = false;
G2L["9f"]["ClipsDescendants"] = true;
G2L["9f"]["PlaceholderText"] = [[0-255]];
G2L["9f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["9f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["9f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9f"]["Text"] = [[]];
G2L["9f"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Hue.PART_Backdrop.Interact
G2L["a0"] = Instance.new("ImageButton", G2L["9a"]);
G2L["a0"]["BorderSizePixel"] = 0;
G2L["a0"]["AutoButtonColor"] = false;
G2L["a0"]["BackgroundTransparency"] = 1;
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["ZIndex"] = 201;
G2L["a0"]["Image"] = [[rbxassetid://128607803905805]];
G2L["a0"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a0"]["Name"] = [[Interact]];
G2L["a0"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation
G2L["a1"] = Instance.new("Frame", G2L["94"]);
G2L["a1"]["ZIndex"] = 4;
G2L["a1"]["BorderSizePixel"] = 0;
G2L["a1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["a1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a1"]["Name"] = [[Saturation]];
G2L["a1"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.Header
G2L["a2"] = Instance.new("TextLabel", G2L["a1"]);
G2L["a2"]["ZIndex"] = 200;
G2L["a2"]["BorderSizePixel"] = 0;
G2L["a2"]["TextSize"] = 15;
G2L["a2"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["BackgroundTransparency"] = 1;
G2L["a2"]["RichText"] = true;
G2L["a2"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["a2"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["a2"]["ClipsDescendants"] = true;
G2L["a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a2"]["Text"] = [[Sat]];
G2L["a2"]["LayoutOrder"] = -1;
G2L["a2"]["Name"] = [[Header]];
G2L["a2"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.Header.UIPadding
G2L["a3"] = Instance.new("UIPadding", G2L["a2"]);
G2L["a3"]["PaddingLeft"] = UDim.new(0, 6);
G2L["a3"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.UIPadding
G2L["a4"] = Instance.new("UIPadding", G2L["a1"]);
G2L["a4"]["PaddingRight"] = UDim.new(0, 3);
G2L["a4"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.PART_Backdrop
G2L["a5"] = Instance.new("Frame", G2L["a1"]);
G2L["a5"]["Active"] = true;
G2L["a5"]["ZIndex"] = 200;
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["a5"]["Selectable"] = true;
G2L["a5"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["a5"]["ClipsDescendants"] = true;
G2L["a5"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["a5"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a5"]["Name"] = [[PART_Backdrop]];
G2L["a5"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.PART_Backdrop.UIStroke
G2L["a6"] = Instance.new("UIStroke", G2L["a5"]);
G2L["a6"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["a6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.PART_Backdrop.UICorner
G2L["a7"] = Instance.new("UICorner", G2L["a5"]);
G2L["a7"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.PART_Backdrop.UIPadding
G2L["a8"] = Instance.new("UIPadding", G2L["a5"]);
G2L["a8"]["PaddingRight"] = UDim.new(0, 15);
G2L["a8"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.PART_Backdrop.UISizeConstraint
G2L["a9"] = Instance.new("UISizeConstraint", G2L["a5"]);
G2L["a9"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.PART_Backdrop.PART_Input
G2L["aa"] = Instance.new("TextBox", G2L["a5"]);
G2L["aa"]["Name"] = [[PART_Input]];
G2L["aa"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["aa"]["ZIndex"] = 202;
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["TextSize"] = 14;
G2L["aa"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["aa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["aa"]["RichText"] = true;
G2L["aa"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["aa"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["aa"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["aa"]["ClearTextOnFocus"] = false;
G2L["aa"]["ClipsDescendants"] = true;
G2L["aa"]["PlaceholderText"] = [[0-255]];
G2L["aa"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["aa"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Text"] = [[]];
G2L["aa"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Saturation.PART_Backdrop.Interact
G2L["ab"] = Instance.new("ImageButton", G2L["a5"]);
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["AutoButtonColor"] = false;
G2L["ab"]["BackgroundTransparency"] = 1;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["ZIndex"] = 201;
G2L["ab"]["Image"] = [[rbxassetid://128607803905805]];
G2L["ab"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Name"] = [[Interact]];
G2L["ab"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value
G2L["ac"] = Instance.new("Frame", G2L["94"]);
G2L["ac"]["ZIndex"] = 4;
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ac"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["Name"] = [[Value]];
G2L["ac"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.Header
G2L["ad"] = Instance.new("TextLabel", G2L["ac"]);
G2L["ad"]["ZIndex"] = 200;
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["TextSize"] = 15;
G2L["ad"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["ad"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["BackgroundTransparency"] = 1;
G2L["ad"]["RichText"] = true;
G2L["ad"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["ad"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["ad"]["ClipsDescendants"] = true;
G2L["ad"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ad"]["Text"] = [[Value]];
G2L["ad"]["LayoutOrder"] = -1;
G2L["ad"]["Name"] = [[Header]];
G2L["ad"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.Header.UIPadding
G2L["ae"] = Instance.new("UIPadding", G2L["ad"]);
G2L["ae"]["PaddingLeft"] = UDim.new(0, 6);
G2L["ae"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.UIPadding
G2L["af"] = Instance.new("UIPadding", G2L["ac"]);
G2L["af"]["PaddingRight"] = UDim.new(0, 3);
G2L["af"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.PART_Backdrop
G2L["b0"] = Instance.new("Frame", G2L["ac"]);
G2L["b0"]["Active"] = true;
G2L["b0"]["ZIndex"] = 200;
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["b0"]["Selectable"] = true;
G2L["b0"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["b0"]["ClipsDescendants"] = true;
G2L["b0"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["b0"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Name"] = [[PART_Backdrop]];
G2L["b0"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.PART_Backdrop.UIStroke
G2L["b1"] = Instance.new("UIStroke", G2L["b0"]);
G2L["b1"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["b1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.PART_Backdrop.UICorner
G2L["b2"] = Instance.new("UICorner", G2L["b0"]);
G2L["b2"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.PART_Backdrop.UIPadding
G2L["b3"] = Instance.new("UIPadding", G2L["b0"]);
G2L["b3"]["PaddingRight"] = UDim.new(0, 15);
G2L["b3"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.PART_Backdrop.UISizeConstraint
G2L["b4"] = Instance.new("UISizeConstraint", G2L["b0"]);
G2L["b4"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.PART_Backdrop.PART_Input
G2L["b5"] = Instance.new("TextBox", G2L["b0"]);
G2L["b5"]["Name"] = [[PART_Input]];
G2L["b5"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["b5"]["ZIndex"] = 202;
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["TextSize"] = 14;
G2L["b5"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["b5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["b5"]["RichText"] = true;
G2L["b5"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b5"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["b5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["b5"]["ClearTextOnFocus"] = false;
G2L["b5"]["ClipsDescendants"] = true;
G2L["b5"]["PlaceholderText"] = [[0-255]];
G2L["b5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Text"] = [[]];
G2L["b5"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Value.PART_Backdrop.Interact
G2L["b6"] = Instance.new("ImageButton", G2L["b0"]);
G2L["b6"]["BorderSizePixel"] = 0;
G2L["b6"]["AutoButtonColor"] = false;
G2L["b6"]["BackgroundTransparency"] = 1;
G2L["b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b6"]["ZIndex"] = 201;
G2L["b6"]["Image"] = [[rbxassetid://128607803905805]];
G2L["b6"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b6"]["Name"] = [[Interact]];
G2L["b6"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha
G2L["b7"] = Instance.new("Frame", G2L["94"]);
G2L["b7"]["ZIndex"] = 4;
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["Size"] = UDim2.new(0, 100, 0, 41);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Name"] = [[Alpha]];
G2L["b7"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.Header
G2L["b8"] = Instance.new("TextLabel", G2L["b7"]);
G2L["b8"]["ZIndex"] = 200;
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["TextSize"] = 15;
G2L["b8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["b8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["BackgroundTransparency"] = 1;
G2L["b8"]["RichText"] = true;
G2L["b8"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["b8"]["Size"] = UDim2.new(0, 55, 0, 20);
G2L["b8"]["ClipsDescendants"] = true;
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Text"] = [[Alpha]];
G2L["b8"]["LayoutOrder"] = -1;
G2L["b8"]["Name"] = [[Header]];
G2L["b8"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.Header.UIPadding
G2L["b9"] = Instance.new("UIPadding", G2L["b8"]);
G2L["b9"]["PaddingLeft"] = UDim.new(0, 6);
G2L["b9"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.UIPadding
G2L["ba"] = Instance.new("UIPadding", G2L["b7"]);
G2L["ba"]["PaddingRight"] = UDim.new(0, 3);
G2L["ba"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.PART_Backdrop
G2L["bb"] = Instance.new("Frame", G2L["b7"]);
G2L["bb"]["Active"] = true;
G2L["bb"]["ZIndex"] = 200;
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["bb"]["Selectable"] = true;
G2L["bb"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["bb"]["ClipsDescendants"] = true;
G2L["bb"]["Size"] = UDim2.new(0, 80, 0, 26);
G2L["bb"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["Name"] = [[PART_Backdrop]];
G2L["bb"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.PART_Backdrop.UIStroke
G2L["bc"] = Instance.new("UIStroke", G2L["bb"]);
G2L["bc"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["bc"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.PART_Backdrop.UICorner
G2L["bd"] = Instance.new("UICorner", G2L["bb"]);
G2L["bd"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.PART_Backdrop.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["bb"]);
G2L["be"]["PaddingRight"] = UDim.new(0, 15);
G2L["be"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.PART_Backdrop.UISizeConstraint
G2L["bf"] = Instance.new("UISizeConstraint", G2L["bb"]);
G2L["bf"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.PART_Backdrop.PART_Input
G2L["c0"] = Instance.new("TextBox", G2L["bb"]);
G2L["c0"]["Name"] = [[PART_Input]];
G2L["c0"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["c0"]["ZIndex"] = 202;
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["TextSize"] = 14;
G2L["c0"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["c0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["c0"]["RichText"] = true;
G2L["c0"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c0"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c0"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c0"]["ClearTextOnFocus"] = false;
G2L["c0"]["ClipsDescendants"] = true;
G2L["c0"]["PlaceholderText"] = [[0-255]];
G2L["c0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["c0"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["Text"] = [[]];
G2L["c0"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.Values.AlphaHSV.Alpha.PART_Backdrop.Interact
G2L["c1"] = Instance.new("ImageButton", G2L["bb"]);
G2L["c1"]["BorderSizePixel"] = 0;
G2L["c1"]["AutoButtonColor"] = false;
G2L["c1"]["BackgroundTransparency"] = 1;
G2L["c1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["ZIndex"] = 201;
G2L["c1"]["Image"] = [[rbxassetid://128607803905805]];
G2L["c1"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["c1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c1"]["Name"] = [[Interact]];
G2L["c1"]["Position"] = UDim2.new(0, -10, 0, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Container.UIPageLayout
G2L["c2"] = Instance.new("UIPageLayout", G2L["3f"]);
G2L["c2"]["EasingStyle"] = Enum.EasingStyle.Quint;
G2L["c2"]["Circular"] = true;
G2L["c2"]["GamepadInputEnabled"] = false;
G2L["c2"]["TouchInputEnabled"] = false;
G2L["c2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["c2"]["ScrollWheelInputEnabled"] = false;
G2L["c2"]["TweenTime"] = 0.2;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector
G2L["c3"] = Instance.new("Frame", G2L["36"]);
G2L["c3"]["ZIndex"] = 200;
G2L["c3"]["BorderSizePixel"] = 0;
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c3"]["Name"] = [[TabSelector]];
G2L["c3"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.UIListLayout
G2L["c4"] = Instance.new("UIListLayout", G2L["c3"]);
G2L["c4"]["Padding"] = UDim.new(0, 4);
G2L["c4"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["c4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["c4"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Color
G2L["c5"] = Instance.new("TextButton", G2L["c3"]);
G2L["c5"]["RichText"] = true;
G2L["c5"]["BorderSizePixel"] = 0;
G2L["c5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c5"]["TextSize"] = 12;
G2L["c5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c5"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c5"]["Selectable"] = false;
G2L["c5"]["ZIndex"] = 200;
G2L["c5"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["c5"]["BackgroundTransparency"] = 0.8;
G2L["c5"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c5"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["c5"]["LayoutOrder"] = -1;
G2L["c5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c5"]["Text"] = [[Color Picker]];
G2L["c5"]["Name"] = [[Color]];
G2L["c5"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Color.Accent
G2L["c6"] = Instance.new("UIGradient", G2L["c5"]);
G2L["c6"]["Name"] = [[Accent]];
G2L["c6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Color.UICorner
G2L["c7"] = Instance.new("UICorner", G2L["c5"]);
G2L["c7"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Color.UIPadding
G2L["c8"] = Instance.new("UIPadding", G2L["c5"]);
G2L["c8"]["PaddingTop"] = UDim.new(0, 1);
G2L["c8"]["PaddingRight"] = UDim.new(0, 6);
G2L["c8"]["PaddingLeft"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Values
G2L["c9"] = Instance.new("TextButton", G2L["c3"]);
G2L["c9"]["RichText"] = true;
G2L["c9"]["BorderSizePixel"] = 0;
G2L["c9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c9"]["TextSize"] = 12;
G2L["c9"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["c9"]["Selectable"] = false;
G2L["c9"]["ZIndex"] = 200;
G2L["c9"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["c9"]["BackgroundTransparency"] = 1;
G2L["c9"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["c9"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["c9"]["LayoutOrder"] = -1;
G2L["c9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c9"]["Text"] = [[Value Editor]];
G2L["c9"]["Name"] = [[Values]];
G2L["c9"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Values.Accent
G2L["ca"] = Instance.new("UIGradient", G2L["c9"]);
G2L["ca"]["Enabled"] = false;
G2L["ca"]["Name"] = [[Accent]];
G2L["ca"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Values.UICorner
G2L["cb"] = Instance.new("UICorner", G2L["c9"]);
G2L["cb"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.Values.UIPadding
G2L["cc"] = Instance.new("UIPadding", G2L["c9"]);
G2L["cc"]["PaddingTop"] = UDim.new(0, 1);
G2L["cc"]["PaddingRight"] = UDim.new(0, 6);
G2L["cc"]["PaddingLeft"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.UIPadding
G2L["cd"] = Instance.new("UIPadding", G2L["c3"]);
G2L["cd"]["PaddingRight"] = UDim.new(0, 11);
G2L["cd"]["PaddingLeft"] = UDim.new(0, 11);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.History
G2L["ce"] = Instance.new("TextButton", G2L["c3"]);
G2L["ce"]["RichText"] = true;
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ce"]["TextSize"] = 12;
G2L["ce"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ce"]["Selectable"] = false;
G2L["ce"]["ZIndex"] = 200;
G2L["ce"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["ce"]["BackgroundTransparency"] = 1;
G2L["ce"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["ce"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["ce"]["LayoutOrder"] = -1;
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Text"] = [[Color History]];
G2L["ce"]["Name"] = [[History]];
G2L["ce"]["Visible"] = false;
G2L["ce"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.History.Accent
G2L["cf"] = Instance.new("UIGradient", G2L["ce"]);
G2L["cf"]["Enabled"] = false;
G2L["cf"]["Name"] = [[Accent]];
G2L["cf"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.History.UICorner
G2L["d0"] = Instance.new("UICorner", G2L["ce"]);
G2L["d0"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.TabSelector.History.UIPadding
G2L["d1"] = Instance.new("UIPadding", G2L["ce"]);
G2L["d1"]["PaddingTop"] = UDim.new(0, 1);
G2L["d1"]["PaddingRight"] = UDim.new(0, 6);
G2L["d1"]["PaddingLeft"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Buttons
G2L["d2"] = Instance.new("Frame", G2L["36"]);
G2L["d2"]["ZIndex"] = 200;
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["d2"]["Size"] = UDim2.new(0, 60, 0, 25);
G2L["d2"]["Position"] = UDim2.new(1, -11, 0, 11);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Name"] = [[Buttons]];
G2L["d2"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Buttons.Rainbow
G2L["d3"] = Instance.new("ImageButton", G2L["d2"]);
G2L["d3"]["BorderSizePixel"] = 0;
G2L["d3"]["Visible"] = false;
G2L["d3"]["BackgroundTransparency"] = 1;
G2L["d3"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["d3"]["ImageColor3"] = Color3.fromRGB(66, 70, 78);
G2L["d3"]["Selectable"] = false;
G2L["d3"]["ZIndex"] = 201;
G2L["d3"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["d3"]["Image"] = [[rbxassetid://6031625148]];
G2L["d3"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d3"]["Name"] = [[Rainbow]];
G2L["d3"]["Position"] = UDim2.new(1, -70, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Buttons.UIListLayout
G2L["d4"] = Instance.new("UIListLayout", G2L["d2"]);
G2L["d4"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["d4"]["Padding"] = UDim.new(0, 4);
G2L["d4"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["d4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["d4"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Buttons.UIPadding
G2L["d5"] = Instance.new("UIPadding", G2L["d2"]);
G2L["d5"]["PaddingBottom"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.Resources.Elements.ColorPicker.Buttons.Link
G2L["d6"] = Instance.new("ImageButton", G2L["d2"]);
G2L["d6"]["BorderSizePixel"] = 0;
G2L["d6"]["Visible"] = false;
G2L["d6"]["BackgroundTransparency"] = 1;
G2L["d6"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["d6"]["ImageColor3"] = Color3.fromRGB(66, 70, 78);
G2L["d6"]["Selectable"] = false;
G2L["d6"]["ZIndex"] = 201;
G2L["d6"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["d6"]["Image"] = [[rbxassetid://108613279334326]];
G2L["d6"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d6"]["Name"] = [[Link]];
G2L["d6"]["Position"] = UDim2.new(1, -70, 0.5, 0);


-- StarterGui.Starlight V2.Resources.Build
G2L["d7"] = Instance.new("StringValue", G2L["2"]);
G2L["d7"]["Name"] = [[Build]];
G2L["d7"]["Value"] = [[B5B9]];


-- StarterGui.Starlight V2.Drag
G2L["d8"] = Instance.new("Frame", G2L["1"]);
G2L["d8"]["Visible"] = false;
G2L["d8"]["BorderSizePixel"] = 0;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["d8"]["Size"] = UDim2.new(0, 150, 0, 20);
G2L["d8"]["Position"] = UDim2.new(0.5, 0, 0.5, 295);
G2L["d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d8"]["Name"] = [[Drag]];
G2L["d8"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Drag.UICorner
G2L["d9"] = Instance.new("UICorner", G2L["d8"]);
G2L["d9"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.Starlight V2.Drag.DragCosmetic
G2L["da"] = Instance.new("Frame", G2L["d8"]);
G2L["da"]["BorderSizePixel"] = 0;
G2L["da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["da"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["da"]["Size"] = UDim2.new(0, 100, 0, 4);
G2L["da"]["Position"] = UDim2.new(0.5, 0, 0.3, 0);
G2L["da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["da"]["Name"] = [[DragCosmetic]];
G2L["da"]["BackgroundTransparency"] = 0.7;


-- StarterGui.Starlight V2.Drag.DragCosmetic.UICorner
G2L["db"] = Instance.new("UICorner", G2L["da"]);
G2L["db"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.Starlight V2.Drag.Interact
G2L["dc"] = Instance.new("TextButton", G2L["d8"]);
G2L["dc"]["BorderSizePixel"] = 0;
G2L["dc"]["TextTransparency"] = 1;
G2L["dc"]["TextSize"] = 14;
G2L["dc"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["dc"]["BackgroundTransparency"] = 1;
G2L["dc"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dc"]["Text"] = [[]];
G2L["dc"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.PopupOverlay
G2L["dd"] = Instance.new("Frame", G2L["1"]);
G2L["dd"]["ZIndex"] = 80;
G2L["dd"]["BorderSizePixel"] = 0;
G2L["dd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["dd"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["dd"]["Name"] = [[PopupOverlay]];
G2L["dd"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Tooltips
G2L["de"] = Instance.new("Frame", G2L["1"]);
G2L["de"]["BorderSizePixel"] = 0;
G2L["de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["de"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["de"]["Name"] = [[Tooltips]];
G2L["de"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Notifications
G2L["df"] = Instance.new("ScrollingFrame", G2L["1"]);
G2L["df"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["df"]["BorderSizePixel"] = 0;
G2L["df"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["df"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always;
G2L["df"]["Name"] = [[Notifications]];
G2L["df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["Selectable"] = false;
G2L["df"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["df"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["df"]["ClipsDescendants"] = false;
G2L["df"]["Size"] = UDim2.new(0, 300, 1, -40);
G2L["df"]["Position"] = UDim2.new(1, -20, 1, -20);
G2L["df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["df"]["ScrollBarThickness"] = 0;
G2L["df"]["Rotation"] = 180;
G2L["df"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.Notifications.UIListLayout
G2L["e0"] = Instance.new("UIListLayout", G2L["df"]);
G2L["e0"]["Padding"] = UDim.new(0, 8);
G2L["e0"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.DPIScale
G2L["e1"] = Instance.new("UIScale", G2L["1"]);
G2L["e1"]["Name"] = [[DPIScale]];


-- StarterGui.Starlight V2.MainWindow
G2L["e2"] = Instance.new("TextButton", G2L["1"]);
G2L["e2"]["BorderSizePixel"] = 0;
G2L["e2"]["TextTransparency"] = 1;
G2L["e2"]["Modal"] = true;
G2L["e2"]["AutoButtonColor"] = false;
G2L["e2"]["TextColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e2"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["e2"]["Selectable"] = false;
G2L["e2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e2"]["Size"] = UDim2.new(0, 930, 0, 560);
G2L["e2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e2"]["Text"] = [[]];
G2L["e2"]["Name"] = [[MainWindow]];
G2L["e2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.DropShadowHolder
G2L["e3"] = Instance.new("Frame", G2L["e2"]);
G2L["e3"]["ZIndex"] = 0;
G2L["e3"]["BorderSizePixel"] = 0;
G2L["e3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e3"]["Name"] = [[DropShadowHolder]];
G2L["e3"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.DropShadowHolder.umbraShadow
G2L["e4"] = Instance.new("ImageLabel", G2L["e3"]);
G2L["e4"]["ZIndex"] = -1;
G2L["e4"]["BorderSizePixel"] = 0;
G2L["e4"]["SliceCenter"] = Rect.new(46, 43, 351, 355);
G2L["e4"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["e4"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["e4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e4"]["Image"] = [[rbxassetid://76200300325831]];
G2L["e4"]["Size"] = UDim2.new(1.02688, 48, 1.04286, 48);
G2L["e4"]["BackgroundTransparency"] = 1;
G2L["e4"]["Name"] = [[umbraShadow]];
G2L["e4"]["Position"] = UDim2.new(0.49946, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.DropShadowHolder.antumbraShadow
G2L["e5"] = Instance.new("ImageLabel", G2L["e3"]);
G2L["e5"]["ZIndex"] = -1;
G2L["e5"]["BorderSizePixel"] = 0;
G2L["e5"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["e5"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["e5"]["ImageTransparency"] = 0.94;
G2L["e5"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["e5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e5"]["Image"] = [[rbxassetid://5587865193]];
G2L["e5"]["Size"] = UDim2.new(1.05392, 0, 1.34, 0);
G2L["e5"]["BackgroundTransparency"] = 1;
G2L["e5"]["Name"] = [[antumbraShadow]];
G2L["e5"]["Position"] = UDim2.new(0.50046, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.DropShadowHolder.penumbraShadow
G2L["e6"] = Instance.new("ImageLabel", G2L["e3"]);
G2L["e6"]["ZIndex"] = -1;
G2L["e6"]["BorderSizePixel"] = 0;
G2L["e6"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["e6"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["e6"]["ImageTransparency"] = 0.55;
G2L["e6"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["e6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e6"]["Image"] = [[rbxassetid://8992230677]];
G2L["e6"]["Size"] = UDim2.new(1.175, 0, 1.27, 0);
G2L["e6"]["BackgroundTransparency"] = 1;
G2L["e6"]["Name"] = [[penumbraShadow]];
G2L["e6"]["Position"] = UDim2.new(0.50154, 0, 0.4875, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar
G2L["e7"] = Instance.new("Frame", G2L["e2"]);
G2L["e7"]["ZIndex"] = 5;
G2L["e7"]["BorderSizePixel"] = 0;
G2L["e7"]["BackgroundColor3"] = Color3.fromRGB(34, 35, 39);
G2L["e7"]["Size"] = UDim2.new(0, 210, 1, 0);
G2L["e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e7"]["Name"] = [[Sidebar]];


-- StarterGui.Starlight V2.MainWindow.Sidebar.Icon
G2L["e8"] = Instance.new("ImageLabel", G2L["e7"]);
G2L["e8"]["ZIndex"] = 6;
G2L["e8"]["BorderSizePixel"] = 0;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["Image"] = [[rbxassetid://92936499827985]];
G2L["e8"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e8"]["BackgroundTransparency"] = 1;
G2L["e8"]["Name"] = [[Icon]];
G2L["e8"]["Position"] = UDim2.new(0, 11, 0, 11);


-- StarterGui.Starlight V2.MainWindow.Sidebar.DropShadowHolder
G2L["e9"] = Instance.new("Frame", G2L["e7"]);
G2L["e9"]["ZIndex"] = 0;
G2L["e9"]["BorderSizePixel"] = 0;
G2L["e9"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e9"]["Name"] = [[DropShadowHolder]];
G2L["e9"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Sidebar.DropShadowHolder.DropShadow
G2L["ea"] = Instance.new("ImageLabel", G2L["e9"]);
G2L["ea"]["ZIndex"] = 4;
G2L["ea"]["BorderSizePixel"] = 0;
G2L["ea"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["ea"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["ea"]["ImageTransparency"] = 0.79;
G2L["ea"]["ImageColor3"] = Color3.fromRGB(66, 70, 78);
G2L["ea"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["ea"]["Image"] = [[rbxassetid://6014261993]];
G2L["ea"]["Size"] = UDim2.new(1.00476, 39, 0.98436, 47);
G2L["ea"]["BackgroundTransparency"] = 1;
G2L["ea"]["Name"] = [[DropShadow]];
G2L["ea"]["Position"] = UDim2.new(0.51429, 0, 0.50937, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation
G2L["eb"] = Instance.new("ScrollingFrame", G2L["e7"]);
G2L["eb"]["ZIndex"] = 6;
G2L["eb"]["BorderSizePixel"] = 0;
G2L["eb"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["eb"]["Name"] = [[Navigation]];
G2L["eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["eb"]["Selectable"] = false;
G2L["eb"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["eb"]["Size"] = UDim2.new(1, -22, 1, -120);
G2L["eb"]["ScrollBarImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["eb"]["Position"] = UDim2.new(0, 12, 0, 60);
G2L["eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["eb"]["ScrollBarThickness"] = 2;
G2L["eb"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate
G2L["ec"] = Instance.new("Frame", G2L["eb"]);
G2L["ec"]["Visible"] = false;
G2L["ec"]["ZIndex"] = 6;
G2L["ec"]["BorderSizePixel"] = 0;
G2L["ec"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["ec"]["Size"] = UDim2.new(0, 100, 0, 0);
G2L["ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ec"]["Name"] = [[NavigationSectionTemplate]];
G2L["ec"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.Header
G2L["ed"] = Instance.new("TextLabel", G2L["ec"]);
G2L["ed"]["ZIndex"] = 6;
G2L["ed"]["BorderSizePixel"] = 0;
G2L["ed"]["TextSize"] = 12;
G2L["ed"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ed"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ed"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["ed"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["ed"]["BackgroundTransparency"] = 1;
G2L["ed"]["RichText"] = true;
G2L["ed"]["Size"] = UDim2.new(0, 200, 0, 20);
G2L["ed"]["Visible"] = false;
G2L["ed"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ed"]["Text"] = [[LOREM IPSUM]];
G2L["ed"]["LayoutOrder"] = -1;
G2L["ed"]["Name"] = [[Header]];


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.Header.UIPadding
G2L["ee"] = Instance.new("UIPadding", G2L["ed"]);
G2L["ee"]["PaddingLeft"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.UIListLayout
G2L["ef"] = Instance.new("UIListLayout", G2L["ec"]);
G2L["ef"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["ef"]["Padding"] = UDim.new(0, 3);
G2L["ef"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate
G2L["f0"] = Instance.new("Frame", G2L["ec"]);
G2L["f0"]["ZIndex"] = 6;
G2L["f0"]["BorderSizePixel"] = 0;
G2L["f0"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["f0"]["Size"] = UDim2.new(0, 160, 0, 35);
G2L["f0"]["Position"] = UDim2.new(0.13043, 0, 0.36364, 0);
G2L["f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f0"]["Name"] = [[TabButtonTemplate]];
G2L["f0"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.Header
G2L["f1"] = Instance.new("TextLabel", G2L["f0"]);
G2L["f1"]["TextWrapped"] = true;
G2L["f1"]["ZIndex"] = 6;
G2L["f1"]["BorderSizePixel"] = 0;
G2L["f1"]["TextSize"] = 15;
G2L["f1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["f1"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["f1"]["BackgroundTransparency"] = 1;
G2L["f1"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f1"]["Text"] = [[Home]];
G2L["f1"]["Name"] = [[Header]];


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.Header.UIPadding
G2L["f2"] = Instance.new("UIPadding", G2L["f1"]);
G2L["f2"]["PaddingLeft"] = UDim.new(0, 36);
G2L["f2"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.Header.AccentBrighter
G2L["f3"] = Instance.new("UIGradient", G2L["f1"]);
G2L["f3"]["Enabled"] = false;
G2L["f3"]["Name"] = [[AccentBrighter]];
G2L["f3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.Icon
G2L["f4"] = Instance.new("ImageLabel", G2L["f0"]);
G2L["f4"]["ZIndex"] = 6;
G2L["f4"]["BorderSizePixel"] = 0;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["ImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["f4"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["f4"]["Image"] = [[rbxassetid://76656741080367]];
G2L["f4"]["Size"] = UDim2.new(0, 22, 0, 22);
G2L["f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f4"]["BackgroundTransparency"] = 1;
G2L["f4"]["Name"] = [[Icon]];
G2L["f4"]["Position"] = UDim2.new(0, 8, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.Icon.AccentBrighter
G2L["f5"] = Instance.new("UIGradient", G2L["f4"]);
G2L["f5"]["Enabled"] = false;
G2L["f5"]["Rotation"] = 45;
G2L["f5"]["Name"] = [[AccentBrighter]];
G2L["f5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.Interact
G2L["f6"] = Instance.new("TextButton", G2L["f0"]);
G2L["f6"]["BorderSizePixel"] = 0;
G2L["f6"]["TextSize"] = 14;
G2L["f6"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f6"]["ZIndex"] = 100;
G2L["f6"]["BackgroundTransparency"] = 1;
G2L["f6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f6"]["Text"] = [[]];
G2L["f6"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.UICorner
G2L["f7"] = Instance.new("UICorner", G2L["f0"]);
G2L["f7"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.Accent
G2L["f8"] = Instance.new("UIGradient", G2L["f0"]);
G2L["f8"]["Enabled"] = false;
G2L["f8"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.5),NumberSequenceKeypoint.new(1.000, 0.5)};
G2L["f8"]["Name"] = [[Accent]];
G2L["f8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.dot
G2L["f9"] = Instance.new("ImageLabel", G2L["f0"]);
G2L["f9"]["ZIndex"] = 6;
G2L["f9"]["BorderSizePixel"] = 0;
G2L["f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f9"]["ImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["f9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f9"]["Image"] = [[rbxassetid://71862360860232]];
G2L["f9"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["f9"]["Visible"] = false;
G2L["f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f9"]["BackgroundTransparency"] = 1;
G2L["f9"]["Name"] = [[dot]];
G2L["f9"]["Position"] = UDim2.new(0, -3, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.dot.AccentBrighter
G2L["fa"] = Instance.new("UIGradient", G2L["f9"]);
G2L["fa"]["Enabled"] = false;
G2L["fa"]["Rotation"] = 45;
G2L["fa"]["Name"] = [[AccentBrighter]];
G2L["fa"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.TabButtonTemplate.UIPadding
G2L["fb"] = Instance.new("UIPadding", G2L["f0"]);



-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.NavigationSectionTemplate.UIPadding
G2L["fc"] = Instance.new("UIPadding", G2L["ec"]);
G2L["fc"]["PaddingLeft"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Navigation.UIListLayout
G2L["fd"] = Instance.new("UIListLayout", G2L["eb"]);
G2L["fd"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["fd"]["Padding"] = UDim.new(0, 9);
G2L["fd"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player
G2L["fe"] = Instance.new("Frame", G2L["e7"]);
G2L["fe"]["ZIndex"] = 6;
G2L["fe"]["BorderSizePixel"] = 0;
G2L["fe"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fe"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["fe"]["Size"] = UDim2.new(1, -22, 0, 40);
G2L["fe"]["Position"] = UDim2.new(0, 12, 1, -10);
G2L["fe"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["fe"]["Name"] = [[Player]];
G2L["fe"]["BackgroundTransparency"] = 1;
G2L["fe"]["SelectionGroup"] = true;


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.PlayerIcon
G2L["ff"] = Instance.new("ImageLabel", G2L["fe"]);
G2L["ff"]["Active"] = true;
G2L["ff"]["ZIndex"] = 6;
G2L["ff"]["BorderSizePixel"] = 0;
G2L["ff"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["ff"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["ff"]["Image"] = [[rbxthumb://type=AvatarHeadShot&id=4072270297&w=420&h=420]];
G2L["ff"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["ff"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ff"]["Name"] = [[PlayerIcon]];
G2L["ff"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.PlayerIcon.UICorner
G2L["100"] = Instance.new("UICorner", G2L["ff"]);
G2L["100"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.Header
G2L["101"] = Instance.new("TextLabel", G2L["fe"]);
G2L["101"]["ZIndex"] = 7;
G2L["101"]["BorderSizePixel"] = 0;
G2L["101"]["TextSize"] = 16;
G2L["101"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["101"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["101"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["101"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["101"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["101"]["BackgroundTransparency"] = 1;
G2L["101"]["RichText"] = true;
G2L["101"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["101"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["101"]["ClipsDescendants"] = true;
G2L["101"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["101"]["Text"] = [[tsuyuki_kanao]];
G2L["101"]["LayoutOrder"] = -1;
G2L["101"]["Name"] = [[Header]];
G2L["101"]["Position"] = UDim2.new(0, 0, 0.62, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.Header.Icon
G2L["102"] = Instance.new("ImageLabel", G2L["101"]);
G2L["102"]["ZIndex"] = 6;
G2L["102"]["BorderSizePixel"] = 0;
G2L["102"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["102"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["102"]["Image"] = [[http://www.roblox.com/asset/?id=6031068423]];
G2L["102"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["102"]["Visible"] = false;
G2L["102"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["102"]["BackgroundTransparency"] = 1;
G2L["102"]["Name"] = [[Icon]];
G2L["102"]["Position"] = UDim2.new(0, 92, 1, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.Header.Icon.Accent
G2L["103"] = Instance.new("UIGradient", G2L["102"]);
G2L["103"]["Enabled"] = false;
G2L["103"]["Name"] = [[Accent]];
G2L["103"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.Header.UIPadding
G2L["104"] = Instance.new("UIPadding", G2L["101"]);
G2L["104"]["PaddingLeft"] = UDim.new(0, 40);
G2L["104"]["PaddingBottom"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.subheader
G2L["105"] = Instance.new("TextLabel", G2L["fe"]);
G2L["105"]["ZIndex"] = 7;
G2L["105"]["BorderSizePixel"] = 0;
G2L["105"]["TextSize"] = 14;
G2L["105"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["105"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["105"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["105"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["105"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["105"]["BackgroundTransparency"] = 1;
G2L["105"]["RichText"] = true;
G2L["105"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["105"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["105"]["Text"] = [[NotDoxxingMyGirlfriend]];
G2L["105"]["LayoutOrder"] = -1;
G2L["105"]["Name"] = [[subheader]];
G2L["105"]["Position"] = UDim2.new(0, 0, 0.62, 0);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.subheader.UIPadding
G2L["106"] = Instance.new("UIPadding", G2L["105"]);
G2L["106"]["PaddingTop"] = UDim.new(0, -3);
G2L["106"]["PaddingLeft"] = UDim.new(0, 40);
G2L["106"]["PaddingBottom"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.Divider
G2L["107"] = Instance.new("Frame", G2L["fe"]);
G2L["107"]["Visible"] = false;
G2L["107"]["ZIndex"] = 4;
G2L["107"]["BorderSizePixel"] = 0;
G2L["107"]["BackgroundColor3"] = Color3.fromRGB(182, 199, 232);
G2L["107"]["Size"] = UDim2.new(1, -10, 0.305, 12);
G2L["107"]["Position"] = UDim2.new(0, 0, -0.305, 0);
G2L["107"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["107"]["Name"] = [[Divider]];
G2L["107"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.Divider.PART_Line
G2L["108"] = Instance.new("Frame", G2L["107"]);
G2L["108"]["ZIndex"] = 10;
G2L["108"]["BorderSizePixel"] = 0;
G2L["108"]["BackgroundColor3"] = Color3.fromRGB(118, 129, 150);
G2L["108"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["108"]["Size"] = UDim2.new(1, -10, 0, 1);
G2L["108"]["Position"] = UDim2.new(0.5, 0, 0.5, -3);
G2L["108"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["108"]["Name"] = [[PART_Line]];


-- StarterGui.Starlight V2.MainWindow.Sidebar.Player.Divider.PART_Line.UIGradient
G2L["109"] = Instance.new("UIGradient", G2L["108"]);
G2L["109"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.725),NumberSequenceKeypoint.new(0.370, 0.2),NumberSequenceKeypoint.new(0.923, 0.8625),NumberSequenceKeypoint.new(1.000, 0.7375)};


-- StarterGui.Starlight V2.MainWindow.Sidebar.Header
G2L["10a"] = Instance.new("TextLabel", G2L["e7"]);
G2L["10a"]["TextWrapped"] = true;
G2L["10a"]["ZIndex"] = 7;
G2L["10a"]["BorderSizePixel"] = 0;
G2L["10a"]["TextSize"] = 15;
G2L["10a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10a"]["TextScaled"] = true;
G2L["10a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10a"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["10a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10a"]["BackgroundTransparency"] = 1;
G2L["10a"]["RichText"] = true;
G2L["10a"]["Size"] = UDim2.new(0, 150, 0, 40);
G2L["10a"]["ClipsDescendants"] = true;
G2L["10a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10a"]["Text"] = [[Starlight]];
G2L["10a"]["LayoutOrder"] = -1;
G2L["10a"]["Name"] = [[Header]];
G2L["10a"]["Position"] = UDim2.new(0, 56, 0, 11);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Header.UIPadding
G2L["10b"] = Instance.new("UIPadding", G2L["10a"]);
G2L["10b"]["PaddingTop"] = UDim.new(0, 10);
G2L["10b"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Sidebar.Header.UITextSizeConstraint
G2L["10c"] = Instance.new("UITextSizeConstraint", G2L["10a"]);
G2L["10c"]["MaxTextSize"] = 15;


-- StarterGui.Starlight V2.MainWindow.Sidebar.UICorner
G2L["10d"] = Instance.new("UICorner", G2L["e7"]);



-- StarterGui.Starlight V2.MainWindow.Sidebar.CornerRepairs
G2L["10e"] = Instance.new("Frame", G2L["e7"]);
G2L["10e"]["ZIndex"] = 3;
G2L["10e"]["BorderSizePixel"] = 0;
G2L["10e"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["10e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10e"]["BorderColor3"] = Color3.fromRGB(251, 251, 251);
G2L["10e"]["Name"] = [[CornerRepairs]];
G2L["10e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Sidebar.CornerRepairs.1,0
G2L["10f"] = Instance.new("ImageLabel", G2L["10e"]);
G2L["10f"]["ZIndex"] = 2;
G2L["10f"]["BorderSizePixel"] = 0;
G2L["10f"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["10f"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["10f"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["10f"]["ImageColor3"] = Color3.fromRGB(34, 35, 39);
G2L["10f"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["10f"]["Image"] = [[rbxassetid://92421933997743]];
G2L["10f"]["Size"] = UDim2.new(0, 9, 0, 9);
G2L["10f"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10f"]["BackgroundTransparency"] = 1;
G2L["10f"]["Rotation"] = 180;
G2L["10f"]["Name"] = [[1,0]];
G2L["10f"]["Position"] = UDim2.new(1, 0, 0, 1);


-- StarterGui.Starlight V2.MainWindow.Sidebar.CornerRepairs.1,1
G2L["110"] = Instance.new("ImageLabel", G2L["10e"]);
G2L["110"]["ZIndex"] = 2;
G2L["110"]["BorderSizePixel"] = 0;
G2L["110"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["110"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["110"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["110"]["ImageColor3"] = Color3.fromRGB(34, 35, 39);
G2L["110"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["110"]["Image"] = [[rbxassetid://92421933997743]];
G2L["110"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["110"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["110"]["BackgroundTransparency"] = 1;
G2L["110"]["Rotation"] = 270;
G2L["110"]["Name"] = [[1,1]];
G2L["110"]["Position"] = UDim2.new(1, 1, 1, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen
G2L["111"] = Instance.new("Frame", G2L["e2"]);
G2L["111"]["Visible"] = false;
G2L["111"]["ZIndex"] = 150;
G2L["111"]["BorderSizePixel"] = 0;
G2L["111"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["111"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["111"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["111"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["111"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["111"]["BorderColor3"] = Color3.fromRGB(25, 26, 31);
G2L["111"]["Name"] = [[New Loading Screen]];


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.shadows
G2L["112"] = Instance.new("Frame", G2L["111"]);
G2L["112"]["ZIndex"] = 0;
G2L["112"]["BorderSizePixel"] = 0;
G2L["112"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["112"]["Name"] = [[shadows]];
G2L["112"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.shadows.umbraShadow
G2L["113"] = Instance.new("ImageLabel", G2L["112"]);
G2L["113"]["ZIndex"] = 100;
G2L["113"]["BorderSizePixel"] = 0;
G2L["113"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["113"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["113"]["ImageTransparency"] = 0.1;
G2L["113"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["113"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["113"]["Image"] = [[rbxassetid://6014261993]];
G2L["113"]["Size"] = UDim2.new(1, 47, 1, 47);
G2L["113"]["BackgroundTransparency"] = 1;
G2L["113"]["Name"] = [[umbraShadow]];
G2L["113"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.shadows.penumbraShadow
G2L["114"] = Instance.new("ImageLabel", G2L["112"]);
G2L["114"]["ZIndex"] = 100;
G2L["114"]["BorderSizePixel"] = 0;
G2L["114"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["114"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["114"]["ImageTransparency"] = 0.45;
G2L["114"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["114"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["114"]["Image"] = [[rbxassetid://5587865193]];
G2L["114"]["Size"] = UDim2.new(1.056, 120, 1.06154, 120);
G2L["114"]["BackgroundTransparency"] = 1;
G2L["114"]["Name"] = [[penumbraShadow]];
G2L["114"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.shadows.antumbraShadow
G2L["115"] = Instance.new("ImageLabel", G2L["112"]);
G2L["115"]["ZIndex"] = 100;
G2L["115"]["BorderSizePixel"] = 0;
G2L["115"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["115"]["ImageTransparency"] = 0.9;
G2L["115"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["115"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["115"]["Image"] = [[rbxassetid://3523728077]];
G2L["115"]["Size"] = UDim2.new(1.026, 70, 1.98124, 60);
G2L["115"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["115"]["BackgroundTransparency"] = 1;
G2L["115"]["Name"] = [[antumbraShadow]];
G2L["115"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame
G2L["116"] = Instance.new("Frame", G2L["111"]);
G2L["116"]["ZIndex"] = 152;
G2L["116"]["BorderSizePixel"] = 0;
G2L["116"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["116"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["116"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["116"]["Size"] = UDim2.new(0, 369, 0, 0);
G2L["116"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["116"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["116"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.ImageLabel
G2L["117"] = Instance.new("Frame", G2L["116"]);
G2L["117"]["Active"] = true;
G2L["117"]["ZIndex"] = 153;
G2L["117"]["BorderSizePixel"] = 0;
G2L["117"]["BackgroundColor3"] = Color3.fromRGB(253, 251, 255);
G2L["117"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["117"]["ClipsDescendants"] = true;
G2L["117"]["Size"] = UDim2.new(0, 135, 0, 135);
G2L["117"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["117"]["Name"] = [[ImageLabel]];
G2L["117"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.ImageLabel.Image
G2L["118"] = Instance.new("ImageLabel", G2L["117"]);
G2L["118"]["ZIndex"] = 154;
G2L["118"]["BorderSizePixel"] = 0;
G2L["118"]["SliceCenter"] = Rect.new(0, 0, 800, 800);
G2L["118"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["118"]["Image"] = [[rbxassetid://80990588449079]];
G2L["118"]["Size"] = UDim2.new(0, 160, 0, 160);
G2L["118"]["BackgroundTransparency"] = 1;
G2L["118"]["Name"] = [[Image]];
G2L["118"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.ImageLabel.Image.UIAspectRatioConstraint
G2L["119"] = Instance.new("UIAspectRatioConstraint", G2L["118"]);
G2L["119"]["DominantAxis"] = Enum.DominantAxis.Height;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.ImageLabel.Player
G2L["11a"] = Instance.new("ImageLabel", G2L["117"]);
G2L["11a"]["ZIndex"] = 154;
G2L["11a"]["BorderSizePixel"] = 0;
G2L["11a"]["SliceCenter"] = Rect.new(0, 0, 800, 800);
G2L["11a"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["11a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["11a"]["Image"] = [[rbxthumb://type=AvatarHeadShot&id=4072270297&w=420&h=420]];
G2L["11a"]["Name"] = [[Player]];
G2L["11a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.ImageLabel.Player.Value
G2L["11b"] = Instance.new("StringValue", G2L["11a"]);
G2L["11b"]["Value"] = [[165,165]];


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.ImageLabel.Player.UICorner
G2L["11c"] = Instance.new("UICorner", G2L["11a"]);
G2L["11c"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.ImageLabel.Player.UIAspectRatioConstraint
G2L["11d"] = Instance.new("UIAspectRatioConstraint", G2L["11a"]);
G2L["11d"]["DominantAxis"] = Enum.DominantAxis.Height;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame
G2L["11e"] = Instance.new("Frame", G2L["116"]);
G2L["11e"]["ZIndex"] = 152;
G2L["11e"]["BorderSizePixel"] = 0;
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["11e"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["11e"]["Size"] = UDim2.new(0, 250, 0, 0);
G2L["11e"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["11e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11e"]["Name"] = [[SubFrame]];
G2L["11e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame.Title
G2L["11f"] = Instance.new("TextLabel", G2L["11e"]);
G2L["11f"]["TextWrapped"] = true;
G2L["11f"]["ZIndex"] = 152;
G2L["11f"]["BorderSizePixel"] = 0;
G2L["11f"]["TextSize"] = 20;
G2L["11f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["11f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["BackgroundTransparency"] = 1;
G2L["11f"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["11f"]["Size"] = UDim2.new(0, 0, 0, 36);
G2L["11f"]["ClipsDescendants"] = true;
G2L["11f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11f"]["Text"] = [[Starlight Interface Suite]];
G2L["11f"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["11f"]["Name"] = [[Title]];
G2L["11f"]["Position"] = UDim2.new(1.472, 0, 0, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame.Title.UIPadding
G2L["120"] = Instance.new("UIPadding", G2L["11f"]);
G2L["120"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame.Title.playerName
G2L["121"] = Instance.new("TextLabel", G2L["11f"]);
G2L["121"]["TextWrapped"] = true;
G2L["121"]["ZIndex"] = 152;
G2L["121"]["BorderSizePixel"] = 0;
G2L["121"]["TextSize"] = 20;
G2L["121"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["121"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["121"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["121"]["BackgroundTransparency"] = 1;
G2L["121"]["Size"] = UDim2.new(1, 8, 1, 0);
G2L["121"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["121"]["Text"] = [[tsuyuki_kanao]];
G2L["121"]["Name"] = [[playerName]];
G2L["121"]["Position"] = UDim2.new(0, -8, -1, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame.Title.playerName.UIPadding
G2L["122"] = Instance.new("UIPadding", G2L["121"]);



-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame.Subtitle
G2L["123"] = Instance.new("TextLabel", G2L["11e"]);
G2L["123"]["TextWrapped"] = true;
G2L["123"]["ZIndex"] = 152;
G2L["123"]["BorderSizePixel"] = 0;
G2L["123"]["TextSize"] = 15;
G2L["123"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["123"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["123"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["123"]["TextColor3"] = Color3.fromRGB(205, 205, 205);
G2L["123"]["BackgroundTransparency"] = 1;
G2L["123"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["123"]["Size"] = UDim2.new(0, 0, 0, 30);
G2L["123"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["123"]["Text"] = [[Loading...]];
G2L["123"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["123"]["Name"] = [[Subtitle]];
G2L["123"]["Position"] = UDim2.new(1, 0, 1, 0);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame.Subtitle.UIPadding
G2L["124"] = Instance.new("UIPadding", G2L["123"]);
G2L["124"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.SubFrame.UIListLayout
G2L["125"] = Instance.new("UIListLayout", G2L["11e"]);
G2L["125"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["125"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["125"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Frame.UIListLayout
G2L["126"] = Instance.new("UIListLayout", G2L["116"]);
G2L["126"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["126"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Version
G2L["127"] = Instance.new("TextLabel", G2L["111"]);
G2L["127"]["TextWrapped"] = true;
G2L["127"]["ZIndex"] = 152;
G2L["127"]["BorderSizePixel"] = 0;
G2L["127"]["TextSize"] = 11;
G2L["127"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["127"]["TextTransparency"] = 0.3;
G2L["127"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["127"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["127"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Light, Enum.FontStyle.Normal);
G2L["127"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["127"]["BackgroundTransparency"] = 1;
G2L["127"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["127"]["Size"] = UDim2.new(0.37203, 0, 0.07111, 0);
G2L["127"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["127"]["Text"] = [[Prerelease Beta 3.2]];
G2L["127"]["Name"] = [[Version]];
G2L["127"]["Position"] = UDim2.new(1, -10, 1, -10);


-- StarterGui.Starlight V2.MainWindow.New Loading Screen.Version.UIPadding
G2L["128"] = Instance.new("UIPadding", G2L["127"]);



-- StarterGui.Starlight V2.MainWindow.New Loading Screen.UICorner
G2L["129"] = Instance.new("UICorner", G2L["111"]);
G2L["129"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.UIStroke
G2L["12a"] = Instance.new("UIStroke", G2L["e2"]);
G2L["12a"]["Transparency"] = 0.78;
G2L["12a"]["Thickness"] = 2;
G2L["12a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["12a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.MainWindow.UIStroke.Accent
G2L["12b"] = Instance.new("UIGradient", G2L["12a"]);
G2L["12b"]["Name"] = [[Accent]];
G2L["12b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.UICorner
G2L["12c"] = Instance.new("UICorner", G2L["e2"]);



-- StarterGui.Starlight V2.MainWindow.Content
G2L["12d"] = Instance.new("Frame", G2L["e2"]);
G2L["12d"]["ZIndex"] = 3;
G2L["12d"]["BorderSizePixel"] = 0;
G2L["12d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12d"]["Size"] = UDim2.new(1, -210, 1, 0);
G2L["12d"]["Position"] = UDim2.new(0, 210, 0, 0);
G2L["12d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12d"]["Name"] = [[Content]];
G2L["12d"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar
G2L["12e"] = Instance.new("Frame", G2L["12d"]);
G2L["12e"]["ZIndex"] = 3;
G2L["12e"]["BorderSizePixel"] = 0;
G2L["12e"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["12e"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["12e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12e"]["Name"] = [[Topbar]];


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.CornerRepairs
G2L["12f"] = Instance.new("Frame", G2L["12e"]);
G2L["12f"]["ZIndex"] = 3;
G2L["12f"]["BorderSizePixel"] = 0;
G2L["12f"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["12f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12f"]["BorderColor3"] = Color3.fromRGB(251, 251, 251);
G2L["12f"]["Name"] = [[CornerRepairs]];
G2L["12f"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.CornerRepairs.0,1
G2L["130"] = Instance.new("ImageLabel", G2L["12f"]);
G2L["130"]["ZIndex"] = 2;
G2L["130"]["BorderSizePixel"] = 0;
G2L["130"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["130"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["130"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["130"]["ImageColor3"] = Color3.fromRGB(28, 30, 34);
G2L["130"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["130"]["Image"] = [[rbxassetid://92421933997743]];
G2L["130"]["Size"] = UDim2.new(0, 9, 0, 9);
G2L["130"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["130"]["BackgroundTransparency"] = 1;
G2L["130"]["Name"] = [[0,1]];
G2L["130"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.CornerRepairs.0,0
G2L["131"] = Instance.new("ImageLabel", G2L["12f"]);
G2L["131"]["ZIndex"] = 2;
G2L["131"]["BorderSizePixel"] = 0;
G2L["131"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["131"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["131"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["131"]["ImageColor3"] = Color3.fromRGB(28, 30, 34);
G2L["131"]["Image"] = [[rbxassetid://92421933997743]];
G2L["131"]["Size"] = UDim2.new(0, 9, 0, 9);
G2L["131"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["131"]["BackgroundTransparency"] = 1;
G2L["131"]["Rotation"] = 90;
G2L["131"]["Name"] = [[0,0]];
G2L["131"]["Position"] = UDim2.new(0, 0, 0, 1);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.CornerRepairs.1,1
G2L["132"] = Instance.new("ImageLabel", G2L["12f"]);
G2L["132"]["ZIndex"] = 2;
G2L["132"]["BorderSizePixel"] = 0;
G2L["132"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["132"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["132"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["132"]["ImageColor3"] = Color3.fromRGB(28, 30, 34);
G2L["132"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["132"]["Image"] = [[rbxassetid://92421933997743]];
G2L["132"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["132"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["132"]["BackgroundTransparency"] = 1;
G2L["132"]["Rotation"] = 270;
G2L["132"]["Name"] = [[1,1]];
G2L["132"]["Position"] = UDim2.new(1, 0, 1, 1);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.NotificationCenterIcon
G2L["133"] = Instance.new("ImageButton", G2L["12e"]);
G2L["133"]["BorderSizePixel"] = 0;
G2L["133"]["BackgroundTransparency"] = 1;
G2L["133"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["133"]["ImageColor3"] = Color3.fromRGB(66, 70, 78);
G2L["133"]["Selectable"] = false;
G2L["133"]["ZIndex"] = 6;
G2L["133"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["133"]["Image"] = [[http://www.roblox.com/asset/?id=6034304908]];
G2L["133"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["133"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["133"]["Name"] = [[NotificationCenterIcon]];
G2L["133"]["Position"] = UDim2.new(1, -70, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Search
G2L["134"] = Instance.new("ImageButton", G2L["12e"]);
G2L["134"]["BorderSizePixel"] = 0;
G2L["134"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["134"]["BackgroundTransparency"] = 1;
G2L["134"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["ImageColor3"] = Color3.fromRGB(66, 70, 78);
G2L["134"]["ZIndex"] = 3;
G2L["134"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["134"]["Image"] = [[rbxassetid://8445471332]];
G2L["134"]["ImageRectSize"] = Vector2.new(96, 96);
G2L["134"]["Size"] = UDim2.new(0, 24, 0, 24);
G2L["134"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["134"]["Name"] = [[Search]];
G2L["134"]["ImageRectOffset"] = Vector2.new(204, 104);
G2L["134"]["Position"] = UDim2.new(1, -98, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Headers
G2L["135"] = Instance.new("Folder", G2L["12e"]);
G2L["135"]["Name"] = [[Headers]];


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Headers.UIListLayout
G2L["136"] = Instance.new("UIListLayout", G2L["135"]);
G2L["136"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["136"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["136"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Headers.Subheader
G2L["137"] = Instance.new("TextLabel", G2L["135"]);
G2L["137"]["ZIndex"] = 7;
G2L["137"]["BorderSizePixel"] = 0;
G2L["137"]["TextSize"] = 12;
G2L["137"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["137"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["137"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["137"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["137"]["BackgroundTransparency"] = 1;
G2L["137"]["RichText"] = true;
G2L["137"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["137"]["Size"] = UDim2.new(0.253, 0, 1, 0);
G2L["137"]["ClipsDescendants"] = true;
G2L["137"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["137"]["Text"] = [[Prerelease Beta 4]];
G2L["137"]["LayoutOrder"] = -1;
G2L["137"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["137"]["Name"] = [[Subheader]];
G2L["137"]["Position"] = UDim2.new(0, 0, 0.695, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Headers.Subheader.UIPadding
G2L["138"] = Instance.new("UIPadding", G2L["137"]);
G2L["138"]["PaddingLeft"] = UDim.new(0, 14);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls
G2L["139"] = Instance.new("Frame", G2L["12e"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["139"]["ClipsDescendants"] = true;
G2L["139"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["139"]["Size"] = UDim2.new(0, 0, 0, 12);
G2L["139"]["Position"] = UDim2.new(1, -10, 0.5, 0);
G2L["139"]["Name"] = [[Controls]];
G2L["139"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Maximize
G2L["13a"] = Instance.new("TextButton", G2L["139"]);
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(66, 70, 78);
G2L["13a"]["Selectable"] = false;
G2L["13a"]["ZIndex"] = 3;
G2L["13a"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["13a"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["13a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13a"]["Text"] = [[]];
G2L["13a"]["Name"] = [[Maximize]];
G2L["13a"]["Position"] = UDim2.new(1, -48, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Maximize.Fill
G2L["13b"] = Instance.new("Frame", G2L["13a"]);
G2L["13b"]["ZIndex"] = 3;
G2L["13b"]["BorderSizePixel"] = 0;
G2L["13b"]["BackgroundColor3"] = Color3.fromRGB(82, 201, 106);
G2L["13b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13b"]["ClipsDescendants"] = true;
G2L["13b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["13b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["13b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13b"]["Name"] = [[Fill]];
G2L["13b"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Maximize.Fill.Icon
G2L["13c"] = Instance.new("ImageLabel", G2L["13b"]);
G2L["13c"]["ZIndex"] = 3;
G2L["13c"]["BorderSizePixel"] = 0;
G2L["13c"]["SliceCenter"] = Rect.new(0, 0, 64, 64);
G2L["13c"]["SliceScale"] = 0.5;
G2L["13c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["ImageColor3"] = Color3.fromRGB(51, 125, 66);
G2L["13c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13c"]["Image"] = [[rbxassetid://114684871091583]];
G2L["13c"]["TileSize"] = UDim2.new(0, 6, 0, 6);
G2L["13c"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["13c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13c"]["BackgroundTransparency"] = 1;
G2L["13c"]["Name"] = [[Icon]];
G2L["13c"]["Position"] = UDim2.new(0.5, 0, 1.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Maximize.Fill.UICorner
G2L["13d"] = Instance.new("UICorner", G2L["13b"]);
G2L["13d"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Maximize.Value
G2L["13e"] = Instance.new("Color3Value", G2L["13a"]);
G2L["13e"]["Value"] = Color3.fromRGB(82, 201, 106);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Maximize.UICorner
G2L["13f"] = Instance.new("UICorner", G2L["13a"]);
G2L["13f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Minimize
G2L["140"] = Instance.new("TextButton", G2L["139"]);
G2L["140"]["BorderSizePixel"] = 0;
G2L["140"]["BackgroundColor3"] = Color3.fromRGB(66, 70, 78);
G2L["140"]["Selectable"] = false;
G2L["140"]["ZIndex"] = 3;
G2L["140"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["140"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["140"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["140"]["Text"] = [[]];
G2L["140"]["Name"] = [[Minimize]];
G2L["140"]["Position"] = UDim2.new(1, -29, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Minimize.Fill
G2L["141"] = Instance.new("Frame", G2L["140"]);
G2L["141"]["ZIndex"] = 3;
G2L["141"]["BorderSizePixel"] = 0;
G2L["141"]["BackgroundColor3"] = Color3.fromRGB(255, 191, 49);
G2L["141"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["141"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["141"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["141"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["141"]["Name"] = [[Fill]];
G2L["141"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Minimize.Fill.Icon
G2L["142"] = Instance.new("ImageLabel", G2L["141"]);
G2L["142"]["ZIndex"] = 3;
G2L["142"]["BorderSizePixel"] = 0;
G2L["142"]["SliceCenter"] = Rect.new(0, 0, 77, 11);
G2L["142"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["142"]["ImageColor3"] = Color3.fromRGB(141, 105, 27);
G2L["142"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["142"]["Image"] = [[rbxassetid://123097456061373]];
G2L["142"]["TileSize"] = UDim2.new(0, 6, 0, 6);
G2L["142"]["Size"] = UDim2.new(0.6, 0, 0.5, 0);
G2L["142"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["142"]["BackgroundTransparency"] = 1;
G2L["142"]["Name"] = [[Icon]];
G2L["142"]["Position"] = UDim2.new(0.5, 0, 1.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Minimize.Fill.UICorner
G2L["143"] = Instance.new("UICorner", G2L["141"]);
G2L["143"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Minimize.Value
G2L["144"] = Instance.new("Color3Value", G2L["140"]);
G2L["144"]["Value"] = Color3.fromRGB(255, 191, 49);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Minimize.UICorner
G2L["145"] = Instance.new("UICorner", G2L["140"]);
G2L["145"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Close
G2L["146"] = Instance.new("TextButton", G2L["139"]);
G2L["146"]["BorderSizePixel"] = 0;
G2L["146"]["BackgroundColor3"] = Color3.fromRGB(66, 70, 78);
G2L["146"]["Selectable"] = false;
G2L["146"]["ZIndex"] = 3;
G2L["146"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["146"]["Size"] = UDim2.new(0, 12, 0, 12);
G2L["146"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["146"]["Text"] = [[]];
G2L["146"]["Name"] = [[Close]];
G2L["146"]["Position"] = UDim2.new(1, -10, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Close.Fill
G2L["147"] = Instance.new("Frame", G2L["146"]);
G2L["147"]["ZIndex"] = 3;
G2L["147"]["BorderSizePixel"] = 0;
G2L["147"]["BackgroundColor3"] = Color3.fromRGB(238, 78, 70);
G2L["147"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["147"]["ClipsDescendants"] = true;
G2L["147"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["147"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["147"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["147"]["Name"] = [[Fill]];
G2L["147"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Close.Fill.Icon
G2L["148"] = Instance.new("ImageLabel", G2L["147"]);
G2L["148"]["ZIndex"] = 3;
G2L["148"]["BorderSizePixel"] = 0;
G2L["148"]["SliceCenter"] = Rect.new(0, 0, 64, 64);
G2L["148"]["SliceScale"] = 0.5;
G2L["148"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["ImageColor3"] = Color3.fromRGB(133, 42, 39);
G2L["148"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["148"]["Image"] = [[rbxassetid://16423157073]];
G2L["148"]["TileSize"] = UDim2.new(0, 6, 0, 6);
G2L["148"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["148"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["148"]["BackgroundTransparency"] = 1;
G2L["148"]["Name"] = [[Icon]];
G2L["148"]["Position"] = UDim2.new(0.5, 0, 1.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Close.Fill.UICorner
G2L["149"] = Instance.new("UICorner", G2L["147"]);
G2L["149"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.Close.UICorner
G2L["14a"] = Instance.new("UICorner", G2L["146"]);
G2L["14a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.Controls.UIListLayout
G2L["14b"] = Instance.new("UIListLayout", G2L["139"]);
G2L["14b"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["14b"]["Padding"] = UDim.new(0, 6);
G2L["14b"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["14b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["14b"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.Topbar.UICorner
G2L["14c"] = Instance.new("UICorner", G2L["12e"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain
G2L["14d"] = Instance.new("Frame", G2L["12d"]);
G2L["14d"]["ZIndex"] = 3;
G2L["14d"]["BorderSizePixel"] = 0;
G2L["14d"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["14d"]["ClipsDescendants"] = true;
G2L["14d"]["Size"] = UDim2.new(1, 0, 1, -40);
G2L["14d"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["14d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14d"]["Name"] = [[ContentMain]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.UICorner
G2L["14e"] = Instance.new("UICorner", G2L["14d"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements
G2L["14f"] = Instance.new("Frame", G2L["14d"]);
G2L["14f"]["ZIndex"] = 3;
G2L["14f"]["BorderSizePixel"] = 0;
G2L["14f"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["14f"]["ClipsDescendants"] = true;
G2L["14f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["14f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14f"]["Name"] = [[Elements]];
G2L["14f"]["BackgroundTransparency"] = 1;
G2L["14f"]["SelectionGroup"] = true;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.UIPageLayout
G2L["150"] = Instance.new("UIPageLayout", G2L["14f"]);
G2L["150"]["EasingStyle"] = Enum.EasingStyle.Quint;
G2L["150"]["Circular"] = true;
G2L["150"]["GamepadInputEnabled"] = false;
G2L["150"]["FillDirection"] = Enum.FillDirection.Vertical;
G2L["150"]["TouchInputEnabled"] = false;
G2L["150"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["150"]["ScrollWheelInputEnabled"] = false;
G2L["150"]["TweenTime"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.UIPadding
G2L["151"] = Instance.new("UIPadding", G2L["14f"]);
G2L["151"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE
G2L["152"] = Instance.new("ScrollingFrame", G2L["14f"]);
G2L["152"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["152"]["ZIndex"] = 11;
G2L["152"]["BorderSizePixel"] = 0;
G2L["152"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["152"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
G2L["152"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["152"]["ScrollingEnabled"] = false;
G2L["152"]["Name"] = [[Tab_TEMPLATE]];
G2L["152"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["152"]["Selectable"] = false;
G2L["152"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["152"]["Size"] = UDim2.new(1, -10, 1, 0);
G2L["152"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["152"]["ScrollBarThickness"] = 4;
G2L["152"]["LayoutOrder"] = 9999999;
G2L["152"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate
G2L["153"] = Instance.new("ScrollingFrame", G2L["152"]);
G2L["153"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["153"]["ZIndex"] = 3;
G2L["153"]["BorderSizePixel"] = 0;
G2L["153"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["153"]["SelectionOrder"] = 2;
G2L["153"]["Name"] = [[ScrollingCollumnTemplate]];
G2L["153"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["153"]["Selectable"] = false;
G2L["153"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["153"]["Size"] = UDim2.new(0.5, 0, 1, -10);
G2L["153"]["Position"] = UDim2.new(0, 10, 0, 10);
G2L["153"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["153"]["ScrollBarThickness"] = 0;
G2L["153"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.UISizeConstraint
G2L["154"] = Instance.new("UISizeConstraint", G2L["153"]);
G2L["154"]["MinSize"] = Vector2.new(300, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.UIListLayout
G2L["155"] = Instance.new("UIListLayout", G2L["153"]);
G2L["155"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["155"]["Padding"] = UDim.new(0, 8);
G2L["155"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1
G2L["156"] = Instance.new("Frame", G2L["153"]);
G2L["156"]["ZIndex"] = 4;
G2L["156"]["BorderSizePixel"] = 0;
G2L["156"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["156"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["156"]["Size"] = UDim2.new(0, 0, 0, 40);
G2L["156"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["156"]["Name"] = [[Groupbox_Style1]];
G2L["156"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Backdrop
G2L["157"] = Instance.new("Frame", G2L["156"]);
G2L["157"]["ZIndex"] = 3;
G2L["157"]["BorderSizePixel"] = 0;
G2L["157"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["157"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["157"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["157"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["157"]["Name"] = [[PART_Backdrop]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Backdrop.UICorner
G2L["158"] = Instance.new("UICorner", G2L["157"]);
G2L["158"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Backdrop.UIStroke
G2L["159"] = Instance.new("UIStroke", G2L["157"]);
G2L["159"]["Color"] = Color3.fromRGB(18, 20, 23);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Backdrop.Inner
G2L["15a"] = Instance.new("Frame", G2L["157"]);
G2L["15a"]["ZIndex"] = 3;
G2L["15a"]["BorderSizePixel"] = 0;
G2L["15a"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["15a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["15a"]["Size"] = UDim2.new(1, -2, 1, -2);
G2L["15a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["15a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15a"]["Name"] = [[Inner]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Backdrop.Inner.UICorner
G2L["15b"] = Instance.new("UICorner", G2L["15a"]);
G2L["15b"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content
G2L["15c"] = Instance.new("Frame", G2L["156"]);
G2L["15c"]["ZIndex"] = 4;
G2L["15c"]["BorderSizePixel"] = 0;
G2L["15c"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["15c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["15c"]["Size"] = UDim2.new(1, 0, 0, 16);
G2L["15c"]["Position"] = UDim2.new(0, 0, 0, 36);
G2L["15c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15c"]["Name"] = [[PART_Content]];
G2L["15c"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.UIPadding
G2L["15d"] = Instance.new("UIPadding", G2L["15c"]);
G2L["15d"]["PaddingRight"] = UDim.new(0, 5);
G2L["15d"]["PaddingLeft"] = UDim.new(0, 5);
G2L["15d"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.UIListLayout
G2L["15e"] = Instance.new("UIListLayout", G2L["15c"]);
G2L["15e"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["15e"]["Padding"] = UDim.new(0, 5);
G2L["15e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.UICorner
G2L["15f"] = Instance.new("UICorner", G2L["15c"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1
G2L["160"] = Instance.new("Frame", G2L["15c"]);
G2L["160"]["ZIndex"] = 4;
G2L["160"]["BorderSizePixel"] = 0;
G2L["160"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["160"]["Size"] = UDim2.new(0, 100, 0, 36);
G2L["160"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["160"]["Name"] = [[Button_TEMPLATE_Style1]];
G2L["160"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop
G2L["161"] = Instance.new("Frame", G2L["160"]);
G2L["161"]["ZIndex"] = 5;
G2L["161"]["BorderSizePixel"] = 0;
G2L["161"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["161"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["161"]["Size"] = UDim2.new(1, 0, 1, -2);
G2L["161"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["161"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["161"]["Name"] = [[PART_Backdrop]];
G2L["161"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.DropShadowHolder
G2L["162"] = Instance.new("Frame", G2L["161"]);
G2L["162"]["ZIndex"] = 0;
G2L["162"]["BorderSizePixel"] = 0;
G2L["162"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["162"]["Name"] = [[DropShadowHolder]];
G2L["162"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.DropShadowHolder.DropShadow
G2L["163"] = Instance.new("ImageLabel", G2L["162"]);
G2L["163"]["ZIndex"] = 4;
G2L["163"]["BorderSizePixel"] = 0;
G2L["163"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["163"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["163"]["ImageTransparency"] = 1;
G2L["163"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["163"]["Image"] = [[rbxassetid://6014261993]];
G2L["163"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["163"]["BackgroundTransparency"] = 1;
G2L["163"]["Name"] = [[DropShadow]];
G2L["163"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.DropShadowHolder.DropShadow.Accent
G2L["164"] = Instance.new("UIGradient", G2L["163"]);
G2L["164"]["Name"] = [[Accent]];
G2L["164"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.PART_BackdropHover
G2L["165"] = Instance.new("Frame", G2L["161"]);
G2L["165"]["ZIndex"] = 5;
G2L["165"]["BorderSizePixel"] = 0;
G2L["165"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["165"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["165"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["165"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["165"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["165"]["Name"] = [[PART_BackdropHover]];
G2L["165"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.PART_BackdropHover.AccentBrighter
G2L["166"] = Instance.new("UIGradient", G2L["165"]);
G2L["166"]["Name"] = [[AccentBrighter]];
G2L["166"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.PART_BackdropHover.UICorner
G2L["167"] = Instance.new("UICorner", G2L["165"]);
G2L["167"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Header
G2L["168"] = Instance.new("Frame", G2L["161"]);
G2L["168"]["ZIndex"] = 5;
G2L["168"]["BorderSizePixel"] = 0;
G2L["168"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["168"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["168"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["168"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["168"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["168"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["168"]["Name"] = [[Header]];
G2L["168"]["LayoutOrder"] = -1;
G2L["168"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Header.Icon
G2L["169"] = Instance.new("ImageLabel", G2L["168"]);
G2L["169"]["ZIndex"] = 6;
G2L["169"]["BorderSizePixel"] = 0;
G2L["169"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["169"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["169"]["Image"] = [[rbxassetid://126370365848250]];
G2L["169"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["169"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["169"]["BackgroundTransparency"] = 1;
G2L["169"]["Name"] = [[Icon]];
G2L["169"]["Position"] = UDim2.new(0, -25, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Header.Icon.Accent
G2L["16a"] = Instance.new("UIGradient", G2L["169"]);
G2L["16a"]["Enabled"] = false;
G2L["16a"]["Name"] = [[Accent]];
G2L["16a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Header.Header
G2L["16b"] = Instance.new("TextLabel", G2L["168"]);
G2L["16b"]["ZIndex"] = 5;
G2L["16b"]["BorderSizePixel"] = 0;
G2L["16b"]["TextSize"] = 14;
G2L["16b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal);
G2L["16b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16b"]["BackgroundTransparency"] = 1;
G2L["16b"]["RichText"] = true;
G2L["16b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16b"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["16b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16b"]["Text"] = [[Button Example]];
G2L["16b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["16b"]["Name"] = [[Header]];
G2L["16b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Header.UIListLayout
G2L["16c"] = Instance.new("UIListLayout", G2L["168"]);
G2L["16c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["16c"]["Padding"] = UDim.new(0, 6);
G2L["16c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["16c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["16c"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Center;
G2L["16c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Header.UIPadding
G2L["16d"] = Instance.new("UIPadding", G2L["168"]);
G2L["16d"]["PaddingRight"] = UDim.new(0, 10);
G2L["16d"]["PaddingLeft"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Icon
G2L["16e"] = Instance.new("ImageLabel", G2L["161"]);
G2L["16e"]["ZIndex"] = 6;
G2L["16e"]["BorderSizePixel"] = 0;
G2L["16e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16e"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["16e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["16e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16e"]["BackgroundTransparency"] = 1;
G2L["16e"]["Name"] = [[Icon]];
G2L["16e"]["Position"] = UDim2.new(1, -8, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.Accent
G2L["16f"] = Instance.new("UIGradient", G2L["161"]);
G2L["16f"]["Name"] = [[Accent]];
G2L["16f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.UIStroke
G2L["170"] = Instance.new("UIStroke", G2L["161"]);
G2L["170"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.UIStroke.Accent
G2L["171"] = Instance.new("UIGradient", G2L["170"]);
G2L["171"]["Name"] = [[Accent]];
G2L["171"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.PART_Backdrop.UICorner
G2L["172"] = Instance.new("UICorner", G2L["161"]);
G2L["172"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.Interact
G2L["173"] = Instance.new("ImageButton", G2L["160"]);
G2L["173"]["BorderSizePixel"] = 0;
G2L["173"]["AutoButtonColor"] = false;
G2L["173"]["BackgroundTransparency"] = 0.99;
G2L["173"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["173"]["ZIndex"] = 10;
G2L["173"]["Image"] = [[rbxassetid://128607803905805]];
G2L["173"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["173"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["173"]["Name"] = [[Interact]];
-- [ERROR] cannot convert PressHapticEffect, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.Interact.HapticEffect
G2L["174"] = Instance.new("HapticEffect", G2L["173"]);
G2L["174"]["Type"] = Enum.HapticEffectType.Custom;
G2L["174"]["Radius"] = 10;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.UIPadding
G2L["175"] = Instance.new("UIPadding", G2L["160"]);
G2L["175"]["PaddingRight"] = UDim.new(0, 8);
G2L["175"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.Lock_Overlay
G2L["176"] = Instance.new("Frame", G2L["160"]);
G2L["176"]["Visible"] = false;
G2L["176"]["ZIndex"] = 30;
G2L["176"]["BorderSizePixel"] = 0;
G2L["176"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["176"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["176"]["Size"] = UDim2.new(1, 2, 1, 0);
G2L["176"]["Position"] = UDim2.new(0.5, 0, 0.5, -1);
G2L["176"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["176"]["Name"] = [[Lock_Overlay]];
G2L["176"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.Lock_Overlay.Header
G2L["177"] = Instance.new("TextLabel", G2L["176"]);
G2L["177"]["ZIndex"] = 30;
G2L["177"]["BorderSizePixel"] = 0;
G2L["177"]["TextSize"] = 15;
G2L["177"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["177"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["177"]["BackgroundTransparency"] = 1;
G2L["177"]["RichText"] = true;
G2L["177"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["177"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["177"]["ClipsDescendants"] = true;
G2L["177"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["177"]["Text"] = [[Locked Element]];
G2L["177"]["LayoutOrder"] = -1;
G2L["177"]["Name"] = [[Header]];
G2L["177"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style1.Lock_Overlay.UICorner
G2L["178"] = Instance.new("UICorner", G2L["176"]);
G2L["178"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2
G2L["179"] = Instance.new("Frame", G2L["15c"]);
G2L["179"]["ZIndex"] = 4;
G2L["179"]["BorderSizePixel"] = 0;
G2L["179"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["179"]["Size"] = UDim2.new(0, 100, 0, 36);
G2L["179"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["179"]["Name"] = [[Button_TEMPLATE_Style2]];
G2L["179"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop
G2L["17a"] = Instance.new("Frame", G2L["179"]);
G2L["17a"]["ZIndex"] = 5;
G2L["17a"]["BorderSizePixel"] = 0;
G2L["17a"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["17a"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["17a"]["Size"] = UDim2.new(1, 2, 1, 0);
G2L["17a"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["17a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17a"]["Name"] = [[PART_Backdrop]];
G2L["17a"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Header
G2L["17b"] = Instance.new("Frame", G2L["17a"]);
G2L["17b"]["ZIndex"] = 5;
G2L["17b"]["BorderSizePixel"] = 0;
G2L["17b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["17b"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["17b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["17b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["17b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17b"]["Name"] = [[Header]];
G2L["17b"]["LayoutOrder"] = -1;
G2L["17b"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Header.Icon
G2L["17c"] = Instance.new("ImageLabel", G2L["17b"]);
G2L["17c"]["ZIndex"] = 6;
G2L["17c"]["BorderSizePixel"] = 0;
G2L["17c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["17c"]["Image"] = [[http://www.roblox.com/asset/?id=6034996695]];
G2L["17c"]["Size"] = UDim2.new(0, 18, 0, 18);
G2L["17c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17c"]["BackgroundTransparency"] = 1;
G2L["17c"]["Name"] = [[Icon]];
G2L["17c"]["Position"] = UDim2.new(0, -25, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Header.Icon.Accent
G2L["17d"] = Instance.new("UIGradient", G2L["17c"]);
G2L["17d"]["Enabled"] = false;
G2L["17d"]["Name"] = [[Accent]];
G2L["17d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Header.Header
G2L["17e"] = Instance.new("TextLabel", G2L["17b"]);
G2L["17e"]["ZIndex"] = 6;
G2L["17e"]["BorderSizePixel"] = 0;
G2L["17e"]["TextSize"] = 14;
G2L["17e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["17e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17e"]["BackgroundTransparency"] = 1;
G2L["17e"]["RichText"] = true;
G2L["17e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["17e"]["Size"] = UDim2.new(0, 0, 0, 20);
G2L["17e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17e"]["Text"] = [[Button Example]];
G2L["17e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["17e"]["Name"] = [[Header]];
G2L["17e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Header.UIListLayout
G2L["17f"] = Instance.new("UIListLayout", G2L["17b"]);
G2L["17f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["17f"]["Padding"] = UDim.new(0, 6);
G2L["17f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["17f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["17f"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Center;
G2L["17f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Header.UIPadding
G2L["180"] = Instance.new("UIPadding", G2L["17b"]);
G2L["180"]["PaddingRight"] = UDim.new(0, 10);
G2L["180"]["PaddingLeft"] = UDim.new(0, 6);
G2L["180"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Icon
G2L["181"] = Instance.new("ImageLabel", G2L["17a"]);
G2L["181"]["ZIndex"] = 6;
G2L["181"]["BorderSizePixel"] = 0;
G2L["181"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["181"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["181"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["181"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["181"]["BackgroundTransparency"] = 1;
G2L["181"]["Name"] = [[Icon]];
G2L["181"]["Position"] = UDim2.new(1, -8, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Shadow
G2L["182"] = Instance.new("Frame", G2L["17a"]);
G2L["182"]["ZIndex"] = 5;
G2L["182"]["BorderSizePixel"] = 0;
G2L["182"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["182"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["182"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["182"]["Name"] = [[Shadow]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Shadow.UICorner
G2L["183"] = Instance.new("UICorner", G2L["182"]);
G2L["183"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.Shadow.UIGradient
G2L["184"] = Instance.new("UIGradient", G2L["182"]);
G2L["184"]["Rotation"] = -90;
G2L["184"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.272, 0.5375),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.UIStroke
G2L["185"] = Instance.new("UIStroke", G2L["17a"]);
G2L["185"]["Transparency"] = 0.85;
G2L["185"]["Color"] = Color3.fromRGB(66, 67, 78);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.PART_Backdrop.UICorner
G2L["186"] = Instance.new("UICorner", G2L["17a"]);
G2L["186"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.Lock_Overlay
G2L["187"] = Instance.new("Frame", G2L["179"]);
G2L["187"]["Visible"] = false;
G2L["187"]["ZIndex"] = 30;
G2L["187"]["BorderSizePixel"] = 0;
G2L["187"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["187"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["187"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["187"]["Name"] = [[Lock_Overlay]];
G2L["187"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.Lock_Overlay.Header
G2L["188"] = Instance.new("TextLabel", G2L["187"]);
G2L["188"]["ZIndex"] = 30;
G2L["188"]["BorderSizePixel"] = 0;
G2L["188"]["TextSize"] = 15;
G2L["188"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["188"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["188"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["188"]["BackgroundTransparency"] = 1;
G2L["188"]["RichText"] = true;
G2L["188"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["188"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["188"]["ClipsDescendants"] = true;
G2L["188"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["188"]["Text"] = [[Locked Element]];
G2L["188"]["LayoutOrder"] = -1;
G2L["188"]["Name"] = [[Header]];
G2L["188"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.Lock_Overlay.UICorner
G2L["189"] = Instance.new("UICorner", G2L["187"]);
G2L["189"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.UIPadding
G2L["18a"] = Instance.new("UIPadding", G2L["179"]);
G2L["18a"]["PaddingRight"] = UDim.new(0, 8);
G2L["18a"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.Interact
G2L["18b"] = Instance.new("ImageButton", G2L["179"]);
G2L["18b"]["BorderSizePixel"] = 0;
G2L["18b"]["AutoButtonColor"] = false;
G2L["18b"]["BackgroundTransparency"] = 0.99;
G2L["18b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18b"]["ZIndex"] = 10;
G2L["18b"]["Image"] = [[rbxassetid://128607803905805]];
G2L["18b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["18b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18b"]["Name"] = [[Interact]];
-- [ERROR] cannot convert PressHapticEffect, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Button_TEMPLATE_Style2.Interact.HapticEffect
G2L["18c"] = Instance.new("HapticEffect", G2L["18b"]);
G2L["18c"]["Radius"] = 10;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled
G2L["18d"] = Instance.new("Frame", G2L["15c"]);
G2L["18d"]["ZIndex"] = 4;
G2L["18d"]["BorderSizePixel"] = 0;
G2L["18d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18d"]["Size"] = UDim2.new(0, 100, 0, 36);
G2L["18d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18d"]["Name"] = [[Checkbox_TEMPLATE_Disabled]];
G2L["18d"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Header
G2L["18e"] = Instance.new("TextLabel", G2L["18d"]);
G2L["18e"]["ZIndex"] = 5;
G2L["18e"]["BorderSizePixel"] = 0;
G2L["18e"]["TextSize"] = 15;
G2L["18e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["18e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["18e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18e"]["BackgroundTransparency"] = 1;
G2L["18e"]["RichText"] = true;
G2L["18e"]["Size"] = UDim2.new(0, 290, 0, 20);
G2L["18e"]["ClipsDescendants"] = true;
G2L["18e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18e"]["Text"] = [[Checkbox Example]];
G2L["18e"]["LayoutOrder"] = -1;
G2L["18e"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["18e"]["Name"] = [[Header]];
G2L["18e"]["Position"] = UDim2.new(0, 0, 0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Header.Icon
G2L["18f"] = Instance.new("ImageLabel", G2L["18e"]);
G2L["18f"]["ZIndex"] = 6;
G2L["18f"]["BorderSizePixel"] = 0;
G2L["18f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["18f"]["Image"] = [[rbxassetid://126514831757890]];
G2L["18f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["18f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18f"]["BackgroundTransparency"] = 1;
G2L["18f"]["Name"] = [[Icon]];
G2L["18f"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Header.Icon.Accent
G2L["190"] = Instance.new("UIGradient", G2L["18f"]);
G2L["190"]["Enabled"] = false;
G2L["190"]["Name"] = [[Accent]];
G2L["190"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Header.UIPadding
G2L["191"] = Instance.new("UIPadding", G2L["18e"]);
G2L["191"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox
G2L["192"] = Instance.new("Frame", G2L["18d"]);
G2L["192"]["ZIndex"] = 6;
G2L["192"]["BorderSizePixel"] = 0;
G2L["192"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["192"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["192"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["192"]["Position"] = UDim2.new(1, -8, 0, 8);
G2L["192"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["192"]["Name"] = [[Checkbox]];
G2L["192"]["BackgroundTransparency"] = 0.9;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.Interact
G2L["193"] = Instance.new("TextButton", G2L["192"]);
G2L["193"]["BorderSizePixel"] = 0;
G2L["193"]["TextSize"] = 14;
G2L["193"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["193"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["193"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["193"]["ZIndex"] = 5;
G2L["193"]["BackgroundTransparency"] = 0.99;
G2L["193"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["193"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["193"]["Text"] = [[]];
G2L["193"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.Icon
G2L["194"] = Instance.new("ImageLabel", G2L["192"]);
G2L["194"]["ZIndex"] = 6;
G2L["194"]["BorderSizePixel"] = 0;
G2L["194"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["194"]["Image"] = [[http://www.roblox.com/asset/?id=6031094667]];
G2L["194"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["194"]["Visible"] = false;
G2L["194"]["BackgroundTransparency"] = 1;
G2L["194"]["Name"] = [[Icon]];
G2L["194"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.DropShadowHolder
G2L["195"] = Instance.new("Frame", G2L["192"]);
G2L["195"]["ZIndex"] = 0;
G2L["195"]["BorderSizePixel"] = 0;
G2L["195"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["195"]["Name"] = [[DropShadowHolder]];
G2L["195"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.DropShadowHolder.DropShadow
G2L["196"] = Instance.new("ImageLabel", G2L["195"]);
G2L["196"]["ZIndex"] = 4;
G2L["196"]["BorderSizePixel"] = 0;
G2L["196"]["SliceCenter"] = Rect.new(100, 140, 500, 448);
G2L["196"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["196"]["ImageTransparency"] = 0.5;
G2L["196"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["196"]["Image"] = [[rbxassetid://94680501858633]];
G2L["196"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["196"]["BackgroundTransparency"] = 1;
G2L["196"]["Name"] = [[DropShadow]];
G2L["196"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.DropShadowHolder.DropShadow.Accent
G2L["197"] = Instance.new("UIGradient", G2L["196"]);
G2L["197"]["Name"] = [[Accent]];
G2L["197"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.AccentBrighter
G2L["198"] = Instance.new("UIGradient", G2L["192"]);
G2L["198"]["Enabled"] = false;
G2L["198"]["Rotation"] = 45;
G2L["198"]["Name"] = [[AccentBrighter]];
G2L["198"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.Accent
G2L["199"] = Instance.new("UIGradient", G2L["192"]);
G2L["199"]["Rotation"] = 45;
G2L["199"]["Name"] = [[Accent]];
G2L["199"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.UIStroke
G2L["19a"] = Instance.new("UIStroke", G2L["192"]);
G2L["19a"]["Transparency"] = 0.5;
G2L["19a"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.UIStroke.Accent
G2L["19b"] = Instance.new("UIGradient", G2L["19a"]);
G2L["19b"]["Name"] = [[Accent]];
G2L["19b"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Checkbox.UICorner
G2L["19c"] = Instance.new("UICorner", G2L["192"]);
G2L["19c"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Lock_Overlay
G2L["19d"] = Instance.new("Frame", G2L["18d"]);
G2L["19d"]["Visible"] = false;
G2L["19d"]["ZIndex"] = 30;
G2L["19d"]["BorderSizePixel"] = 0;
G2L["19d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["19d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19d"]["Name"] = [[Lock_Overlay]];
G2L["19d"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Lock_Overlay.Header
G2L["19e"] = Instance.new("TextLabel", G2L["19d"]);
G2L["19e"]["ZIndex"] = 30;
G2L["19e"]["BorderSizePixel"] = 0;
G2L["19e"]["TextSize"] = 15;
G2L["19e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["19e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19e"]["BackgroundTransparency"] = 1;
G2L["19e"]["RichText"] = true;
G2L["19e"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["19e"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["19e"]["ClipsDescendants"] = true;
G2L["19e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19e"]["Text"] = [[Locked Element]];
G2L["19e"]["LayoutOrder"] = -1;
G2L["19e"]["Name"] = [[Header]];
G2L["19e"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.Lock_Overlay.UICorner
G2L["19f"] = Instance.new("UICorner", G2L["19d"]);
G2L["19f"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.ElementContainer
G2L["1a0"] = Instance.new("Frame", G2L["18d"]);
G2L["1a0"]["ZIndex"] = 5;
G2L["1a0"]["BorderSizePixel"] = 0;
G2L["1a0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a0"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1a0"]["Size"] = UDim2.new(0, 177, 0, 36);
G2L["1a0"]["Position"] = UDim2.new(1, -38, 0, 0);
G2L["1a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a0"]["Name"] = [[ElementContainer]];
G2L["1a0"]["LayoutOrder"] = -1;
G2L["1a0"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.ElementContainer.UIListLayout
G2L["1a1"] = Instance.new("UIListLayout", G2L["1a0"]);
G2L["1a1"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1a1"]["Padding"] = UDim.new(0, 6);
G2L["1a1"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["1a1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1a1"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Start;
G2L["1a1"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.DropdownHolder
G2L["1a2"] = Instance.new("Frame", G2L["18d"]);
G2L["1a2"]["Active"] = true;
G2L["1a2"]["ZIndex"] = 4;
G2L["1a2"]["BorderSizePixel"] = 0;
G2L["1a2"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["1a2"]["Selectable"] = true;
G2L["1a2"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1a2"]["Size"] = UDim2.new(1, -12, 0, 30);
G2L["1a2"]["Position"] = UDim2.new(0, 6, 0, 38);
G2L["1a2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a2"]["Name"] = [[DropdownHolder]];
G2L["1a2"]["LayoutOrder"] = 1;
G2L["1a2"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.DropdownHolder.UIListLayout
G2L["1a3"] = Instance.new("UIListLayout", G2L["1a2"]);
G2L["1a3"]["Padding"] = UDim.new(0, 4);
G2L["1a3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Disabled.UIPadding
G2L["1a4"] = Instance.new("UIPadding", G2L["18d"]);
G2L["1a4"]["PaddingRight"] = UDim.new(0, 3);
G2L["1a4"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled
G2L["1a5"] = Instance.new("Frame", G2L["15c"]);
G2L["1a5"]["ZIndex"] = 4;
G2L["1a5"]["BorderSizePixel"] = 0;
G2L["1a5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a5"]["Size"] = UDim2.new(0, 100, 0, 36);
G2L["1a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a5"]["Name"] = [[Checkbox_TEMPLATE_Enabled]];
G2L["1a5"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Header
G2L["1a6"] = Instance.new("TextLabel", G2L["1a5"]);
G2L["1a6"]["ZIndex"] = 5;
G2L["1a6"]["BorderSizePixel"] = 0;
G2L["1a6"]["TextSize"] = 15;
G2L["1a6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a6"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1a6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a6"]["BackgroundTransparency"] = 1;
G2L["1a6"]["RichText"] = true;
G2L["1a6"]["Size"] = UDim2.new(0, 290, 0, 20);
G2L["1a6"]["ClipsDescendants"] = true;
G2L["1a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a6"]["Text"] = [[Checkbox Example]];
G2L["1a6"]["LayoutOrder"] = -1;
G2L["1a6"]["Name"] = [[Header]];
G2L["1a6"]["Position"] = UDim2.new(0, 0, 0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Header.Icon
G2L["1a7"] = Instance.new("ImageLabel", G2L["1a6"]);
G2L["1a7"]["ZIndex"] = 6;
G2L["1a7"]["BorderSizePixel"] = 0;
G2L["1a7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a7"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1a7"]["Image"] = [[rbxassetid://126514831757890]];
G2L["1a7"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a7"]["BackgroundTransparency"] = 1;
G2L["1a7"]["Name"] = [[Icon]];
G2L["1a7"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Header.Icon.Accent
G2L["1a8"] = Instance.new("UIGradient", G2L["1a7"]);
G2L["1a8"]["Enabled"] = false;
G2L["1a8"]["Name"] = [[Accent]];
G2L["1a8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Header.UIPadding
G2L["1a9"] = Instance.new("UIPadding", G2L["1a6"]);
G2L["1a9"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox
G2L["1aa"] = Instance.new("Frame", G2L["1a5"]);
G2L["1aa"]["ZIndex"] = 6;
G2L["1aa"]["BorderSizePixel"] = 0;
G2L["1aa"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1aa"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1aa"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1aa"]["Position"] = UDim2.new(1, -8, 0, 8);
G2L["1aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1aa"]["Name"] = [[Checkbox]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.Interact
G2L["1ab"] = Instance.new("TextButton", G2L["1aa"]);
G2L["1ab"]["BorderSizePixel"] = 0;
G2L["1ab"]["TextSize"] = 14;
G2L["1ab"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ab"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1ab"]["ZIndex"] = 5;
G2L["1ab"]["BackgroundTransparency"] = 0.99;
G2L["1ab"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ab"]["Text"] = [[]];
G2L["1ab"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.Icon
G2L["1ac"] = Instance.new("ImageLabel", G2L["1aa"]);
G2L["1ac"]["ZIndex"] = 6;
G2L["1ac"]["BorderSizePixel"] = 0;
G2L["1ac"]["ImageTransparency"] = 1;
G2L["1ac"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1ac"]["Image"] = [[http://www.roblox.com/asset/?id=6031094667]];
G2L["1ac"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["1ac"]["Visible"] = false;
G2L["1ac"]["BackgroundTransparency"] = 1;
G2L["1ac"]["Name"] = [[Icon]];
G2L["1ac"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.DropShadowHolder
G2L["1ad"] = Instance.new("Frame", G2L["1aa"]);
G2L["1ad"]["ZIndex"] = 0;
G2L["1ad"]["BorderSizePixel"] = 0;
G2L["1ad"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ad"]["Name"] = [[DropShadowHolder]];
G2L["1ad"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.DropShadowHolder.DropShadow
G2L["1ae"] = Instance.new("ImageLabel", G2L["1ad"]);
G2L["1ae"]["ZIndex"] = 4;
G2L["1ae"]["BorderSizePixel"] = 0;
G2L["1ae"]["SliceCenter"] = Rect.new(100, 140, 500, 448);
G2L["1ae"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["1ae"]["ImageTransparency"] = 0.5;
G2L["1ae"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1ae"]["Image"] = [[rbxassetid://94680501858633]];
G2L["1ae"]["Size"] = UDim2.new(1, 18, 1, 18);
G2L["1ae"]["BackgroundTransparency"] = 1;
G2L["1ae"]["Name"] = [[DropShadow]];
G2L["1ae"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.DropShadowHolder.DropShadow.Accent
G2L["1af"] = Instance.new("UIGradient", G2L["1ae"]);
G2L["1af"]["Name"] = [[Accent]];
G2L["1af"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.AccentBrighter
G2L["1b0"] = Instance.new("UIGradient", G2L["1aa"]);
G2L["1b0"]["Enabled"] = false;
G2L["1b0"]["Rotation"] = 45;
G2L["1b0"]["Name"] = [[AccentBrighter]];
G2L["1b0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(242, 213, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(188, 193, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(196, 228, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.Accent
G2L["1b1"] = Instance.new("UIGradient", G2L["1aa"]);
G2L["1b1"]["Rotation"] = 45;
G2L["1b1"]["Name"] = [[Accent]];
G2L["1b1"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.UIStroke
G2L["1b2"] = Instance.new("UIStroke", G2L["1aa"]);
G2L["1b2"]["Transparency"] = 0.5;
G2L["1b2"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.UIStroke.Accent
G2L["1b3"] = Instance.new("UIGradient", G2L["1b2"]);
G2L["1b3"]["Name"] = [[Accent]];
G2L["1b3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Checkbox.UICorner
G2L["1b4"] = Instance.new("UICorner", G2L["1aa"]);
G2L["1b4"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Lock_Overlay
G2L["1b5"] = Instance.new("Frame", G2L["1a5"]);
G2L["1b5"]["Visible"] = false;
G2L["1b5"]["ZIndex"] = 30;
G2L["1b5"]["BorderSizePixel"] = 0;
G2L["1b5"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b5"]["Name"] = [[Lock_Overlay]];
G2L["1b5"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Lock_Overlay.Header
G2L["1b6"] = Instance.new("TextLabel", G2L["1b5"]);
G2L["1b6"]["ZIndex"] = 30;
G2L["1b6"]["BorderSizePixel"] = 0;
G2L["1b6"]["TextSize"] = 15;
G2L["1b6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b6"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1b6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b6"]["BackgroundTransparency"] = 1;
G2L["1b6"]["RichText"] = true;
G2L["1b6"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1b6"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1b6"]["ClipsDescendants"] = true;
G2L["1b6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b6"]["Text"] = [[Locked Element]];
G2L["1b6"]["LayoutOrder"] = -1;
G2L["1b6"]["Name"] = [[Header]];
G2L["1b6"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.Lock_Overlay.UICorner
G2L["1b7"] = Instance.new("UICorner", G2L["1b5"]);
G2L["1b7"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.ElementContainer
G2L["1b8"] = Instance.new("Frame", G2L["1a5"]);
G2L["1b8"]["ZIndex"] = 5;
G2L["1b8"]["BorderSizePixel"] = 0;
G2L["1b8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b8"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1b8"]["Size"] = UDim2.new(0, 177, 0, 36);
G2L["1b8"]["Position"] = UDim2.new(1, -36, 0, 0);
G2L["1b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b8"]["Name"] = [[ElementContainer]];
G2L["1b8"]["LayoutOrder"] = -1;
G2L["1b8"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.ElementContainer.UIListLayout
G2L["1b9"] = Instance.new("UIListLayout", G2L["1b8"]);
G2L["1b9"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1b9"]["Padding"] = UDim.new(0, 6);
G2L["1b9"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["1b9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1b9"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Start;
G2L["1b9"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.DropdownHolder
G2L["1ba"] = Instance.new("Frame", G2L["1a5"]);
G2L["1ba"]["Active"] = true;
G2L["1ba"]["ZIndex"] = 4;
G2L["1ba"]["BorderSizePixel"] = 0;
G2L["1ba"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["1ba"]["Selectable"] = true;
G2L["1ba"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1ba"]["Size"] = UDim2.new(1, -12, 0, 30);
G2L["1ba"]["Position"] = UDim2.new(0, 6, 0, 38);
G2L["1ba"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ba"]["Name"] = [[DropdownHolder]];
G2L["1ba"]["LayoutOrder"] = 1;
G2L["1ba"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.DropdownHolder.UIListLayout
G2L["1bb"] = Instance.new("UIListLayout", G2L["1ba"]);
G2L["1bb"]["Padding"] = UDim.new(0, 4);
G2L["1bb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Checkbox_TEMPLATE_Enabled.UIPadding
G2L["1bc"] = Instance.new("UIPadding", G2L["1a5"]);
G2L["1bc"]["PaddingRight"] = UDim.new(0, 3);
G2L["1bc"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled
G2L["1bd"] = Instance.new("Frame", G2L["15c"]);
G2L["1bd"]["ZIndex"] = 4;
G2L["1bd"]["BorderSizePixel"] = 0;
G2L["1bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bd"]["Size"] = UDim2.new(0, 100, 0, 36);
G2L["1bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bd"]["Name"] = [[Switch_TEMPLATE_Disabled]];
G2L["1bd"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Header
G2L["1be"] = Instance.new("TextLabel", G2L["1bd"]);
G2L["1be"]["ZIndex"] = 5;
G2L["1be"]["BorderSizePixel"] = 0;
G2L["1be"]["TextSize"] = 15;
G2L["1be"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1be"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1be"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1be"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1be"]["BackgroundTransparency"] = 1;
G2L["1be"]["RichText"] = true;
G2L["1be"]["Size"] = UDim2.new(0, 275, 0, 20);
G2L["1be"]["ClipsDescendants"] = true;
G2L["1be"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1be"]["Text"] = [[Switch Example]];
G2L["1be"]["LayoutOrder"] = -1;
G2L["1be"]["Name"] = [[Header]];
G2L["1be"]["Position"] = UDim2.new(0, 0, 0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Header.Icon
G2L["1bf"] = Instance.new("ImageLabel", G2L["1be"]);
G2L["1bf"]["ZIndex"] = 6;
G2L["1bf"]["BorderSizePixel"] = 0;
G2L["1bf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1bf"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1bf"]["Image"] = [[rbxassetid://110330801941347]];
G2L["1bf"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1bf"]["BackgroundTransparency"] = 1;
G2L["1bf"]["Name"] = [[Icon]];
G2L["1bf"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Header.Icon.Accent
G2L["1c0"] = Instance.new("UIGradient", G2L["1bf"]);
G2L["1c0"]["Enabled"] = false;
G2L["1c0"]["Name"] = [[Accent]];
G2L["1c0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Header.UIPadding
G2L["1c1"] = Instance.new("UIPadding", G2L["1be"]);
G2L["1c1"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch
G2L["1c2"] = Instance.new("Frame", G2L["1bd"]);
G2L["1c2"]["ZIndex"] = 6;
G2L["1c2"]["BorderSizePixel"] = 0;
G2L["1c2"]["BackgroundColor3"] = Color3.fromRGB(166, 166, 166);
G2L["1c2"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1c2"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["1c2"]["Position"] = UDim2.new(1, -8, 0, 8);
G2L["1c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c2"]["Name"] = [[Switch]];
G2L["1c2"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.Interact
G2L["1c3"] = Instance.new("TextButton", G2L["1c2"]);
G2L["1c3"]["BorderSizePixel"] = 0;
G2L["1c3"]["TextSize"] = 14;
G2L["1c3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c3"]["ZIndex"] = 5;
G2L["1c3"]["BackgroundTransparency"] = 0.99;
G2L["1c3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c3"]["Text"] = [[]];
G2L["1c3"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.Knob
G2L["1c4"] = Instance.new("Frame", G2L["1c2"]);
G2L["1c4"]["ZIndex"] = 6;
G2L["1c4"]["BorderSizePixel"] = 0;
G2L["1c4"]["BackgroundColor3"] = Color3.fromRGB(166, 166, 166);
G2L["1c4"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1c4"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["1c4"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["1c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c4"]["Name"] = [[Knob]];
G2L["1c4"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.Knob.UICorner
G2L["1c5"] = Instance.new("UICorner", G2L["1c4"]);
G2L["1c5"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.DropShadowHolder
G2L["1c6"] = Instance.new("Frame", G2L["1c2"]);
G2L["1c6"]["ZIndex"] = 0;
G2L["1c6"]["BorderSizePixel"] = 0;
G2L["1c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1c6"]["Name"] = [[DropShadowHolder]];
G2L["1c6"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.DropShadowHolder.DropShadow
G2L["1c7"] = Instance.new("ImageLabel", G2L["1c6"]);
G2L["1c7"]["ZIndex"] = 4;
G2L["1c7"]["BorderSizePixel"] = 0;
G2L["1c7"]["SliceCenter"] = Rect.new(100, 100, 500, 500);
G2L["1c7"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["1c7"]["ImageTransparency"] = 1;
G2L["1c7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1c7"]["Image"] = [[rbxassetid://94680501858633]];
G2L["1c7"]["Size"] = UDim2.new(1, 27, 1, 22);
G2L["1c7"]["BackgroundTransparency"] = 1;
G2L["1c7"]["Name"] = [[DropShadow]];
G2L["1c7"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.DropShadowHolder.DropShadow.Accent
G2L["1c8"] = Instance.new("UIGradient", G2L["1c7"]);
G2L["1c8"]["Name"] = [[Accent]];
G2L["1c8"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.UIPadding
G2L["1c9"] = Instance.new("UIPadding", G2L["1c2"]);
G2L["1c9"]["PaddingRight"] = UDim.new(0, 2);
G2L["1c9"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.Accent
G2L["1ca"] = Instance.new("UIGradient", G2L["1c2"]);
G2L["1ca"]["Enabled"] = false;
G2L["1ca"]["Name"] = [[Accent]];
G2L["1ca"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.UIStroke
G2L["1cb"] = Instance.new("UIStroke", G2L["1c2"]);
G2L["1cb"]["Transparency"] = 0.5;
G2L["1cb"]["Color"] = Color3.fromRGB(166, 166, 166);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.UIStroke.Accent
G2L["1cc"] = Instance.new("UIGradient", G2L["1cb"]);
G2L["1cc"]["Enabled"] = false;
G2L["1cc"]["Name"] = [[Accent]];
G2L["1cc"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Switch.UICorner
G2L["1cd"] = Instance.new("UICorner", G2L["1c2"]);
G2L["1cd"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Lock_Overlay
G2L["1ce"] = Instance.new("Frame", G2L["1bd"]);
G2L["1ce"]["Visible"] = false;
G2L["1ce"]["ZIndex"] = 30;
G2L["1ce"]["BorderSizePixel"] = 0;
G2L["1ce"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ce"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ce"]["Name"] = [[Lock_Overlay]];
G2L["1ce"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Lock_Overlay.Header
G2L["1cf"] = Instance.new("TextLabel", G2L["1ce"]);
G2L["1cf"]["ZIndex"] = 30;
G2L["1cf"]["BorderSizePixel"] = 0;
G2L["1cf"]["TextSize"] = 15;
G2L["1cf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cf"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1cf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1cf"]["BackgroundTransparency"] = 1;
G2L["1cf"]["RichText"] = true;
G2L["1cf"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1cf"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1cf"]["ClipsDescendants"] = true;
G2L["1cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1cf"]["Text"] = [[Locked Element]];
G2L["1cf"]["LayoutOrder"] = -1;
G2L["1cf"]["Name"] = [[Header]];
G2L["1cf"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.Lock_Overlay.UICorner
G2L["1d0"] = Instance.new("UICorner", G2L["1ce"]);
G2L["1d0"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.ElementContainer
G2L["1d1"] = Instance.new("Frame", G2L["1bd"]);
G2L["1d1"]["ZIndex"] = 5;
G2L["1d1"]["BorderSizePixel"] = 0;
G2L["1d1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d1"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1d1"]["Size"] = UDim2.new(0, 177, 0, 36);
G2L["1d1"]["Position"] = UDim2.new(1, -55, 0, 0);
G2L["1d1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d1"]["Name"] = [[ElementContainer]];
G2L["1d1"]["LayoutOrder"] = -1;
G2L["1d1"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.ElementContainer.UIListLayout
G2L["1d2"] = Instance.new("UIListLayout", G2L["1d1"]);
G2L["1d2"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1d2"]["Padding"] = UDim.new(0, 6);
G2L["1d2"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["1d2"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1d2"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Start;
G2L["1d2"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.DropdownHolder
G2L["1d3"] = Instance.new("Frame", G2L["1bd"]);
G2L["1d3"]["Active"] = true;
G2L["1d3"]["ZIndex"] = 4;
G2L["1d3"]["BorderSizePixel"] = 0;
G2L["1d3"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["1d3"]["Selectable"] = true;
G2L["1d3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1d3"]["Size"] = UDim2.new(1, -12, 0, 30);
G2L["1d3"]["Position"] = UDim2.new(0, 6, 0, 38);
G2L["1d3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d3"]["Name"] = [[DropdownHolder]];
G2L["1d3"]["LayoutOrder"] = 1;
G2L["1d3"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.DropdownHolder.UIListLayout
G2L["1d4"] = Instance.new("UIListLayout", G2L["1d3"]);
G2L["1d4"]["Padding"] = UDim.new(0, 4);
G2L["1d4"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Disabled.UIPadding
G2L["1d5"] = Instance.new("UIPadding", G2L["1bd"]);
G2L["1d5"]["PaddingRight"] = UDim.new(0, 3);
G2L["1d5"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled
G2L["1d6"] = Instance.new("Frame", G2L["15c"]);
G2L["1d6"]["ZIndex"] = 4;
G2L["1d6"]["BorderSizePixel"] = 0;
G2L["1d6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d6"]["Size"] = UDim2.new(0, 100, 0, 36);
G2L["1d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d6"]["Name"] = [[Switch_TEMPLATE_Enabled]];
G2L["1d6"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Header
G2L["1d7"] = Instance.new("TextLabel", G2L["1d6"]);
G2L["1d7"]["ZIndex"] = 5;
G2L["1d7"]["BorderSizePixel"] = 0;
G2L["1d7"]["TextSize"] = 15;
G2L["1d7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1d7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1d7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d7"]["BackgroundTransparency"] = 1;
G2L["1d7"]["RichText"] = true;
G2L["1d7"]["Size"] = UDim2.new(0, 275, 0, 20);
G2L["1d7"]["ClipsDescendants"] = true;
G2L["1d7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d7"]["Text"] = [[Switch Example]];
G2L["1d7"]["LayoutOrder"] = -1;
G2L["1d7"]["Name"] = [[Header]];
G2L["1d7"]["Position"] = UDim2.new(0, 0, 0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Header.Icon
G2L["1d8"] = Instance.new("ImageLabel", G2L["1d7"]);
G2L["1d8"]["ZIndex"] = 6;
G2L["1d8"]["BorderSizePixel"] = 0;
G2L["1d8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d8"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1d8"]["Image"] = [[rbxassetid://110330801941347]];
G2L["1d8"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d8"]["BackgroundTransparency"] = 1;
G2L["1d8"]["Name"] = [[Icon]];
G2L["1d8"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Header.Icon.Accent
G2L["1d9"] = Instance.new("UIGradient", G2L["1d8"]);
G2L["1d9"]["Enabled"] = false;
G2L["1d9"]["Name"] = [[Accent]];
G2L["1d9"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Header.UIPadding
G2L["1da"] = Instance.new("UIPadding", G2L["1d7"]);
G2L["1da"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch
G2L["1db"] = Instance.new("Frame", G2L["1d6"]);
G2L["1db"]["ZIndex"] = 6;
G2L["1db"]["BorderSizePixel"] = 0;
G2L["1db"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1db"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1db"]["Size"] = UDim2.new(0, 40, 0, 20);
G2L["1db"]["Position"] = UDim2.new(1, -8, 0, 8);
G2L["1db"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1db"]["Name"] = [[Switch]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.Interact
G2L["1dc"] = Instance.new("TextButton", G2L["1db"]);
G2L["1dc"]["BorderSizePixel"] = 0;
G2L["1dc"]["TextSize"] = 14;
G2L["1dc"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dc"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1dc"]["ZIndex"] = 5;
G2L["1dc"]["BackgroundTransparency"] = 0.99;
G2L["1dc"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1dc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dc"]["Text"] = [[]];
G2L["1dc"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.Knob
G2L["1dd"] = Instance.new("Frame", G2L["1db"]);
G2L["1dd"]["ZIndex"] = 6;
G2L["1dd"]["BorderSizePixel"] = 0;
G2L["1dd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1dd"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1dd"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["1dd"]["Position"] = UDim2.new(0, 20, 0.5, 0);
G2L["1dd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1dd"]["Name"] = [[Knob]];
G2L["1dd"]["BackgroundTransparency"] = 0.15;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.Knob.UICorner
G2L["1de"] = Instance.new("UICorner", G2L["1dd"]);
G2L["1de"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.DropShadowHolder
G2L["1df"] = Instance.new("Frame", G2L["1db"]);
G2L["1df"]["ZIndex"] = 0;
G2L["1df"]["BorderSizePixel"] = 0;
G2L["1df"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1df"]["Name"] = [[DropShadowHolder]];
G2L["1df"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.DropShadowHolder.DropShadow
G2L["1e0"] = Instance.new("ImageLabel", G2L["1df"]);
G2L["1e0"]["ZIndex"] = 4;
G2L["1e0"]["BorderSizePixel"] = 0;
G2L["1e0"]["SliceCenter"] = Rect.new(100, 100, 500, 500);
G2L["1e0"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["1e0"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1e0"]["Image"] = [[rbxassetid://94680501858633]];
G2L["1e0"]["Size"] = UDim2.new(1, 27, 1, 22);
G2L["1e0"]["BackgroundTransparency"] = 1;
G2L["1e0"]["Name"] = [[DropShadow]];
G2L["1e0"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.DropShadowHolder.DropShadow.Accent
G2L["1e1"] = Instance.new("UIGradient", G2L["1e0"]);
G2L["1e1"]["Name"] = [[Accent]];
G2L["1e1"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.UIPadding
G2L["1e2"] = Instance.new("UIPadding", G2L["1db"]);
G2L["1e2"]["PaddingRight"] = UDim.new(0, 2);
G2L["1e2"]["PaddingLeft"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.Accent
G2L["1e3"] = Instance.new("UIGradient", G2L["1db"]);
G2L["1e3"]["Name"] = [[Accent]];
G2L["1e3"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.UIStroke
G2L["1e4"] = Instance.new("UIStroke", G2L["1db"]);
G2L["1e4"]["Transparency"] = 0.5;
G2L["1e4"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.UIStroke.Accent
G2L["1e5"] = Instance.new("UIGradient", G2L["1e4"]);
G2L["1e5"]["Name"] = [[Accent]];
G2L["1e5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Switch.UICorner
G2L["1e6"] = Instance.new("UICorner", G2L["1db"]);
G2L["1e6"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Lock_Overlay
G2L["1e7"] = Instance.new("Frame", G2L["1d6"]);
G2L["1e7"]["Visible"] = false;
G2L["1e7"]["ZIndex"] = 30;
G2L["1e7"]["BorderSizePixel"] = 0;
G2L["1e7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e7"]["Name"] = [[Lock_Overlay]];
G2L["1e7"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Lock_Overlay.Header
G2L["1e8"] = Instance.new("TextLabel", G2L["1e7"]);
G2L["1e8"]["ZIndex"] = 30;
G2L["1e8"]["BorderSizePixel"] = 0;
G2L["1e8"]["TextSize"] = 15;
G2L["1e8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e8"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e8"]["BackgroundTransparency"] = 1;
G2L["1e8"]["RichText"] = true;
G2L["1e8"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1e8"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1e8"]["ClipsDescendants"] = true;
G2L["1e8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e8"]["Text"] = [[Locked Element]];
G2L["1e8"]["LayoutOrder"] = -1;
G2L["1e8"]["Name"] = [[Header]];
G2L["1e8"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.Lock_Overlay.UICorner
G2L["1e9"] = Instance.new("UICorner", G2L["1e7"]);
G2L["1e9"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.ElementContainer
G2L["1ea"] = Instance.new("Frame", G2L["1d6"]);
G2L["1ea"]["ZIndex"] = 5;
G2L["1ea"]["BorderSizePixel"] = 0;
G2L["1ea"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ea"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1ea"]["Size"] = UDim2.new(0, 177, 0, 36);
G2L["1ea"]["Position"] = UDim2.new(1, -55, 0, 0);
G2L["1ea"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ea"]["Name"] = [[ElementContainer]];
G2L["1ea"]["LayoutOrder"] = -1;
G2L["1ea"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.ElementContainer.UIListLayout
G2L["1eb"] = Instance.new("UIListLayout", G2L["1ea"]);
G2L["1eb"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1eb"]["Padding"] = UDim.new(0, 6);
G2L["1eb"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["1eb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1eb"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Start;
G2L["1eb"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.DropdownHolder
G2L["1ec"] = Instance.new("Frame", G2L["1d6"]);
G2L["1ec"]["Active"] = true;
G2L["1ec"]["ZIndex"] = 4;
G2L["1ec"]["BorderSizePixel"] = 0;
G2L["1ec"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["1ec"]["Selectable"] = true;
G2L["1ec"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1ec"]["Size"] = UDim2.new(1, -12, 0, 30);
G2L["1ec"]["Position"] = UDim2.new(0, 6, 0, 38);
G2L["1ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ec"]["Name"] = [[DropdownHolder]];
G2L["1ec"]["LayoutOrder"] = 1;
G2L["1ec"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.DropdownHolder.UIListLayout
G2L["1ed"] = Instance.new("UIListLayout", G2L["1ec"]);
G2L["1ed"]["Padding"] = UDim.new(0, 4);
G2L["1ed"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Switch_TEMPLATE_Enabled.UIPadding
G2L["1ee"] = Instance.new("UIPadding", G2L["1d6"]);
G2L["1ee"]["PaddingRight"] = UDim.new(0, 3);
G2L["1ee"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE
G2L["1ef"] = Instance.new("Frame", G2L["15c"]);
G2L["1ef"]["ZIndex"] = 4;
G2L["1ef"]["BorderSizePixel"] = 0;
G2L["1ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1ef"]["Size"] = UDim2.new(0, 100, 0, 50);
G2L["1ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1ef"]["Name"] = [[Slider_TEMPLATE]];
G2L["1ef"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Lock_Overlay
G2L["1f0"] = Instance.new("Frame", G2L["1ef"]);
G2L["1f0"]["Visible"] = false;
G2L["1f0"]["ZIndex"] = 30;
G2L["1f0"]["BorderSizePixel"] = 0;
G2L["1f0"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f0"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f0"]["Name"] = [[Lock_Overlay]];
G2L["1f0"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Lock_Overlay.Header
G2L["1f1"] = Instance.new("TextLabel", G2L["1f0"]);
G2L["1f1"]["ZIndex"] = 30;
G2L["1f1"]["BorderSizePixel"] = 0;
G2L["1f1"]["TextSize"] = 15;
G2L["1f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f1"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f1"]["BackgroundTransparency"] = 1;
G2L["1f1"]["RichText"] = true;
G2L["1f1"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1f1"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["1f1"]["ClipsDescendants"] = true;
G2L["1f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f1"]["Text"] = [[Locked Element]];
G2L["1f1"]["LayoutOrder"] = -1;
G2L["1f1"]["Name"] = [[Header]];
G2L["1f1"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Lock_Overlay.UICorner
G2L["1f2"] = Instance.new("UICorner", G2L["1f0"]);
G2L["1f2"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Value
G2L["1f3"] = Instance.new("Frame", G2L["1ef"]);
G2L["1f3"]["ZIndex"] = 5;
G2L["1f3"]["BorderSizePixel"] = 0;
G2L["1f3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f3"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1f3"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1f3"]["Size"] = UDim2.new(1, -200, 0, 0);
G2L["1f3"]["Position"] = UDim2.new(1, -6, 0, 17);
G2L["1f3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f3"]["Name"] = [[Value]];
G2L["1f3"]["LayoutOrder"] = -1;
G2L["1f3"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Value.input
G2L["1f4"] = Instance.new("TextBox", G2L["1f3"]);
G2L["1f4"]["Active"] = false;
G2L["1f4"]["Name"] = [[input]];
G2L["1f4"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1f4"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["1f4"]["ZIndex"] = 5;
G2L["1f4"]["BorderSizePixel"] = 0;
G2L["1f4"]["TextSize"] = 14;
G2L["1f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f4"]["RichText"] = true;
G2L["1f4"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["1f4"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1f4"]["Selectable"] = false;
G2L["1f4"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1f4"]["Position"] = UDim2.new(1, -6, 0, 17);
G2L["1f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f4"]["Text"] = [[100]];
G2L["1f4"]["LayoutOrder"] = -1;
G2L["1f4"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Value.input.UIPadding
G2L["1f5"] = Instance.new("UIPadding", G2L["1f4"]);
G2L["1f5"]["PaddingTop"] = UDim.new(0, 1);
G2L["1f5"]["PaddingBottom"] = UDim.new(0, -1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Value.max
G2L["1f6"] = Instance.new("TextLabel", G2L["1f3"]);
G2L["1f6"]["ZIndex"] = 5;
G2L["1f6"]["BorderSizePixel"] = 0;
G2L["1f6"]["TextSize"] = 11;
G2L["1f6"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["1f6"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["1f6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f6"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["1f6"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["1f6"]["BackgroundTransparency"] = 1;
G2L["1f6"]["RichText"] = true;
G2L["1f6"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f6"]["Text"] = [[ %/100]];
G2L["1f6"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["1f6"]["Name"] = [[max]];
G2L["1f6"]["Position"] = UDim2.new(1, -6, 0, 17);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Value.UIListLayout
G2L["1f7"] = Instance.new("UIListLayout", G2L["1f3"]);
G2L["1f7"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["1f7"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["1f7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1f7"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Header
G2L["1f8"] = Instance.new("TextLabel", G2L["1ef"]);
G2L["1f8"]["ZIndex"] = 5;
G2L["1f8"]["BorderSizePixel"] = 0;
G2L["1f8"]["TextSize"] = 15;
G2L["1f8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f8"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1f8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f8"]["BackgroundTransparency"] = 1;
G2L["1f8"]["RichText"] = true;
G2L["1f8"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1f8"]["Size"] = UDim2.new(1, -60, 0, 14);
G2L["1f8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f8"]["Text"] = [[Slider Example]];
G2L["1f8"]["LayoutOrder"] = -1;
G2L["1f8"]["Name"] = [[Header]];
G2L["1f8"]["Position"] = UDim2.new(0, 0, 0, 17);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Header.Icon
G2L["1f9"] = Instance.new("ImageLabel", G2L["1f8"]);
G2L["1f9"]["ZIndex"] = 6;
G2L["1f9"]["BorderSizePixel"] = 0;
G2L["1f9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f9"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1f9"]["Image"] = [[rbxassetid://10709773755]];
G2L["1f9"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1f9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f9"]["BackgroundTransparency"] = 1;
G2L["1f9"]["Name"] = [[Icon]];
G2L["1f9"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Header.Icon.Accent
G2L["1fa"] = Instance.new("UIGradient", G2L["1f9"]);
G2L["1fa"]["Enabled"] = false;
G2L["1fa"]["Name"] = [[Accent]];
G2L["1fa"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.Header.UIPadding
G2L["1fb"] = Instance.new("UIPadding", G2L["1f8"]);
G2L["1fb"]["PaddingTop"] = UDim.new(0, 1);
G2L["1fb"]["PaddingLeft"] = UDim.new(0, 32);
G2L["1fb"]["PaddingBottom"] = UDim.new(0, -1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop
G2L["1fc"] = Instance.new("Frame", G2L["1ef"]);
G2L["1fc"]["ZIndex"] = 4;
G2L["1fc"]["BorderSizePixel"] = 0;
G2L["1fc"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["1fc"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["1fc"]["Size"] = UDim2.new(1, -14, 0, 4);
G2L["1fc"]["Position"] = UDim2.new(0.5, 0, 0, 37);
G2L["1fc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1fc"]["Name"] = [[PART_Backdrop]];
G2L["1fc"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress
G2L["1fd"] = Instance.new("Frame", G2L["1fc"]);
G2L["1fd"]["ZIndex"] = 4;
G2L["1fd"]["BorderSizePixel"] = 0;
G2L["1fd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1fd"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1fd"]["Size"] = UDim2.new(0.08202, 8, 1, 0);
G2L["1fd"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["1fd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1fd"]["Name"] = [[PART_Progress]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.DropShadowHolder
G2L["1fe"] = Instance.new("Frame", G2L["1fd"]);
G2L["1fe"]["ZIndex"] = 0;
G2L["1fe"]["BorderSizePixel"] = 0;
G2L["1fe"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1fe"]["Name"] = [[DropShadowHolder]];
G2L["1fe"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow
G2L["1ff"] = Instance.new("ImageLabel", G2L["1fe"]);
G2L["1ff"]["ZIndex"] = 4;
G2L["1ff"]["BorderSizePixel"] = 0;
G2L["1ff"]["SliceCenter"] = Rect.new(83, 83, 486, 517);
G2L["1ff"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["1ff"]["ImageTransparency"] = 0.9;
G2L["1ff"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1ff"]["Image"] = [[rbxassetid://94680501858633]];
G2L["1ff"]["Size"] = UDim2.new(1, 22, 1, 22);
G2L["1ff"]["BackgroundTransparency"] = 1;
G2L["1ff"]["Name"] = [[DropShadow]];
G2L["1ff"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow.Accent
G2L["200"] = Instance.new("UIGradient", G2L["1ff"]);
G2L["200"]["Name"] = [[Accent]];
G2L["200"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.Accent
G2L["201"] = Instance.new("UIGradient", G2L["1fd"]);
G2L["201"]["Name"] = [[Accent]];
G2L["201"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.UICorner
G2L["202"] = Instance.new("UICorner", G2L["1fd"]);
G2L["202"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.Knob
G2L["203"] = Instance.new("Frame", G2L["1fd"]);
G2L["203"]["ZIndex"] = 5;
G2L["203"]["BorderSizePixel"] = 0;
G2L["203"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["203"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["203"]["Size"] = UDim2.new(0, 8, 0, 8);
G2L["203"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["203"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["203"]["Name"] = [[Knob]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.Knob.DropShadowHolder
G2L["204"] = Instance.new("Frame", G2L["203"]);
G2L["204"]["ZIndex"] = 0;
G2L["204"]["BorderSizePixel"] = 0;
G2L["204"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["204"]["Name"] = [[DropShadowHolder]];
G2L["204"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.Knob.DropShadowHolder.DropShadow
G2L["205"] = Instance.new("ImageLabel", G2L["204"]);
G2L["205"]["ZIndex"] = 4;
G2L["205"]["BorderSizePixel"] = 0;
G2L["205"]["SliceCenter"] = Rect.new(100, 100, 500, 500);
G2L["205"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["205"]["ImageTransparency"] = 0.7;
G2L["205"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["205"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["205"]["Image"] = [[rbxassetid://94680501858633]];
G2L["205"]["Size"] = UDim2.new(1, 14, 1, 14);
G2L["205"]["BackgroundTransparency"] = 1;
G2L["205"]["Name"] = [[DropShadow]];
G2L["205"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.Knob.UICorner
G2L["206"] = Instance.new("UICorner", G2L["203"]);
G2L["206"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.PART_Progress.Knob.Interact
G2L["207"] = Instance.new("ImageButton", G2L["203"]);
G2L["207"]["BorderSizePixel"] = 0;
G2L["207"]["ImageTransparency"] = 1;
G2L["207"]["BackgroundTransparency"] = 1;
G2L["207"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["207"]["ZIndex"] = 5;
G2L["207"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["207"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["207"]["Size"] = UDim2.new(1, 7, 1, 7);
G2L["207"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["207"]["Name"] = [[Interact]];
G2L["207"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.UIStroke
G2L["208"] = Instance.new("UIStroke", G2L["1fc"]);
G2L["208"]["Transparency"] = 0.5;
G2L["208"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["208"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.Interact
G2L["209"] = Instance.new("TextButton", G2L["1fc"]);
G2L["209"]["BorderSizePixel"] = 0;
G2L["209"]["TextSize"] = 14;
G2L["209"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["209"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["209"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["209"]["ZIndex"] = 4;
G2L["209"]["BackgroundTransparency"] = 1;
G2L["209"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["209"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["209"]["Text"] = [[]];
G2L["209"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.PART_Backdrop.UICorner
G2L["20a"] = Instance.new("UICorner", G2L["1fc"]);
G2L["20a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Slider_TEMPLATE.UIPadding
G2L["20b"] = Instance.new("UIPadding", G2L["1ef"]);
G2L["20b"]["PaddingRight"] = UDim.new(0, 3);
G2L["20b"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Divider
G2L["20c"] = Instance.new("Frame", G2L["15c"]);
G2L["20c"]["ZIndex"] = 4;
G2L["20c"]["BorderSizePixel"] = 0;
G2L["20c"]["BackgroundColor3"] = Color3.fromRGB(182, 199, 232);
G2L["20c"]["Size"] = UDim2.new(1, -10, 0, 12);
G2L["20c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20c"]["Name"] = [[Divider]];
G2L["20c"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Divider.PART_Line
G2L["20d"] = Instance.new("Frame", G2L["20c"]);
G2L["20d"]["ZIndex"] = 4;
G2L["20d"]["BorderSizePixel"] = 0;
G2L["20d"]["BackgroundColor3"] = Color3.fromRGB(118, 129, 150);
G2L["20d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["20d"]["Size"] = UDim2.new(1, -10, 0, 1);
G2L["20d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["20d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20d"]["Name"] = [[PART_Line]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Divider.PART_Line.UIGradient
G2L["20e"] = Instance.new("UIGradient", G2L["20d"]);
G2L["20e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.725),NumberSequenceKeypoint.new(0.370, 0.2),NumberSequenceKeypoint.new(0.923, 0.8625),NumberSequenceKeypoint.new(1.000, 0.7375)};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE
G2L["20f"] = Instance.new("Frame", G2L["15c"]);
G2L["20f"]["ZIndex"] = 4;
G2L["20f"]["BorderSizePixel"] = 0;
G2L["20f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20f"]["Size"] = UDim2.new(0, 100, 0, 35);
G2L["20f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20f"]["Name"] = [[Input_TEMPLATE]];
G2L["20f"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.Header
G2L["210"] = Instance.new("TextLabel", G2L["20f"]);
G2L["210"]["ZIndex"] = 5;
G2L["210"]["BorderSizePixel"] = 0;
G2L["210"]["TextSize"] = 15;
G2L["210"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["210"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["210"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["210"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["210"]["BackgroundTransparency"] = 1;
G2L["210"]["RichText"] = true;
G2L["210"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["210"]["Size"] = UDim2.new(0, 200, 0, 20);
G2L["210"]["ClipsDescendants"] = true;
G2L["210"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["210"]["Text"] = [[Dynamic Input Example]];
G2L["210"]["LayoutOrder"] = -1;
G2L["210"]["Name"] = [[Header]];
G2L["210"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.Header.Icon
G2L["211"] = Instance.new("ImageLabel", G2L["210"]);
G2L["211"]["ZIndex"] = 6;
G2L["211"]["BorderSizePixel"] = 0;
G2L["211"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["211"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["211"]["Image"] = [[rbxassetid://10734982297]];
G2L["211"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["211"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["211"]["BackgroundTransparency"] = 1;
G2L["211"]["Name"] = [[Icon]];
G2L["211"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.Header.Icon.Accent
G2L["212"] = Instance.new("UIGradient", G2L["211"]);
G2L["212"]["Enabled"] = false;
G2L["212"]["Name"] = [[Accent]];
G2L["212"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.Header.UIPadding
G2L["213"] = Instance.new("UIPadding", G2L["210"]);
G2L["213"]["PaddingLeft"] = UDim.new(0, 32);
G2L["213"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.Lock_Overlay
G2L["214"] = Instance.new("Frame", G2L["20f"]);
G2L["214"]["Visible"] = false;
G2L["214"]["ZIndex"] = 30;
G2L["214"]["BorderSizePixel"] = 0;
G2L["214"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["214"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["214"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["214"]["Name"] = [[Lock_Overlay]];
G2L["214"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.Lock_Overlay.Header
G2L["215"] = Instance.new("TextLabel", G2L["214"]);
G2L["215"]["ZIndex"] = 30;
G2L["215"]["BorderSizePixel"] = 0;
G2L["215"]["TextSize"] = 15;
G2L["215"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["215"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["215"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["215"]["BackgroundTransparency"] = 1;
G2L["215"]["RichText"] = true;
G2L["215"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["215"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["215"]["ClipsDescendants"] = true;
G2L["215"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["215"]["Text"] = [[Locked Element]];
G2L["215"]["LayoutOrder"] = -1;
G2L["215"]["Name"] = [[Header]];
G2L["215"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.Lock_Overlay.UICorner
G2L["216"] = Instance.new("UICorner", G2L["214"]);
G2L["216"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop
G2L["217"] = Instance.new("Frame", G2L["20f"]);
G2L["217"]["Active"] = true;
G2L["217"]["ZIndex"] = 4;
G2L["217"]["BorderSizePixel"] = 0;
G2L["217"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["217"]["Selectable"] = true;
G2L["217"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["217"]["ClipsDescendants"] = true;
G2L["217"]["Size"] = UDim2.new(0, 124, 0, 26);
G2L["217"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["217"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["217"]["Name"] = [[PART_Backdrop]];
G2L["217"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop.PART_Input
G2L["218"] = Instance.new("TextBox", G2L["217"]);
G2L["218"]["Name"] = [[PART_Input]];
G2L["218"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["218"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["218"]["ZIndex"] = 5;
G2L["218"]["BorderSizePixel"] = 0;
G2L["218"]["TextSize"] = 14;
G2L["218"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["218"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["218"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["218"]["RichText"] = true;
G2L["218"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["218"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["218"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["218"]["ClearTextOnFocus"] = false;
G2L["218"]["ClipsDescendants"] = true;
G2L["218"]["PlaceholderText"] = [[Placeholder Text]];
G2L["218"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["218"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["218"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["218"]["Text"] = [[]];
G2L["218"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop.PART_Input.UISizeConstraint
G2L["219"] = Instance.new("UISizeConstraint", G2L["218"]);
G2L["219"]["MinSize"] = Vector2.new(2, 0);
G2L["219"]["MaxSize"] = Vector2.new(120, inf);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop.UISizeConstraint
G2L["21a"] = Instance.new("UISizeConstraint", G2L["217"]);
G2L["21a"]["MinSize"] = Vector2.new(2, 0);
G2L["21a"]["MaxSize"] = Vector2.new(150, inf);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop.UIPadding
G2L["21b"] = Instance.new("UIPadding", G2L["217"]);
G2L["21b"]["PaddingRight"] = UDim.new(0, 15);
G2L["21b"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop.UICorner
G2L["21c"] = Instance.new("UICorner", G2L["217"]);
G2L["21c"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop.UIStroke
G2L["21d"] = Instance.new("UIStroke", G2L["217"]);
G2L["21d"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["21d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.PART_Backdrop.Interact
G2L["21e"] = Instance.new("TextBox", G2L["217"]);
G2L["21e"]["Name"] = [[Interact]];
G2L["21e"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["21e"]["ZIndex"] = 4;
G2L["21e"]["BorderSizePixel"] = 0;
G2L["21e"]["TextTransparency"] = 1;
G2L["21e"]["TextSize"] = 1;
G2L["21e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21e"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["21e"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["21e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21e"]["Text"] = [[]];
G2L["21e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Input_TEMPLATE.UIPadding
G2L["21f"] = Instance.new("UIPadding", G2L["20f"]);
G2L["21f"]["PaddingRight"] = UDim.new(0, 3);
G2L["21f"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE
G2L["220"] = Instance.new("Frame", G2L["15c"]);
G2L["220"]["ZIndex"] = 4;
G2L["220"]["BorderSizePixel"] = 0;
G2L["220"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["220"]["Size"] = UDim2.new(0, 100, 0, 36);
G2L["220"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["220"]["Name"] = [[Label_TEMPLATE]];
G2L["220"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.Header
G2L["221"] = Instance.new("TextLabel", G2L["220"]);
G2L["221"]["ZIndex"] = 5;
G2L["221"]["BorderSizePixel"] = 0;
G2L["221"]["TextSize"] = 15;
G2L["221"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["221"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["221"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["221"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["221"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["221"]["BackgroundTransparency"] = 1;
G2L["221"]["RichText"] = true;
G2L["221"]["Size"] = UDim2.new(0, 315, 0, 20);
G2L["221"]["ClipsDescendants"] = true;
G2L["221"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["221"]["Text"] = [[Label Example]];
G2L["221"]["LayoutOrder"] = -1;
G2L["221"]["Name"] = [[Header]];
G2L["221"]["Position"] = UDim2.new(0, 0, 0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.Header.Icon
G2L["222"] = Instance.new("ImageLabel", G2L["221"]);
G2L["222"]["ZIndex"] = 6;
G2L["222"]["BorderSizePixel"] = 0;
G2L["222"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["222"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["222"]["Image"] = [[http://www.roblox.com/asset/?id=6031079158]];
G2L["222"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["222"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["222"]["BackgroundTransparency"] = 1;
G2L["222"]["Name"] = [[Icon]];
G2L["222"]["Position"] = UDim2.new(0, -26, 0.5, -1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.Header.Icon.Accent
G2L["223"] = Instance.new("UIGradient", G2L["222"]);
G2L["223"]["Enabled"] = false;
G2L["223"]["Name"] = [[Accent]];
G2L["223"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.Header.UIPadding
G2L["224"] = Instance.new("UIPadding", G2L["221"]);
G2L["224"]["PaddingTop"] = UDim.new(0, 2);
G2L["224"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.Lock_Overlay
G2L["225"] = Instance.new("Frame", G2L["220"]);
G2L["225"]["Visible"] = false;
G2L["225"]["ZIndex"] = 30;
G2L["225"]["BorderSizePixel"] = 0;
G2L["225"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["225"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["225"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["225"]["Name"] = [[Lock_Overlay]];
G2L["225"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.Lock_Overlay.Header
G2L["226"] = Instance.new("TextLabel", G2L["225"]);
G2L["226"]["ZIndex"] = 30;
G2L["226"]["BorderSizePixel"] = 0;
G2L["226"]["TextSize"] = 15;
G2L["226"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["226"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["226"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["226"]["BackgroundTransparency"] = 1;
G2L["226"]["RichText"] = true;
G2L["226"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["226"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["226"]["ClipsDescendants"] = true;
G2L["226"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["226"]["Text"] = [[Locked Element]];
G2L["226"]["LayoutOrder"] = -1;
G2L["226"]["Name"] = [[Header]];
G2L["226"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.Lock_Overlay.UICorner
G2L["227"] = Instance.new("UICorner", G2L["225"]);
G2L["227"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer
G2L["228"] = Instance.new("Frame", G2L["220"]);
G2L["228"]["ZIndex"] = 5;
G2L["228"]["BorderSizePixel"] = 0;
G2L["228"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["228"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["228"]["Size"] = UDim2.new(0, 177, 0, 36);
G2L["228"]["Position"] = UDim2.new(1, -8, 0, 0);
G2L["228"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["228"]["Name"] = [[ElementContainer]];
G2L["228"]["LayoutOrder"] = -1;
G2L["228"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker
G2L["229"] = Instance.new("Frame", G2L["228"]);
G2L["229"]["Visible"] = false;
G2L["229"]["ZIndex"] = 7;
G2L["229"]["BorderSizePixel"] = 0;
G2L["229"]["BackgroundColor3"] = Color3.fromRGB(69, 255, 48);
G2L["229"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["229"]["Size"] = UDim2.new(0, 22, 0, 22);
G2L["229"]["Position"] = UDim2.new(1, -8, 0.5, 0);
G2L["229"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["229"]["Name"] = [[ColorPicker]];
G2L["229"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker.Interact
G2L["22a"] = Instance.new("TextButton", G2L["229"]);
G2L["22a"]["BorderSizePixel"] = 0;
G2L["22a"]["TextSize"] = 14;
G2L["22a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22a"]["ZIndex"] = 6;
G2L["22a"]["BackgroundTransparency"] = 0.99;
G2L["22a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["22a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22a"]["Text"] = [[]];
G2L["22a"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker.ColorDisplayBg
G2L["22b"] = Instance.new("ImageLabel", G2L["229"]);
G2L["22b"]["ZIndex"] = 6;
G2L["22b"]["BorderSizePixel"] = 0;
G2L["22b"]["SliceCenter"] = Rect.new(168, 165, 269, 281);
G2L["22b"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["22b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22b"]["Image"] = [[http://www.roblox.com/asset/?id=96978989117558]];
G2L["22b"]["TileSize"] = UDim2.new(0, 75, 0, 75);
G2L["22b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["22b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22b"]["BackgroundTransparency"] = 0.7;
G2L["22b"]["Name"] = [[ColorDisplayBg]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker.ColorDisplayBg.UICorner
G2L["22c"] = Instance.new("UICorner", G2L["22b"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker.DropShadowHolder
G2L["22d"] = Instance.new("Frame", G2L["229"]);
G2L["22d"]["ZIndex"] = 0;
G2L["22d"]["BorderSizePixel"] = 0;
G2L["22d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["22d"]["Name"] = [[DropShadowHolder]];
G2L["22d"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker.DropShadowHolder.DropShadow
G2L["22e"] = Instance.new("ImageLabel", G2L["22d"]);
G2L["22e"]["ZIndex"] = 4;
G2L["22e"]["BorderSizePixel"] = 0;
G2L["22e"]["SliceCenter"] = Rect.new(100, 119, 500, 472);
G2L["22e"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["22e"]["ImageTransparency"] = 0.35;
G2L["22e"]["ImageColor3"] = Color3.fromRGB(159, 225, 152);
G2L["22e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["22e"]["Image"] = [[rbxassetid://94680501858633]];
G2L["22e"]["Size"] = UDim2.new(1, 22, 1, 22);
G2L["22e"]["BackgroundTransparency"] = 1;
G2L["22e"]["Name"] = [[DropShadow]];
G2L["22e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker.UICorner
G2L["22f"] = Instance.new("UICorner", G2L["229"]);
G2L["22f"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.ColorPicker.UIStroke
G2L["230"] = Instance.new("UIStroke", G2L["229"]);
G2L["230"]["Transparency"] = 0.85;
G2L["230"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.Bind
G2L["231"] = Instance.new("TextBox", G2L["228"]);
G2L["231"]["Visible"] = false;
G2L["231"]["Name"] = [[Bind]];
G2L["231"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["231"]["ZIndex"] = 4;
G2L["231"]["BorderSizePixel"] = 0;
G2L["231"]["TextSize"] = 12;
G2L["231"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["231"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["231"]["RichText"] = true;
G2L["231"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["231"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["231"]["PlaceholderText"] = [[Press A Key...]];
G2L["231"]["Size"] = UDim2.new(0, 22, 0, 22);
G2L["231"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["231"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["231"]["Text"] = [[Q]];
G2L["231"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.Bind.UISizeConstraint
G2L["232"] = Instance.new("UISizeConstraint", G2L["231"]);
G2L["232"]["MinSize"] = Vector2.new(22, 0);
G2L["232"]["MaxSize"] = Vector2.new(inf, 22);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.Bind.UICorner
G2L["233"] = Instance.new("UICorner", G2L["231"]);
G2L["233"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.Bind.UIStroke
G2L["234"] = Instance.new("UIStroke", G2L["231"]);
G2L["234"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["234"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.ElementContainer.UIListLayout
G2L["235"] = Instance.new("UIListLayout", G2L["228"]);
G2L["235"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
G2L["235"]["Padding"] = UDim.new(0, 6);
G2L["235"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["235"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["235"]["ItemLineAlignment"] = Enum.ItemLineAlignment.Start;
G2L["235"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder
G2L["236"] = Instance.new("Frame", G2L["220"]);
G2L["236"]["Active"] = true;
G2L["236"]["ZIndex"] = 4;
G2L["236"]["BorderSizePixel"] = 0;
G2L["236"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["236"]["Selectable"] = true;
G2L["236"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["236"]["Size"] = UDim2.new(1, -12, 0, 30);
G2L["236"]["Position"] = UDim2.new(0, 6, 0, 38);
G2L["236"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["236"]["Name"] = [[DropdownHolder]];
G2L["236"]["LayoutOrder"] = 1;
G2L["236"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.UIListLayout
G2L["237"] = Instance.new("UIListLayout", G2L["236"]);
G2L["237"]["Padding"] = UDim.new(0, 6);
G2L["237"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown
G2L["238"] = Instance.new("Frame", G2L["236"]);
G2L["238"]["Visible"] = false;
G2L["238"]["Active"] = true;
G2L["238"]["ZIndex"] = 4;
G2L["238"]["BorderSizePixel"] = 0;
G2L["238"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["238"]["Selectable"] = true;
G2L["238"]["ClipsDescendants"] = true;
G2L["238"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["238"]["Position"] = UDim2.new(0, 6, 0, 38);
G2L["238"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["238"]["Name"] = [[Dropdown]];
G2L["238"]["LayoutOrder"] = 1;
G2L["238"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.Icon
G2L["239"] = Instance.new("ImageButton", G2L["238"]);
G2L["239"]["Active"] = false;
G2L["239"]["BorderSizePixel"] = 0;
G2L["239"]["BackgroundTransparency"] = 1;
G2L["239"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["239"]["Selectable"] = false;
G2L["239"]["ZIndex"] = 5;
G2L["239"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["239"]["Image"] = [[rbxassetid://3926305904]];
G2L["239"]["ImageRectSize"] = Vector2.new(36, 36);
G2L["239"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["239"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["239"]["Name"] = [[Icon]];
G2L["239"]["ImageRectOffset"] = Vector2.new(764, 684);
G2L["239"]["Position"] = UDim2.new(1, 4, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.Interact
G2L["23a"] = Instance.new("TextButton", G2L["238"]);
G2L["23a"]["BorderSizePixel"] = 0;
G2L["23a"]["TextTransparency"] = 1;
G2L["23a"]["TextSize"] = 14;
G2L["23a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["23a"]["ZIndex"] = 5;
G2L["23a"]["BackgroundTransparency"] = 1;
G2L["23a"]["Size"] = UDim2.new(1, 18, 1, 12);
G2L["23a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23a"]["Text"] = [[]];
G2L["23a"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.Header
G2L["23b"] = Instance.new("TextBox", G2L["238"]);
G2L["23b"]["Active"] = false;
G2L["23b"]["Interactable"] = false;
G2L["23b"]["Name"] = [[Header]];
G2L["23b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23b"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["23b"]["ZIndex"] = 5;
G2L["23b"]["BorderSizePixel"] = 0;
G2L["23b"]["TextEditable"] = false;
G2L["23b"]["TextSize"] = 14;
G2L["23b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23b"]["RichText"] = true;
G2L["23b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["23b"]["Selectable"] = false;
G2L["23b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["23b"]["ClipsDescendants"] = true;
G2L["23b"]["PlaceholderText"] = [[--]];
G2L["23b"]["Size"] = UDim2.new(1, -18, 0, 20);
G2L["23b"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["23b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23b"]["Text"] = [[]];
G2L["23b"]["LayoutOrder"] = -1;
G2L["23b"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.Header.UIPadding
G2L["23c"] = Instance.new("UIPadding", G2L["23b"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.Truncater
G2L["23d"] = Instance.new("TextLabel", G2L["238"]);
G2L["23d"]["Interactable"] = false;
G2L["23d"]["ZIndex"] = 5;
G2L["23d"]["BorderSizePixel"] = 0;
G2L["23d"]["TextSize"] = 14;
G2L["23d"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["23d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["23d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23d"]["BackgroundTransparency"] = 1;
G2L["23d"]["RichText"] = true;
G2L["23d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["23d"]["Size"] = UDim2.new(0, 8, 0, 20);
G2L["23d"]["Visible"] = false;
G2L["23d"]["ClipsDescendants"] = true;
G2L["23d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23d"]["Text"] = [[...]];
G2L["23d"]["LayoutOrder"] = -1;
G2L["23d"]["Name"] = [[Truncater]];
G2L["23d"]["Position"] = UDim2.new(1, -18, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.Truncater.UIPadding
G2L["23e"] = Instance.new("UIPadding", G2L["23d"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.UIPadding
G2L["23f"] = Instance.new("UIPadding", G2L["238"]);
G2L["23f"]["PaddingTop"] = UDim.new(0, 6);
G2L["23f"]["PaddingRight"] = UDim.new(0, 10);
G2L["23f"]["PaddingLeft"] = UDim.new(0, 8);
G2L["23f"]["PaddingBottom"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.UICorner
G2L["240"] = Instance.new("UICorner", G2L["238"]);
G2L["240"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.DropdownHolder.Dropdown.UIStroke
G2L["241"] = Instance.new("UIStroke", G2L["238"]);
G2L["241"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["241"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Label_TEMPLATE.UIPadding
G2L["242"] = Instance.new("UIPadding", G2L["220"]);
G2L["242"]["PaddingRight"] = UDim.new(0, 3);
G2L["242"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE
G2L["243"] = Instance.new("Frame", G2L["15c"]);
G2L["243"]["ZIndex"] = 4;
G2L["243"]["BorderSizePixel"] = 0;
G2L["243"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["243"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["243"]["Size"] = UDim2.new(0, 100, 0, 0);
G2L["243"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["243"]["Name"] = [[Paragraph_TEMPLATE]];
G2L["243"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Header
G2L["244"] = Instance.new("TextLabel", G2L["243"]);
G2L["244"]["ZIndex"] = 5;
G2L["244"]["BorderSizePixel"] = 0;
G2L["244"]["TextSize"] = 15;
G2L["244"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["244"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["244"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["244"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["244"]["BackgroundTransparency"] = 1;
G2L["244"]["RichText"] = true;
G2L["244"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["244"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["244"]["ClipsDescendants"] = true;
G2L["244"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["244"]["Text"] = [[Paragraph Template]];
G2L["244"]["LayoutOrder"] = -1;
G2L["244"]["Name"] = [[Header]];
G2L["244"]["Position"] = UDim2.new(0, 0, 0, 15);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Header.Icon
G2L["245"] = Instance.new("ImageLabel", G2L["244"]);
G2L["245"]["ZIndex"] = 6;
G2L["245"]["BorderSizePixel"] = 0;
G2L["245"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["245"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["245"]["Image"] = [[rbxassetid://70823468274381]];
G2L["245"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["245"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["245"]["BackgroundTransparency"] = 1;
G2L["245"]["Name"] = [[Icon]];
G2L["245"]["Position"] = UDim2.new(0, -26, 0.5, 1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Header.Icon.Accent
G2L["246"] = Instance.new("UIGradient", G2L["245"]);
G2L["246"]["Enabled"] = false;
G2L["246"]["Name"] = [[Accent]];
G2L["246"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Header.UIPadding
G2L["247"] = Instance.new("UIPadding", G2L["244"]);
G2L["247"]["PaddingLeft"] = UDim.new(0, 32);
G2L["247"]["PaddingBottom"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Content
G2L["248"] = Instance.new("TextLabel", G2L["243"]);
G2L["248"]["TextWrapped"] = true;
G2L["248"]["LineHeight"] = 1.12;
G2L["248"]["ZIndex"] = 5;
G2L["248"]["BorderSizePixel"] = 0;
G2L["248"]["TextSize"] = 12;
G2L["248"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["248"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["248"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["248"]["FontFace"] = Font.new([[rbxassetid://12187365977]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["248"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["248"]["BackgroundTransparency"] = 1;
G2L["248"]["RichText"] = true;
G2L["248"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["248"]["ClipsDescendants"] = true;
G2L["248"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["248"]["Text"] = [[Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. ]];
G2L["248"]["LayoutOrder"] = -1;
G2L["248"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["248"]["Name"] = [[Content]];
G2L["248"]["Position"] = UDim2.new(0, 0, 0, 25);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Content.UIPadding
G2L["249"] = Instance.new("UIPadding", G2L["248"]);
G2L["249"]["PaddingRight"] = UDim.new(0, 6);
G2L["249"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Lock_Overlay
G2L["24a"] = Instance.new("Frame", G2L["243"]);
G2L["24a"]["Visible"] = false;
G2L["24a"]["ZIndex"] = 30;
G2L["24a"]["BorderSizePixel"] = 0;
G2L["24a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["24a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24a"]["Name"] = [[Lock_Overlay]];
G2L["24a"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Lock_Overlay.Header
G2L["24b"] = Instance.new("TextLabel", G2L["24a"]);
G2L["24b"]["ZIndex"] = 30;
G2L["24b"]["BorderSizePixel"] = 0;
G2L["24b"]["TextSize"] = 15;
G2L["24b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["24b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24b"]["BackgroundTransparency"] = 1;
G2L["24b"]["RichText"] = true;
G2L["24b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["24b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["24b"]["ClipsDescendants"] = true;
G2L["24b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24b"]["Text"] = [[Locked Element]];
G2L["24b"]["LayoutOrder"] = -1;
G2L["24b"]["Name"] = [[Header]];
G2L["24b"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.Lock_Overlay.UICorner
G2L["24c"] = Instance.new("UICorner", G2L["24a"]);
G2L["24c"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.Paragraph_TEMPLATE.UIPadding
G2L["24d"] = Instance.new("UIPadding", G2L["243"]);
G2L["24d"]["PaddingRight"] = UDim.new(0, 3);
G2L["24d"]["PaddingLeft"] = UDim.new(0, 3);
G2L["24d"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha
G2L["24e"] = Instance.new("Frame", G2L["15c"]);
G2L["24e"]["ZIndex"] = 4;
G2L["24e"]["BorderSizePixel"] = 0;
G2L["24e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24e"]["Size"] = UDim2.new(0, 100, 0, 35);
G2L["24e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24e"]["Name"] = [[ColorPicker_TEMPLATE_NoAlpha]];
G2L["24e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.Header
G2L["24f"] = Instance.new("TextLabel", G2L["24e"]);
G2L["24f"]["ZIndex"] = 5;
G2L["24f"]["BorderSizePixel"] = 0;
G2L["24f"]["TextSize"] = 15;
G2L["24f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["24f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24f"]["BackgroundTransparency"] = 1;
G2L["24f"]["RichText"] = true;
G2L["24f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["24f"]["Size"] = UDim2.new(0, 200, 0, 20);
G2L["24f"]["ClipsDescendants"] = true;
G2L["24f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24f"]["Text"] = [[Color Picker Example (No Alpha)]];
G2L["24f"]["LayoutOrder"] = -1;
G2L["24f"]["Name"] = [[Header]];
G2L["24f"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.Header.Icon
G2L["250"] = Instance.new("ImageLabel", G2L["24f"]);
G2L["250"]["ZIndex"] = 6;
G2L["250"]["BorderSizePixel"] = 0;
G2L["250"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["250"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["250"]["Image"] = [[http://www.roblox.com/asset/?id=6031625148]];
G2L["250"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["250"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["250"]["BackgroundTransparency"] = 1;
G2L["250"]["Name"] = [[Icon]];
G2L["250"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.Header.Icon.Accent
G2L["251"] = Instance.new("UIGradient", G2L["250"]);
G2L["251"]["Enabled"] = false;
G2L["251"]["Name"] = [[Accent]];
G2L["251"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.Header.UIPadding
G2L["252"] = Instance.new("UIPadding", G2L["24f"]);
G2L["252"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.ColorDisplay
G2L["253"] = Instance.new("Frame", G2L["24e"]);
G2L["253"]["ZIndex"] = 7;
G2L["253"]["BorderSizePixel"] = 0;
G2L["253"]["BackgroundColor3"] = Color3.fromRGB(255, 113, 232);
G2L["253"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["253"]["Size"] = UDim2.new(0, 22, 0, 22);
G2L["253"]["Position"] = UDim2.new(1, -8, 0.5, 0);
G2L["253"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["253"]["Name"] = [[ColorDisplay]];
G2L["253"]["LayoutOrder"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.ColorDisplay.Interact
G2L["254"] = Instance.new("TextButton", G2L["253"]);
G2L["254"]["BorderSizePixel"] = 0;
G2L["254"]["TextSize"] = 14;
G2L["254"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["254"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["254"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["254"]["ZIndex"] = 5;
G2L["254"]["BackgroundTransparency"] = 0.99;
G2L["254"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["254"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["254"]["Text"] = [[]];
G2L["254"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.ColorDisplay.DropShadowHolder
G2L["255"] = Instance.new("Frame", G2L["253"]);
G2L["255"]["ZIndex"] = 0;
G2L["255"]["BorderSizePixel"] = 0;
G2L["255"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["255"]["Name"] = [[DropShadowHolder]];
G2L["255"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.ColorDisplay.DropShadowHolder.DropShadow
G2L["256"] = Instance.new("ImageLabel", G2L["255"]);
G2L["256"]["ZIndex"] = 4;
G2L["256"]["BorderSizePixel"] = 0;
G2L["256"]["SliceCenter"] = Rect.new(100, 119, 500, 472);
G2L["256"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["256"]["ImageColor3"] = Color3.fromRGB(251, 111, 227);
G2L["256"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["256"]["Image"] = [[rbxassetid://94680501858633]];
G2L["256"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["256"]["BackgroundTransparency"] = 1;
G2L["256"]["Name"] = [[DropShadow]];
G2L["256"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.ColorDisplay.UICorner
G2L["257"] = Instance.new("UICorner", G2L["253"]);
G2L["257"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.Lock_Overlay
G2L["258"] = Instance.new("Frame", G2L["24e"]);
G2L["258"]["Visible"] = false;
G2L["258"]["ZIndex"] = 30;
G2L["258"]["BorderSizePixel"] = 0;
G2L["258"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["258"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["258"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["258"]["Name"] = [[Lock_Overlay]];
G2L["258"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.Lock_Overlay.Header
G2L["259"] = Instance.new("TextLabel", G2L["258"]);
G2L["259"]["ZIndex"] = 30;
G2L["259"]["BorderSizePixel"] = 0;
G2L["259"]["TextSize"] = 15;
G2L["259"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["259"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["259"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["259"]["BackgroundTransparency"] = 1;
G2L["259"]["RichText"] = true;
G2L["259"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["259"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["259"]["ClipsDescendants"] = true;
G2L["259"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["259"]["Text"] = [[Locked Element]];
G2L["259"]["LayoutOrder"] = -1;
G2L["259"]["Name"] = [[Header]];
G2L["259"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.Lock_Overlay.UICorner
G2L["25a"] = Instance.new("UICorner", G2L["258"]);
G2L["25a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE_NoAlpha.UIPadding
G2L["25b"] = Instance.new("UIPadding", G2L["24e"]);
G2L["25b"]["PaddingRight"] = UDim.new(0, 5);
G2L["25b"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE
G2L["25c"] = Instance.new("Frame", G2L["15c"]);
G2L["25c"]["ZIndex"] = 4;
G2L["25c"]["BorderSizePixel"] = 0;
G2L["25c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25c"]["Size"] = UDim2.new(0, 100, 0, 35);
G2L["25c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25c"]["Name"] = [[ColorPicker_TEMPLATE]];
G2L["25c"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.Header
G2L["25d"] = Instance.new("TextLabel", G2L["25c"]);
G2L["25d"]["ZIndex"] = 5;
G2L["25d"]["BorderSizePixel"] = 0;
G2L["25d"]["TextSize"] = 15;
G2L["25d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["25d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["25d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25d"]["BackgroundTransparency"] = 1;
G2L["25d"]["RichText"] = true;
G2L["25d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["25d"]["Size"] = UDim2.new(0, 200, 0, 20);
G2L["25d"]["ClipsDescendants"] = true;
G2L["25d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25d"]["Text"] = [[Color Picker Example]];
G2L["25d"]["LayoutOrder"] = -1;
G2L["25d"]["Name"] = [[Header]];
G2L["25d"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.Header.Icon
G2L["25e"] = Instance.new("ImageLabel", G2L["25d"]);
G2L["25e"]["ZIndex"] = 6;
G2L["25e"]["BorderSizePixel"] = 0;
G2L["25e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25e"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["25e"]["Image"] = [[http://www.roblox.com/asset/?id=6031625148]];
G2L["25e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["25e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25e"]["BackgroundTransparency"] = 1;
G2L["25e"]["Name"] = [[Icon]];
G2L["25e"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.Header.Icon.Accent
G2L["25f"] = Instance.new("UIGradient", G2L["25e"]);
G2L["25f"]["Enabled"] = false;
G2L["25f"]["Name"] = [[Accent]];
G2L["25f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.Header.UIPadding
G2L["260"] = Instance.new("UIPadding", G2L["25d"]);
G2L["260"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.ColorDisplay
G2L["261"] = Instance.new("Frame", G2L["25c"]);
G2L["261"]["ZIndex"] = 7;
G2L["261"]["BorderSizePixel"] = 0;
G2L["261"]["BackgroundColor3"] = Color3.fromRGB(69, 255, 48);
G2L["261"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["261"]["Size"] = UDim2.new(0, 22, 0, 22);
G2L["261"]["Position"] = UDim2.new(1, -8, 0.5, 0);
G2L["261"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["261"]["Name"] = [[ColorDisplay]];
G2L["261"]["LayoutOrder"] = 1;
G2L["261"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.ColorDisplay.Interact
G2L["262"] = Instance.new("TextButton", G2L["261"]);
G2L["262"]["BorderSizePixel"] = 0;
G2L["262"]["TextSize"] = 14;
G2L["262"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["262"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["262"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["262"]["ZIndex"] = 5;
G2L["262"]["BackgroundTransparency"] = 0.99;
G2L["262"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["262"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["262"]["Text"] = [[]];
G2L["262"]["Name"] = [[Interact]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.ColorDisplay.ColorDisplayBg
G2L["263"] = Instance.new("ImageLabel", G2L["261"]);
G2L["263"]["ZIndex"] = 6;
G2L["263"]["BorderSizePixel"] = 0;
G2L["263"]["SliceCenter"] = Rect.new(168, 165, 269, 281);
G2L["263"]["ScaleType"] = Enum.ScaleType.Tile;
G2L["263"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["263"]["Image"] = [[http://www.roblox.com/asset/?id=96978989117558]];
G2L["263"]["TileSize"] = UDim2.new(0, 75, 0, 75);
G2L["263"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["263"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["263"]["BackgroundTransparency"] = 0.7;
G2L["263"]["Name"] = [[ColorDisplayBg]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.ColorDisplay.ColorDisplayBg.UICorner
G2L["264"] = Instance.new("UICorner", G2L["263"]);
G2L["264"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.ColorDisplay.DropShadowHolder
G2L["265"] = Instance.new("Frame", G2L["261"]);
G2L["265"]["ZIndex"] = 0;
G2L["265"]["BorderSizePixel"] = 0;
G2L["265"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["265"]["Name"] = [[DropShadowHolder]];
G2L["265"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.ColorDisplay.DropShadowHolder.DropShadow
G2L["266"] = Instance.new("ImageLabel", G2L["265"]);
G2L["266"]["ZIndex"] = 4;
G2L["266"]["BorderSizePixel"] = 0;
G2L["266"]["SliceCenter"] = Rect.new(100, 119, 500, 472);
G2L["266"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["266"]["ImageTransparency"] = 0.35;
G2L["266"]["ImageColor3"] = Color3.fromRGB(159, 225, 152);
G2L["266"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["266"]["Image"] = [[rbxassetid://94680501858633]];
G2L["266"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["266"]["BackgroundTransparency"] = 1;
G2L["266"]["Name"] = [[DropShadow]];
G2L["266"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.ColorDisplay.UICorner
G2L["267"] = Instance.new("UICorner", G2L["261"]);
G2L["267"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.Lock_Overlay
G2L["268"] = Instance.new("Frame", G2L["25c"]);
G2L["268"]["Visible"] = false;
G2L["268"]["ZIndex"] = 30;
G2L["268"]["BorderSizePixel"] = 0;
G2L["268"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["268"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["268"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["268"]["Name"] = [[Lock_Overlay]];
G2L["268"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.Lock_Overlay.Header
G2L["269"] = Instance.new("TextLabel", G2L["268"]);
G2L["269"]["ZIndex"] = 30;
G2L["269"]["BorderSizePixel"] = 0;
G2L["269"]["TextSize"] = 15;
G2L["269"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["269"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["269"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["269"]["BackgroundTransparency"] = 1;
G2L["269"]["RichText"] = true;
G2L["269"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["269"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["269"]["ClipsDescendants"] = true;
G2L["269"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["269"]["Text"] = [[Locked Element]];
G2L["269"]["LayoutOrder"] = -1;
G2L["269"]["Name"] = [[Header]];
G2L["269"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.Lock_Overlay.UICorner
G2L["26a"] = Instance.new("UICorner", G2L["268"]);
G2L["26a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.PART_Content.ColorPicker_TEMPLATE.UIPadding
G2L["26b"] = Instance.new("UIPadding", G2L["25c"]);
G2L["26b"]["PaddingRight"] = UDim.new(0, 5);
G2L["26b"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.UICorner
G2L["26c"] = Instance.new("UICorner", G2L["156"]);
G2L["26c"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.Header
G2L["26d"] = Instance.new("TextLabel", G2L["156"]);
G2L["26d"]["ZIndex"] = 4;
G2L["26d"]["BorderSizePixel"] = 0;
G2L["26d"]["TextSize"] = 12;
G2L["26d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["26d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["26d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["26d"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["26d"]["BackgroundTransparency"] = 1;
G2L["26d"]["RichText"] = true;
G2L["26d"]["Size"] = UDim2.new(0, 200, 0, 20);
G2L["26d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26d"]["Text"] = [[LOREM IPSUM]];
G2L["26d"]["LayoutOrder"] = -1;
G2L["26d"]["Name"] = [[Header]];
G2L["26d"]["Position"] = UDim2.new(0, 6, 0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.Header.Icon
G2L["26e"] = Instance.new("ImageLabel", G2L["26d"]);
G2L["26e"]["ZIndex"] = 6;
G2L["26e"]["BorderSizePixel"] = 0;
G2L["26e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26e"]["ImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["26e"]["Image"] = [[rbxassetid://120839692818705]];
G2L["26e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["26e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26e"]["BackgroundTransparency"] = 1;
G2L["26e"]["Name"] = [[Icon]];
G2L["26e"]["Position"] = UDim2.new(0, -26, 0, -4);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.Header.Icon.Accent
G2L["26f"] = Instance.new("UIGradient", G2L["26e"]);
G2L["26f"]["Enabled"] = false;
G2L["26f"]["Name"] = [[Accent]];
G2L["26f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Groupbox_Style1.Header.UIPadding
G2L["270"] = Instance.new("UIPadding", G2L["26d"]);
G2L["270"]["PaddingTop"] = UDim.new(0, 6);
G2L["270"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Divider
G2L["271"] = Instance.new("Frame", G2L["153"]);
G2L["271"]["ZIndex"] = 3;
G2L["271"]["BorderSizePixel"] = 0;
G2L["271"]["BackgroundColor3"] = Color3.fromRGB(182, 199, 232);
G2L["271"]["Size"] = UDim2.new(1, 0, 0, 12);
G2L["271"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["271"]["Name"] = [[Divider]];
G2L["271"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Divider.PART_Line
G2L["272"] = Instance.new("Frame", G2L["271"]);
G2L["272"]["ZIndex"] = 3;
G2L["272"]["BorderSizePixel"] = 0;
G2L["272"]["BackgroundColor3"] = Color3.fromRGB(182, 199, 232);
G2L["272"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["272"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["272"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["272"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["272"]["Name"] = [[PART_Line]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Divider.PART_Line.UIGradient
G2L["273"] = Instance.new("UIGradient", G2L["272"]);
G2L["273"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.725),NumberSequenceKeypoint.new(0.370, 0.2),NumberSequenceKeypoint.new(0.923, 0.8625),NumberSequenceKeypoint.new(1.000, 0.7375)};
G2L["273"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(166, 166, 166)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(166, 166, 166))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1
G2L["274"] = Instance.new("Frame", G2L["153"]);
G2L["274"]["ZIndex"] = 4;
G2L["274"]["BorderSizePixel"] = 0;
G2L["274"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["274"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["274"]["Size"] = UDim2.new(0, 100, 0, 40);
G2L["274"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["274"]["Name"] = [[Tabbox_Style1]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Pages
G2L["275"] = Instance.new("Frame", G2L["274"]);
G2L["275"]["ZIndex"] = 4;
G2L["275"]["BorderSizePixel"] = 0;
G2L["275"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["275"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["275"]["Size"] = UDim2.new(0, 100, 0, 40);
G2L["275"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["275"]["Name"] = [[Pages]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Pages.UIPageLayout
G2L["276"] = Instance.new("UIPageLayout", G2L["275"]);
G2L["276"]["EasingStyle"] = Enum.EasingStyle.Exponential;
G2L["276"]["Circular"] = true;
G2L["276"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["276"]["TweenTime"] = 0.4;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Pages.Page_TEMPLATE
G2L["277"] = Instance.new("Frame", G2L["275"]);
G2L["277"]["ZIndex"] = 4;
G2L["277"]["BorderSizePixel"] = 0;
G2L["277"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["277"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["277"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["277"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["277"]["Name"] = [[Page_TEMPLATE]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Pages.Page_TEMPLATE.UIPadding
G2L["278"] = Instance.new("UIPadding", G2L["277"]);
G2L["278"]["PaddingTop"] = UDim.new(0, 6);
G2L["278"]["PaddingRight"] = UDim.new(0, 5);
G2L["278"]["PaddingLeft"] = UDim.new(0, 5);
G2L["278"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Pages.Page_TEMPLATE.UIListLayout
G2L["279"] = Instance.new("UIListLayout", G2L["277"]);
G2L["279"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["279"]["Padding"] = UDim.new(0, 5);
G2L["279"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Pages.Page_TEMPLATE.UICorner
G2L["27a"] = Instance.new("UICorner", G2L["277"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Pages.UICorner
G2L["27b"] = Instance.new("UICorner", G2L["275"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header
G2L["27c"] = Instance.new("ScrollingFrame", G2L["274"]);
G2L["27c"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["27c"]["ZIndex"] = 4;
G2L["27c"]["BorderSizePixel"] = 0;
G2L["27c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["27c"]["Name"] = [[Header]];
G2L["27c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27c"]["Selectable"] = false;
G2L["27c"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["27c"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["27c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27c"]["ScrollBarThickness"] = 0;
G2L["27c"]["LayoutOrder"] = -1;
G2L["27c"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header
G2L["27d"] = Instance.new("TextButton", G2L["27c"]);
G2L["27d"]["RichText"] = true;
G2L["27d"]["BorderSizePixel"] = 0;
G2L["27d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["27d"]["TextSize"] = 12;
G2L["27d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["27d"]["Selectable"] = false;
G2L["27d"]["ZIndex"] = 4;
G2L["27d"]["BackgroundTransparency"] = 0.85;
G2L["27d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["27d"]["Size"] = UDim2.new(0, 0, 0, 24);
G2L["27d"]["LayoutOrder"] = -1;
G2L["27d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27d"]["Text"] = [[ACTIVE TAB]];
G2L["27d"]["Name"] = [[Header]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.Icon
G2L["27e"] = Instance.new("ImageLabel", G2L["27d"]);
G2L["27e"]["ZIndex"] = 6;
G2L["27e"]["BorderSizePixel"] = 0;
G2L["27e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27e"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["27e"]["Image"] = [[http://www.roblox.com/asset/?id=6031079158]];
G2L["27e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["27e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27e"]["BackgroundTransparency"] = 1;
G2L["27e"]["Name"] = [[Icon]];
G2L["27e"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.Icon.Accent
G2L["27f"] = Instance.new("UIGradient", G2L["27e"]);
G2L["27f"]["Name"] = [[Accent]];
G2L["27f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.UICorner
G2L["280"] = Instance.new("UICorner", G2L["27d"]);
G2L["280"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.Accent
G2L["281"] = Instance.new("UIGradient", G2L["27d"]);
G2L["281"]["Name"] = [[Accent]];
G2L["281"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.UIPadding
G2L["282"] = Instance.new("UIPadding", G2L["27d"]);
G2L["282"]["PaddingTop"] = UDim.new(0, 1);
G2L["282"]["PaddingRight"] = UDim.new(0, 6);
G2L["282"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header
G2L["283"] = Instance.new("TextButton", G2L["27c"]);
G2L["283"]["RichText"] = true;
G2L["283"]["BorderSizePixel"] = 0;
G2L["283"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["283"]["TextSize"] = 12;
G2L["283"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["283"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["283"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["283"]["Selectable"] = false;
G2L["283"]["ZIndex"] = 4;
G2L["283"]["BackgroundTransparency"] = 1;
G2L["283"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["283"]["Size"] = UDim2.new(0, 0, 0, 24);
G2L["283"]["LayoutOrder"] = -1;
G2L["283"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["283"]["Text"] = [[INACTIVE TAB]];
G2L["283"]["Name"] = [[Header]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.UIPadding
G2L["284"] = Instance.new("UIPadding", G2L["283"]);
G2L["284"]["PaddingTop"] = UDim.new(0, 1);
G2L["284"]["PaddingRight"] = UDim.new(0, 6);
G2L["284"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.Icon
G2L["285"] = Instance.new("ImageLabel", G2L["283"]);
G2L["285"]["ZIndex"] = 6;
G2L["285"]["BorderSizePixel"] = 0;
G2L["285"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["285"]["ImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["285"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["285"]["Image"] = [[rbxassetid://88617414241211]];
G2L["285"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["285"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["285"]["BackgroundTransparency"] = 1;
G2L["285"]["Name"] = [[Icon]];
G2L["285"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.Icon.Accent
G2L["286"] = Instance.new("UIGradient", G2L["285"]);
G2L["286"]["Enabled"] = false;
G2L["286"]["Name"] = [[Accent]];
G2L["286"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.UICorner
G2L["287"] = Instance.new("UICorner", G2L["283"]);
G2L["287"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.Header.Accent
G2L["288"] = Instance.new("UIGradient", G2L["283"]);
G2L["288"]["Enabled"] = false;
G2L["288"]["Name"] = [[Accent]];
G2L["288"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.Header.UIListLayout
G2L["289"] = Instance.new("UIListLayout", G2L["27c"]);
G2L["289"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["289"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["289"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.UIPadding
G2L["28a"] = Instance.new("UIPadding", G2L["274"]);
G2L["28a"]["PaddingTop"] = UDim.new(0, 6);
G2L["28a"]["PaddingRight"] = UDim.new(0, 5);
G2L["28a"]["PaddingLeft"] = UDim.new(0, 5);
G2L["28a"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.UIListLayout
G2L["28b"] = Instance.new("UIListLayout", G2L["274"]);
G2L["28b"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["28b"]["Padding"] = UDim.new(0, 5);
G2L["28b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.Tabbox_Style1.UICorner
G2L["28c"] = Instance.new("UICorner", G2L["274"]);
G2L["28c"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate.todo
G2L["28d"] = Instance.new("StringValue", G2L["153"]);
G2L["28d"]["Name"] = [[todo]];
G2L["28d"]["Value"] = [[redo tabboxes]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2
G2L["28e"] = Instance.new("ScrollingFrame", G2L["152"]);
G2L["28e"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["28e"]["ZIndex"] = 3;
G2L["28e"]["BorderSizePixel"] = 0;
G2L["28e"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["28e"]["SelectionOrder"] = 2;
G2L["28e"]["Name"] = [[ScrollingCollumnTemplate2]];
G2L["28e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28e"]["Selectable"] = false;
G2L["28e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["28e"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["28e"]["Size"] = UDim2.new(0.5, 0, 1, -10);
G2L["28e"]["Position"] = UDim2.new(1, -10, 0, 10);
G2L["28e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28e"]["ScrollBarThickness"] = 0;
G2L["28e"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2
G2L["28f"] = Instance.new("Frame", G2L["28e"]);
G2L["28f"]["ZIndex"] = 4;
G2L["28f"]["BorderSizePixel"] = 0;
G2L["28f"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["28f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["28f"]["Size"] = UDim2.new(0, 100, 0, 40);
G2L["28f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28f"]["Name"] = [[Tabbox_Style2]];
G2L["28f"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.PART_Backdrop
G2L["290"] = Instance.new("Frame", G2L["28f"]);
G2L["290"]["ZIndex"] = 4;
G2L["290"]["BorderSizePixel"] = 0;
G2L["290"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["290"]["Size"] = UDim2.new(1, 0, 0, 16);
G2L["290"]["Position"] = UDim2.new(0, 0, 0, 32);
G2L["290"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["290"]["Name"] = [[PART_Backdrop]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.PART_Backdrop.UICorner
G2L["291"] = Instance.new("UICorner", G2L["290"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.PART_Content
G2L["292"] = Instance.new("Frame", G2L["28f"]);
G2L["292"]["ZIndex"] = 4;
G2L["292"]["BorderSizePixel"] = 0;
G2L["292"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["292"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["292"]["Size"] = UDim2.new(1, 0, 0, 16);
G2L["292"]["Position"] = UDim2.new(0, 0, 0, 32);
G2L["292"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["292"]["Name"] = [[PART_Content]];
G2L["292"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.PART_Content.UIPadding
G2L["293"] = Instance.new("UIPadding", G2L["292"]);
G2L["293"]["PaddingTop"] = UDim.new(0, 8);
G2L["293"]["PaddingRight"] = UDim.new(0, 5);
G2L["293"]["PaddingLeft"] = UDim.new(0, 5);
G2L["293"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.PART_Content.UIListLayout
G2L["294"] = Instance.new("UIListLayout", G2L["292"]);
G2L["294"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["294"]["Padding"] = UDim.new(0, 5);
G2L["294"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.PART_Content.UICorner
G2L["295"] = Instance.new("UICorner", G2L["292"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header
G2L["296"] = Instance.new("Frame", G2L["28f"]);
G2L["296"]["ZIndex"] = 4;
G2L["296"]["BorderSizePixel"] = 0;
G2L["296"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["296"]["Size"] = UDim2.new(0, 200, 0, 25);
G2L["296"]["Position"] = UDim2.new(0, 0, 0, 4);
G2L["296"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["296"]["Name"] = [[Header]];
G2L["296"]["LayoutOrder"] = -1;
G2L["296"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header
G2L["297"] = Instance.new("TextButton", G2L["296"]);
G2L["297"]["Active"] = false;
G2L["297"]["RichText"] = true;
G2L["297"]["BorderSizePixel"] = 0;
G2L["297"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["297"]["TextSize"] = 12;
G2L["297"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["297"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["297"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["297"]["Selectable"] = false;
G2L["297"]["ZIndex"] = 4;
G2L["297"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["297"]["BackgroundTransparency"] = 0.8;
G2L["297"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["297"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["297"]["LayoutOrder"] = -1;
G2L["297"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["297"]["Text"] = [[ACTIVE TAB]];
G2L["297"]["Name"] = [[Header]];
G2L["297"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.UIPadding
G2L["298"] = Instance.new("UIPadding", G2L["297"]);
G2L["298"]["PaddingTop"] = UDim.new(0, 1);
G2L["298"]["PaddingRight"] = UDim.new(0, 6);
G2L["298"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.Icon
G2L["299"] = Instance.new("ImageLabel", G2L["297"]);
G2L["299"]["ZIndex"] = 6;
G2L["299"]["BorderSizePixel"] = 0;
G2L["299"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["299"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["299"]["Image"] = [[http://www.roblox.com/asset/?id=6031079158]];
G2L["299"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["299"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["299"]["BackgroundTransparency"] = 1;
G2L["299"]["Name"] = [[Icon]];
G2L["299"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.Icon.Accent
G2L["29a"] = Instance.new("UIGradient", G2L["299"]);
G2L["29a"]["Name"] = [[Accent]];
G2L["29a"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.UICorner
G2L["29b"] = Instance.new("UICorner", G2L["297"]);
G2L["29b"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.Accent
G2L["29c"] = Instance.new("UIGradient", G2L["297"]);
G2L["29c"]["Name"] = [[Accent]];
G2L["29c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header
G2L["29d"] = Instance.new("TextButton", G2L["296"]);
G2L["29d"]["Active"] = false;
G2L["29d"]["RichText"] = true;
G2L["29d"]["BorderSizePixel"] = 0;
G2L["29d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["29d"]["TextSize"] = 12;
G2L["29d"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["29d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["29d"]["Selectable"] = false;
G2L["29d"]["ZIndex"] = 4;
G2L["29d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["29d"]["BackgroundTransparency"] = 1;
G2L["29d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["29d"]["Size"] = UDim2.new(0, 0, 0, 25);
G2L["29d"]["LayoutOrder"] = -1;
G2L["29d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29d"]["Text"] = [[INACTIVE TAB]];
G2L["29d"]["Name"] = [[Header]];
G2L["29d"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.UIPadding
G2L["29e"] = Instance.new("UIPadding", G2L["29d"]);
G2L["29e"]["PaddingTop"] = UDim.new(0, 1);
G2L["29e"]["PaddingRight"] = UDim.new(0, 6);
G2L["29e"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.Icon
G2L["29f"] = Instance.new("ImageLabel", G2L["29d"]);
G2L["29f"]["ZIndex"] = 6;
G2L["29f"]["BorderSizePixel"] = 0;
G2L["29f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29f"]["ImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["29f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["29f"]["Image"] = [[rbxassetid://88617414241211]];
G2L["29f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["29f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29f"]["BackgroundTransparency"] = 1;
G2L["29f"]["Name"] = [[Icon]];
G2L["29f"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.Icon.Accent
G2L["2a0"] = Instance.new("UIGradient", G2L["29f"]);
G2L["2a0"]["Enabled"] = false;
G2L["2a0"]["Name"] = [[Accent]];
G2L["2a0"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.UICorner
G2L["2a1"] = Instance.new("UICorner", G2L["29d"]);
G2L["2a1"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.Header.Accent
G2L["2a2"] = Instance.new("UIGradient", G2L["29d"]);
G2L["2a2"]["Enabled"] = false;
G2L["2a2"]["Name"] = [[Accent]];
G2L["2a2"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.Header.UIListLayout
G2L["2a3"] = Instance.new("UIListLayout", G2L["296"]);
G2L["2a3"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["2a3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["2a3"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Tabbox_Style2.UICorner
G2L["2a4"] = Instance.new("UICorner", G2L["28f"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Divider
G2L["2a5"] = Instance.new("Frame", G2L["28e"]);
G2L["2a5"]["Visible"] = false;
G2L["2a5"]["ZIndex"] = 3;
G2L["2a5"]["BorderSizePixel"] = 0;
G2L["2a5"]["BackgroundColor3"] = Color3.fromRGB(182, 199, 232);
G2L["2a5"]["Size"] = UDim2.new(1, 0, 0, 12);
G2L["2a5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a5"]["Name"] = [[Divider]];
G2L["2a5"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Divider.PART_Line
G2L["2a6"] = Instance.new("Frame", G2L["2a5"]);
G2L["2a6"]["ZIndex"] = 3;
G2L["2a6"]["BorderSizePixel"] = 0;
G2L["2a6"]["BackgroundColor3"] = Color3.fromRGB(182, 199, 232);
G2L["2a6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2a6"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["2a6"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2a6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a6"]["Name"] = [[PART_Line]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Divider.PART_Line.UIGradient
G2L["2a7"] = Instance.new("UIGradient", G2L["2a6"]);
G2L["2a7"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.725),NumberSequenceKeypoint.new(0.370, 0.2),NumberSequenceKeypoint.new(0.923, 0.8625),NumberSequenceKeypoint.new(1.000, 0.7375)};
G2L["2a7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(166, 166, 166)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(166, 166, 166))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.UISizeConstraint
G2L["2a8"] = Instance.new("UISizeConstraint", G2L["28e"]);
G2L["2a8"]["MinSize"] = Vector2.new(300, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2
G2L["2a9"] = Instance.new("Frame", G2L["28e"]);
G2L["2a9"]["ZIndex"] = 4;
G2L["2a9"]["BorderSizePixel"] = 0;
G2L["2a9"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["2a9"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2a9"]["Size"] = UDim2.new(0, 0, 0, 40);
G2L["2a9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a9"]["Name"] = [[Groupbox_Style2]];
G2L["2a9"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Content
G2L["2aa"] = Instance.new("Frame", G2L["2a9"]);
G2L["2aa"]["ZIndex"] = 4;
G2L["2aa"]["BorderSizePixel"] = 0;
G2L["2aa"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["2aa"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["2aa"]["Size"] = UDim2.new(1, 0, 0, 16);
G2L["2aa"]["Position"] = UDim2.new(0, 0, 0, 32);
G2L["2aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2aa"]["Name"] = [[PART_Content]];
G2L["2aa"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Content.UIPadding
G2L["2ab"] = Instance.new("UIPadding", G2L["2aa"]);
G2L["2ab"]["PaddingTop"] = UDim.new(0, 15);
G2L["2ab"]["PaddingRight"] = UDim.new(0, 5);
G2L["2ab"]["PaddingLeft"] = UDim.new(0, 5);
G2L["2ab"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Content.UIListLayout
G2L["2ac"] = Instance.new("UIListLayout", G2L["2aa"]);
G2L["2ac"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2ac"]["Padding"] = UDim.new(0, 5);
G2L["2ac"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Content.UICorner
G2L["2ad"] = Instance.new("UICorner", G2L["2aa"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.UICorner
G2L["2ae"] = Instance.new("UICorner", G2L["2a9"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Backdrop
G2L["2af"] = Instance.new("Frame", G2L["2a9"]);
G2L["2af"]["ZIndex"] = 3;
G2L["2af"]["BorderSizePixel"] = 0;
G2L["2af"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["2af"]["Size"] = UDim2.new(1, -2, 1, -35);
G2L["2af"]["Position"] = UDim2.new(0, 1, 0, 33);
G2L["2af"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2af"]["Name"] = [[PART_Backdrop]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Backdrop.UICorner
G2L["2b0"] = Instance.new("UICorner", G2L["2af"]);
G2L["2b0"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Backdrop.UIStroke
G2L["2b1"] = Instance.new("UIStroke", G2L["2af"]);
G2L["2b1"]["Color"] = Color3.fromRGB(18, 20, 23);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Backdrop.Inner
G2L["2b2"] = Instance.new("Frame", G2L["2af"]);
G2L["2b2"]["ZIndex"] = 3;
G2L["2b2"]["BorderSizePixel"] = 0;
G2L["2b2"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["2b2"]["Size"] = UDim2.new(0, 339, 0, 25);
G2L["2b2"]["Position"] = UDim2.new(0, 1, 0, 1);
G2L["2b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b2"]["Name"] = [[Inner]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.PART_Backdrop.Inner.UICorner
G2L["2b3"] = Instance.new("UICorner", G2L["2b2"]);
G2L["2b3"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.Header
G2L["2b4"] = Instance.new("TextLabel", G2L["2a9"]);
G2L["2b4"]["ZIndex"] = 4;
G2L["2b4"]["BorderSizePixel"] = 0;
G2L["2b4"]["TextSize"] = 12;
G2L["2b4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b4"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2b4"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2b4"]["BackgroundTransparency"] = 1;
G2L["2b4"]["RichText"] = true;
G2L["2b4"]["Size"] = UDim2.new(0, 200, 0, 20);
G2L["2b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b4"]["Text"] = [[LOREM IPSUM]];
G2L["2b4"]["LayoutOrder"] = -1;
G2L["2b4"]["Name"] = [[Header]];
G2L["2b4"]["Position"] = UDim2.new(0, 0, 0, 6);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.Header.Icon
G2L["2b5"] = Instance.new("ImageLabel", G2L["2b4"]);
G2L["2b5"]["ZIndex"] = 6;
G2L["2b5"]["BorderSizePixel"] = 0;
G2L["2b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b5"]["ImageColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2b5"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["2b5"]["Image"] = [[rbxassetid://120839692818705]];
G2L["2b5"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["2b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b5"]["BackgroundTransparency"] = 1;
G2L["2b5"]["Name"] = [[Icon]];
G2L["2b5"]["Position"] = UDim2.new(0, -26, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.Header.Icon.Accent
G2L["2b6"] = Instance.new("UIGradient", G2L["2b5"]);
G2L["2b6"]["Enabled"] = false;
G2L["2b6"]["Name"] = [[Accent]];
G2L["2b6"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.Header.UIPadding
G2L["2b7"] = Instance.new("UIPadding", G2L["2b4"]);
G2L["2b7"]["PaddingLeft"] = UDim.new(0, 32);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.Groupbox_Style2.todo
G2L["2b8"] = Instance.new("StringValue", G2L["2a9"]);
G2L["2b8"]["Name"] = [[todo]];
G2L["2b8"]["Value"] = [[redo tabboxes]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.ScrollingCollumnTemplate2.UIListLayout
G2L["2b9"] = Instance.new("UIListLayout", G2L["28e"]);
G2L["2b9"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2b9"]["Padding"] = UDim.new(0, 8);
G2L["2b9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.UIPadding
G2L["2ba"] = Instance.new("UIPadding", G2L["152"]);
G2L["2ba"]["PaddingTop"] = UDim.new(0, 10);
G2L["2ba"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.Tab_TEMPLATE.UIListLayout
G2L["2bb"] = Instance.new("UIListLayout", G2L["152"]);
G2L["2bb"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["2bb"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2bb"]["Padding"] = UDim.new(0, 10);
G2L["2bb"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["2bb"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab
G2L["2bc"] = Instance.new("ScrollingFrame", G2L["14f"]);
G2L["2bc"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["2bc"]["ZIndex"] = 11;
G2L["2bc"]["BorderSizePixel"] = 0;
G2L["2bc"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["2bc"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
G2L["2bc"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["2bc"]["ScrollingEnabled"] = false;
G2L["2bc"]["Name"] = [[HomeTab]];
G2L["2bc"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["2bc"]["Selectable"] = false;
G2L["2bc"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["2bc"]["Size"] = UDim2.new(1, -10, 1, 0);
G2L["2bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2bc"]["ScrollBarThickness"] = 4;
G2L["2bc"]["LayoutOrder"] = 9999999;
G2L["2bc"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.ImageBackdrop
G2L["2bd"] = Instance.new("ImageLabel", G2L["2bc"]);
G2L["2bd"]["ZIndex"] = 4;
G2L["2bd"]["BorderSizePixel"] = 0;
G2L["2bd"]["ScaleType"] = Enum.ScaleType.Crop;
G2L["2bd"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["2bd"]["ImageTransparency"] = 0.6;
G2L["2bd"]["Image"] = [[rbxassetid://90278003646993]];
G2L["2bd"]["Size"] = UDim2.new(1, 20, 0.9, 0);
G2L["2bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2bd"]["Name"] = [[ImageBackdrop]];
G2L["2bd"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.ImageBackdrop.UIGradient
G2L["2be"] = Instance.new("UIGradient", G2L["2bd"]);
G2L["2be"]["Rotation"] = 90;
G2L["2be"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.190, 0),NumberSequenceKeypoint.new(0.197, 0),NumberSequenceKeypoint.new(0.445, 0.2),NumberSequenceKeypoint.new(0.571, 0.40625),NumberSequenceKeypoint.new(0.638, 0.625),NumberSequenceKeypoint.new(0.711, 0.76875),NumberSequenceKeypoint.new(0.833, 0.8875),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.UIPadding
G2L["2bf"] = Instance.new("UIPadding", G2L["2bc"]);
G2L["2bf"]["PaddingTop"] = UDim.new(0, 10);
G2L["2bf"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Fade
G2L["2c0"] = Instance.new("Frame", G2L["2bc"]);
G2L["2c0"]["ZIndex"] = 5;
G2L["2c0"]["BorderSizePixel"] = 0;
G2L["2c0"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["2c0"]["Size"] = UDim2.new(0, 66, 0.91, 0);
G2L["2c0"]["Position"] = UDim2.new(0, 0, 0, -10);
G2L["2c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c0"]["Name"] = [[Fade]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Fade.UIGradient
G2L["2c1"] = Instance.new("UIGradient", G2L["2c0"]);
G2L["2c1"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.175, 0.14375),NumberSequenceKeypoint.new(0.355, 0.325),NumberSequenceKeypoint.new(0.703, 1),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Fade2
G2L["2c2"] = Instance.new("Frame", G2L["2bc"]);
G2L["2c2"]["ZIndex"] = 5;
G2L["2c2"]["BorderSizePixel"] = 0;
G2L["2c2"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["2c2"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["2c2"]["Size"] = UDim2.new(0, 66, 0.91, 0);
G2L["2c2"]["Position"] = UDim2.new(1, 0, 0, -10);
G2L["2c2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c2"]["Name"] = [[Fade2]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Fade2.UIGradient
G2L["2c3"] = Instance.new("UIGradient", G2L["2c2"]);
G2L["2c3"]["Rotation"] = 180;
G2L["2c3"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.173, 0.1),NumberSequenceKeypoint.new(0.247, 0.26875),NumberSequenceKeypoint.new(0.355, 0.43125),NumberSequenceKeypoint.new(0.540, 0.80625),NumberSequenceKeypoint.new(0.789, 0.99375),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail
G2L["2c4"] = Instance.new("Frame", G2L["2bc"]);
G2L["2c4"]["ZIndex"] = 5;
G2L["2c4"]["BorderSizePixel"] = 0;
G2L["2c4"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["2c4"]["Size"] = UDim2.new(0, 80, 0, 80);
G2L["2c4"]["Position"] = UDim2.new(0, 47, 0, 44);
G2L["2c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c4"]["Name"] = [[Thumbnail]];
G2L["2c4"]["BackgroundTransparency"] = 0.3;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.UICorner
G2L["2c5"] = Instance.new("UICorner", G2L["2c4"]);
G2L["2c5"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.DropShadowHolder
G2L["2c6"] = Instance.new("Frame", G2L["2c4"]);
G2L["2c6"]["ZIndex"] = 0;
G2L["2c6"]["BorderSizePixel"] = 0;
G2L["2c6"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2c6"]["Name"] = [[DropShadowHolder]];
G2L["2c6"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.DropShadowHolder.umbraShadow
G2L["2c7"] = Instance.new("ImageLabel", G2L["2c6"]);
G2L["2c7"]["ZIndex"] = 4;
G2L["2c7"]["BorderSizePixel"] = 0;
G2L["2c7"]["SliceCenter"] = Rect.new(46, 43, 351, 355);
G2L["2c7"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2c7"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["2c7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2c7"]["Image"] = [[rbxassetid://76200300325831]];
G2L["2c7"]["Size"] = UDim2.new(1, 68, 1, 68);
G2L["2c7"]["BackgroundTransparency"] = 1;
G2L["2c7"]["Name"] = [[umbraShadow]];
G2L["2c7"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.DropShadowHolder.antumbraShadow
G2L["2c8"] = Instance.new("ImageLabel", G2L["2c6"]);
G2L["2c8"]["ZIndex"] = 4;
G2L["2c8"]["BorderSizePixel"] = 0;
G2L["2c8"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["2c8"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2c8"]["ImageTransparency"] = 0.94;
G2L["2c8"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["2c8"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2c8"]["Image"] = [[rbxassetid://5587865193]];
G2L["2c8"]["Size"] = UDim2.new(1.34136, 0, 1.47847, 0);
G2L["2c8"]["BackgroundTransparency"] = 1;
G2L["2c8"]["Name"] = [[antumbraShadow]];
G2L["2c8"]["Position"] = UDim2.new(0.51153, 0, 0.50442, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.DropShadowHolder.penumbraShadow
G2L["2c9"] = Instance.new("ImageLabel", G2L["2c6"]);
G2L["2c9"]["ZIndex"] = 4;
G2L["2c9"]["BorderSizePixel"] = 0;
G2L["2c9"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["2c9"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2c9"]["ImageTransparency"] = 0.55;
G2L["2c9"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["2c9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2c9"]["Image"] = [[rbxassetid://8992230677]];
G2L["2c9"]["Size"] = UDim2.new(1.49546, 0, 1.40123, 0);
G2L["2c9"]["BackgroundTransparency"] = 1;
G2L["2c9"]["Name"] = [[penumbraShadow]];
G2L["2c9"]["Position"] = UDim2.new(0.51153, 0, 0.50442, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.ImageLabel
G2L["2ca"] = Instance.new("ImageLabel", G2L["2c4"]);
G2L["2ca"]["ZIndex"] = 5;
G2L["2ca"]["BorderSizePixel"] = 0;
G2L["2ca"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2ca"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2ca"]["Image"] = [[rbxthumb://type=AvatarHeadShot&id=4072270297&w=420&h=420]];
G2L["2ca"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2ca"]["BackgroundTransparency"] = 1;
G2L["2ca"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.ImageLabel.UICorner
G2L["2cb"] = Instance.new("UICorner", G2L["2ca"]);
G2L["2cb"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Thumbnail.UIStroke
G2L["2cc"] = Instance.new("UIStroke", G2L["2c4"]);
G2L["2cc"]["Transparency"] = 0.5;
G2L["2cc"]["Color"] = Color3.fromRGB(66, 67, 78);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.playerDisplay
G2L["2cd"] = Instance.new("TextLabel", G2L["2bc"]);
G2L["2cd"]["ZIndex"] = 5;
G2L["2cd"]["BorderSizePixel"] = 0;
G2L["2cd"]["TextSize"] = 24;
G2L["2cd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2cd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2cd"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2cd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2cd"]["BackgroundTransparency"] = 1;
G2L["2cd"]["Size"] = UDim2.new(0, 200, 0, 39);
G2L["2cd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2cd"]["Text"] = [[Welcome, tsuyuki_kanao]];
G2L["2cd"]["Name"] = [[playerDisplay]];
G2L["2cd"]["Position"] = UDim2.new(0, 143, 0, 55);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.playerUser
G2L["2ce"] = Instance.new("TextLabel", G2L["2bc"]);
G2L["2ce"]["ZIndex"] = 5;
G2L["2ce"]["BorderSizePixel"] = 0;
G2L["2ce"]["TextSize"] = 15;
G2L["2ce"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2ce"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2ce"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Light, Enum.FontStyle.Normal);
G2L["2ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2ce"]["BackgroundTransparency"] = 1;
G2L["2ce"]["Size"] = UDim2.new(0, 200, 0, 39);
G2L["2ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2ce"]["Text"] = [[How's your day? | notdoxxingher]];
G2L["2ce"]["Name"] = [[playerUser]];
G2L["2ce"]["Position"] = UDim2.new(0, 145, 0, 75);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.clock
G2L["2cf"] = Instance.new("TextLabel", G2L["2bc"]);
G2L["2cf"]["LineHeight"] = 1.15;
G2L["2cf"]["ZIndex"] = 5;
G2L["2cf"]["BorderSizePixel"] = 0;
G2L["2cf"]["TextSize"] = 16;
G2L["2cf"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["2cf"]["TextTransparency"] = 0.2;
G2L["2cf"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2cf"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2cf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2cf"]["BackgroundTransparency"] = 1;
G2L["2cf"]["RichText"] = true;
G2L["2cf"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["2cf"]["Size"] = UDim2.new(0, 200, 0, 39);
G2L["2cf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2cf"]["Text"] = [[00 : 00 : 00
25 / 9 / 25]];
G2L["2cf"]["Name"] = [[clock]];
G2L["2cf"]["Position"] = UDim2.new(1, -48, 0, 79);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder
G2L["2d0"] = Instance.new("ScrollingFrame", G2L["2bc"]);
G2L["2d0"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["2d0"]["ZIndex"] = 5;
G2L["2d0"]["BorderSizePixel"] = 0;
G2L["2d0"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["2d0"]["HorizontalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
G2L["2d0"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["2d0"]["Name"] = [[Holder]];
G2L["2d0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d0"]["Selectable"] = false;
G2L["2d0"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["2d0"]["ClipsDescendants"] = false;
G2L["2d0"]["Size"] = UDim2.new(1, -88, 0.97642, -177);
G2L["2d0"]["Position"] = UDim2.new(0, 44, 0, 144);
G2L["2d0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d0"]["ScrollBarThickness"] = 2;
G2L["2d0"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.UIListLayout
G2L["2d1"] = Instance.new("UIListLayout", G2L["2d0"]);
G2L["2d1"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2d1"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2d1"]["Padding"] = UDim.new(0, 6);
G2L["2d1"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["2d1"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left
G2L["2d2"] = Instance.new("Frame", G2L["2d0"]);
G2L["2d2"]["ZIndex"] = 6;
G2L["2d2"]["BorderSizePixel"] = 0;
G2L["2d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d2"]["Size"] = UDim2.new(0.3333, -4, 0, 100);
G2L["2d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d2"]["Name"] = [[Left]];
G2L["2d2"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.UIListLayout
G2L["2d3"] = Instance.new("UIListLayout", G2L["2d2"]);
G2L["2d3"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2d3"]["Padding"] = UDim.new(0, 4);
G2L["2d3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord
G2L["2d4"] = Instance.new("Frame", G2L["2d2"]);
G2L["2d4"]["ZIndex"] = 6;
G2L["2d4"]["BorderSizePixel"] = 0;
G2L["2d4"]["BackgroundColor3"] = Color3.fromRGB(34, 35, 39);
G2L["2d4"]["ClipsDescendants"] = true;
G2L["2d4"]["Size"] = UDim2.new(0, 100, 0, 80);
G2L["2d4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d4"]["Name"] = [[Discord]];
G2L["2d4"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.UICorner
G2L["2d5"] = Instance.new("UICorner", G2L["2d4"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Hover
G2L["2d6"] = Instance.new("Frame", G2L["2d4"]);
G2L["2d6"]["ZIndex"] = 6;
G2L["2d6"]["BorderSizePixel"] = 0;
G2L["2d6"]["BackgroundColor3"] = Color3.fromRGB(89, 102, 243);
G2L["2d6"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["2d6"]["Position"] = UDim2.new(0, -10, 0, -10);
G2L["2d6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d6"]["Name"] = [[Hover]];
G2L["2d6"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Hover.UIGradient
G2L["2d7"] = Instance.new("UIGradient", G2L["2d6"]);
G2L["2d7"]["Rotation"] = 45;
G2L["2d7"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.392, 0.88125),NumberSequenceKeypoint.new(0.719, 0.575),NumberSequenceKeypoint.new(1.000, 0)};
G2L["2d7"]["Offset"] = Vector2.new(0.06, 0.06);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Hover.UICorner
G2L["2d8"] = Instance.new("UICorner", G2L["2d6"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Header
G2L["2d9"] = Instance.new("TextLabel", G2L["2d4"]);
G2L["2d9"]["ZIndex"] = 6;
G2L["2d9"]["BorderSizePixel"] = 0;
G2L["2d9"]["TextSize"] = 19;
G2L["2d9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2d9"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2d9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d9"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2d9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d9"]["BackgroundTransparency"] = 1;
G2L["2d9"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2d9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d9"]["Text"] = [[Discord]];
G2L["2d9"]["Name"] = [[Header]];
G2L["2d9"]["Position"] = UDim2.new(0, 5, 0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Header.Icon
G2L["2da"] = Instance.new("ImageLabel", G2L["2d9"]);
G2L["2da"]["ZIndex"] = 7;
G2L["2da"]["BorderSizePixel"] = 0;
G2L["2da"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2da"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2da"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2da"]["Image"] = [[rbxassetid://84828491431270]];
G2L["2da"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["2da"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2da"]["BackgroundTransparency"] = 1;
G2L["2da"]["Name"] = [[Icon]];
G2L["2da"]["Position"] = UDim2.new(0, -15, 0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Header.UIPadding
G2L["2db"] = Instance.new("UIPadding", G2L["2d9"]);
G2L["2db"]["PaddingLeft"] = UDim.new(0, 24);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.UIPadding
G2L["2dc"] = Instance.new("UIPadding", G2L["2d4"]);
G2L["2dc"]["PaddingTop"] = UDim.new(0, 10);
G2L["2dc"]["PaddingRight"] = UDim.new(0, 10);
G2L["2dc"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2dc"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.DropShadow
G2L["2dd"] = Instance.new("ImageLabel", G2L["2d4"]);
G2L["2dd"]["ZIndex"] = 5;
G2L["2dd"]["BorderSizePixel"] = 0;
G2L["2dd"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["2dd"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2dd"]["ImageTransparency"] = 0.6;
G2L["2dd"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2dd"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2dd"]["Image"] = [[rbxassetid://6015897843]];
G2L["2dd"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["2dd"]["BackgroundTransparency"] = 1;
G2L["2dd"]["Name"] = [[DropShadow]];
G2L["2dd"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Interact
G2L["2de"] = Instance.new("ImageButton", G2L["2d4"]);
G2L["2de"]["BorderSizePixel"] = 0;
G2L["2de"]["ImageTransparency"] = 1;
G2L["2de"]["BackgroundTransparency"] = 1;
G2L["2de"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2de"]["ZIndex"] = 7;
G2L["2de"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["2de"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2de"]["Name"] = [[Interact]];
G2L["2de"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Discord.Subheader
G2L["2df"] = Instance.new("TextLabel", G2L["2d4"]);
G2L["2df"]["TextWrapped"] = true;
G2L["2df"]["ZIndex"] = 6;
G2L["2df"]["BorderSizePixel"] = 0;
G2L["2df"]["TextSize"] = 12;
G2L["2df"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2df"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2df"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2df"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2df"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2df"]["BackgroundTransparency"] = 1;
G2L["2df"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2df"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2df"]["Text"] = [[Tap to join the discord of
your script.]];
G2L["2df"]["Name"] = [[Subheader]];
G2L["2df"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server
G2L["2e0"] = Instance.new("Frame", G2L["2d2"]);
G2L["2e0"]["ZIndex"] = 6;
G2L["2e0"]["BorderSizePixel"] = 0;
G2L["2e0"]["BackgroundColor3"] = Color3.fromRGB(34, 35, 39);
G2L["2e0"]["ClipsDescendants"] = true;
G2L["2e0"]["Size"] = UDim2.new(0, 100, 1, -84);
G2L["2e0"]["Position"] = UDim2.new(0.015, 0, 0.14815, 0);
G2L["2e0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e0"]["Name"] = [[Server]];
G2L["2e0"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.DropShadow
G2L["2e1"] = Instance.new("ImageLabel", G2L["2e0"]);
G2L["2e1"]["ZIndex"] = 5;
G2L["2e1"]["BorderSizePixel"] = 0;
G2L["2e1"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["2e1"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2e1"]["ImageTransparency"] = 0.6;
G2L["2e1"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e1"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2e1"]["Image"] = [[rbxassetid://6015897843]];
G2L["2e1"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["2e1"]["BackgroundTransparency"] = 1;
G2L["2e1"]["Name"] = [[DropShadow]];
G2L["2e1"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.UICorner
G2L["2e2"] = Instance.new("UICorner", G2L["2e0"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Hover
G2L["2e3"] = Instance.new("Frame", G2L["2e0"]);
G2L["2e3"]["ZIndex"] = 6;
G2L["2e3"]["BorderSizePixel"] = 0;
G2L["2e3"]["BackgroundColor3"] = Color3.fromRGB(27, 183, 136);
G2L["2e3"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["2e3"]["Position"] = UDim2.new(0, -10, 0, -10);
G2L["2e3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e3"]["Name"] = [[Hover]];
G2L["2e3"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Hover.UIGradient
G2L["2e4"] = Instance.new("UIGradient", G2L["2e3"]);
G2L["2e4"]["Rotation"] = 135;
G2L["2e4"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.392, 0.88125),NumberSequenceKeypoint.new(0.719, 0.575),NumberSequenceKeypoint.new(1.000, 0)};
G2L["2e4"]["Offset"] = Vector2.new(0.14, 0.14);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Hover.UICorner
G2L["2e5"] = Instance.new("UICorner", G2L["2e3"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Header
G2L["2e6"] = Instance.new("TextLabel", G2L["2e0"]);
G2L["2e6"]["ZIndex"] = 6;
G2L["2e6"]["BorderSizePixel"] = 0;
G2L["2e6"]["TextSize"] = 18;
G2L["2e6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e6"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2e6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e6"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2e6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e6"]["BackgroundTransparency"] = 1;
G2L["2e6"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2e6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e6"]["Text"] = [[Server]];
G2L["2e6"]["Name"] = [[Header]];
G2L["2e6"]["Position"] = UDim2.new(0, 5, 0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Header.Icon
G2L["2e7"] = Instance.new("ImageLabel", G2L["2e6"]);
G2L["2e7"]["ZIndex"] = 7;
G2L["2e7"]["BorderSizePixel"] = 0;
G2L["2e7"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2e7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e7"]["Image"] = [[rbxassetid://105897477286745]];
G2L["2e7"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["2e7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e7"]["BackgroundTransparency"] = 1;
G2L["2e7"]["Name"] = [[Icon]];
G2L["2e7"]["Position"] = UDim2.new(0, -25, 0, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Header.UIPadding
G2L["2e8"] = Instance.new("UIPadding", G2L["2e6"]);
G2L["2e8"]["PaddingLeft"] = UDim.new(0, 24);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Interact
G2L["2e9"] = Instance.new("ImageButton", G2L["2e0"]);
G2L["2e9"]["BorderSizePixel"] = 0;
G2L["2e9"]["ImageTransparency"] = 1;
G2L["2e9"]["BackgroundTransparency"] = 1;
G2L["2e9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e9"]["ZIndex"] = 7;
G2L["2e9"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["2e9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e9"]["Name"] = [[Interact]];
G2L["2e9"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.UIPadding
G2L["2ea"] = Instance.new("UIPadding", G2L["2e0"]);
G2L["2ea"]["PaddingTop"] = UDim.new(0, 10);
G2L["2ea"]["PaddingRight"] = UDim.new(0, 10);
G2L["2ea"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2ea"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Subheader
G2L["2eb"] = Instance.new("TextLabel", G2L["2e0"]);
G2L["2eb"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["2eb"]["ZIndex"] = 6;
G2L["2eb"]["BorderSizePixel"] = 0;
G2L["2eb"]["TextSize"] = 12;
G2L["2eb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2eb"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2eb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2eb"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2eb"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2eb"]["BackgroundTransparency"] = 1;
G2L["2eb"]["Size"] = UDim2.new(0, 170, 0, 30);
G2L["2eb"]["ClipsDescendants"] = true;
G2L["2eb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2eb"]["Text"] = [[Currently Playing {GAME}]];
G2L["2eb"]["Name"] = [[Subheader]];
G2L["2eb"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame
G2L["2ec"] = Instance.new("Frame", G2L["2e0"]);
G2L["2ec"]["ZIndex"] = 7;
G2L["2ec"]["BorderSizePixel"] = 0;
G2L["2ec"]["BackgroundColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2ec"]["ClipsDescendants"] = true;
G2L["2ec"]["Size"] = UDim2.new(0.94722, 0, 0.75628, 0);
G2L["2ec"]["Position"] = UDim2.new(0.02778, 0, 0.23375, 0);
G2L["2ec"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2ec"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.UICorner
G2L["2ed"] = Instance.new("UICorner", G2L["2ec"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.playercount
G2L["2ee"] = Instance.new("TextLabel", G2L["2ec"]);
G2L["2ee"]["TextWrapped"] = true;
G2L["2ee"]["LineHeight"] = 1.1;
G2L["2ee"]["ZIndex"] = 7;
G2L["2ee"]["BorderSizePixel"] = 0;
G2L["2ee"]["TextSize"] = 11;
G2L["2ee"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2ee"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2ee"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2ee"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2ee"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2ee"]["BackgroundTransparency"] = 1;
G2L["2ee"]["RichText"] = true;
G2L["2ee"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2ee"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2ee"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Players</font>
12 Players In This Server]];
G2L["2ee"]["Name"] = [[playercount]];
G2L["2ee"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.latency
G2L["2ef"] = Instance.new("TextLabel", G2L["2ec"]);
G2L["2ef"]["TextWrapped"] = true;
G2L["2ef"]["LineHeight"] = 1.1;
G2L["2ef"]["ZIndex"] = 7;
G2L["2ef"]["BorderSizePixel"] = 0;
G2L["2ef"]["TextSize"] = 11;
G2L["2ef"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2ef"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2ef"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2ef"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2ef"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2ef"]["BackgroundTransparency"] = 1;
G2L["2ef"]["RichText"] = true;
G2L["2ef"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2ef"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2ef"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Latency</font>
124 FPS
54ms]];
G2L["2ef"]["Name"] = [[latency]];
G2L["2ef"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.time
G2L["2f0"] = Instance.new("TextLabel", G2L["2ec"]);
G2L["2f0"]["TextWrapped"] = true;
G2L["2f0"]["LineHeight"] = 1.1;
G2L["2f0"]["ZIndex"] = 7;
G2L["2f0"]["BorderSizePixel"] = 0;
G2L["2f0"]["TextSize"] = 11;
G2L["2f0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f0"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2f0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f0"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f0"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2f0"]["BackgroundTransparency"] = 1;
G2L["2f0"]["RichText"] = true;
G2L["2f0"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2f0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f0"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Playing for</font>
3 hours]];
G2L["2f0"]["Name"] = [[time]];
G2L["2f0"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.maxplayers
G2L["2f1"] = Instance.new("TextLabel", G2L["2ec"]);
G2L["2f1"]["TextWrapped"] = true;
G2L["2f1"]["LineHeight"] = 1.1;
G2L["2f1"]["ZIndex"] = 7;
G2L["2f1"]["BorderSizePixel"] = 0;
G2L["2f1"]["TextSize"] = 11;
G2L["2f1"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f1"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2f1"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f1"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f1"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2f1"]["BackgroundTransparency"] = 1;
G2L["2f1"]["RichText"] = true;
G2L["2f1"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2f1"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f1"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Capacity</font>
50 People
can join.]];
G2L["2f1"]["Name"] = [[maxplayers]];
G2L["2f1"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.UIPadding
G2L["2f2"] = Instance.new("UIPadding", G2L["2ec"]);
G2L["2f2"]["PaddingTop"] = UDim.new(0, 10);
G2L["2f2"]["PaddingRight"] = UDim.new(0, 8);
G2L["2f2"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.UIGridLayout
G2L["2f3"] = Instance.new("UIGridLayout", G2L["2ec"]);
G2L["2f3"]["CellSize"] = UDim2.new(0, 80, 0, 50);
G2L["2f3"]["FillDirectionMaxCells"] = 3;
G2L["2f3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["2f3"]["FillDirection"] = Enum.FillDirection.Vertical;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.copyjoin
G2L["2f4"] = Instance.new("TextButton", G2L["2ec"]);
G2L["2f4"]["TextWrapped"] = true;
G2L["2f4"]["LineHeight"] = 1.1;
G2L["2f4"]["Active"] = false;
G2L["2f4"]["RichText"] = true;
G2L["2f4"]["BorderSizePixel"] = 0;
G2L["2f4"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f4"]["TextSize"] = 11;
G2L["2f4"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2f4"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2f4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f4"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f4"]["Selectable"] = false;
G2L["2f4"]["ZIndex"] = 7;
G2L["2f4"]["BackgroundTransparency"] = 1;
G2L["2f4"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2f4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f4"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Join Script</font>
Tap to copy a pastable script]];
G2L["2f4"]["Name"] = [[copyjoin]];
G2L["2f4"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Left.Server.Frame.serverregion
G2L["2f5"] = Instance.new("TextLabel", G2L["2ec"]);
G2L["2f5"]["TextWrapped"] = true;
G2L["2f5"]["LineHeight"] = 1.1;
G2L["2f5"]["ZIndex"] = 7;
G2L["2f5"]["BorderSizePixel"] = 0;
G2L["2f5"]["TextSize"] = 11;
G2L["2f5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2f5"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2f5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f5"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f5"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["2f5"]["BackgroundTransparency"] = 1;
G2L["2f5"]["RichText"] = true;
G2L["2f5"]["Size"] = UDim2.new(0, 80, 0, 35);
G2L["2f5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f5"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Region</font>
United States]];
G2L["2f5"]["Name"] = [[serverregion]];
G2L["2f5"]["Position"] = UDim2.new(0, 85, 0, 110);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center
G2L["2f6"] = Instance.new("Frame", G2L["2d0"]);
G2L["2f6"]["ZIndex"] = 6;
G2L["2f6"]["BorderSizePixel"] = 0;
G2L["2f6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f6"]["Size"] = UDim2.new(0.3333, -4, 0, 100);
G2L["2f6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f6"]["Name"] = [[Center]];
G2L["2f6"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.UIListLayout
G2L["2f7"] = Instance.new("UIListLayout", G2L["2f6"]);
G2L["2f7"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["2f7"]["Padding"] = UDim.new(0, 4);
G2L["2f7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog
G2L["2f8"] = Instance.new("Frame", G2L["2f6"]);
G2L["2f8"]["ZIndex"] = 6;
G2L["2f8"]["BorderSizePixel"] = 0;
G2L["2f8"]["BackgroundColor3"] = Color3.fromRGB(34, 35, 39);
G2L["2f8"]["ClipsDescendants"] = true;
G2L["2f8"]["Size"] = UDim2.new(0, 100, 1, -84);
G2L["2f8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f8"]["Name"] = [[Changelog]];
G2L["2f8"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.DropShadow
G2L["2f9"] = Instance.new("ImageLabel", G2L["2f8"]);
G2L["2f9"]["ZIndex"] = 5;
G2L["2f9"]["BorderSizePixel"] = 0;
G2L["2f9"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["2f9"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2f9"]["ImageTransparency"] = 0.6;
G2L["2f9"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2f9"]["Image"] = [[rbxassetid://6015897843]];
G2L["2f9"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["2f9"]["BackgroundTransparency"] = 1;
G2L["2f9"]["Name"] = [[DropShadow]];
G2L["2f9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.UICorner
G2L["2fa"] = Instance.new("UICorner", G2L["2f8"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.Hover
G2L["2fb"] = Instance.new("Frame", G2L["2f8"]);
G2L["2fb"]["ZIndex"] = 6;
G2L["2fb"]["BorderSizePixel"] = 0;
G2L["2fb"]["BackgroundColor3"] = Color3.fromRGB(104, 188, 201);
G2L["2fb"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["2fb"]["Position"] = UDim2.new(0, -10, 0, -10);
G2L["2fb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2fb"]["Name"] = [[Hover]];
G2L["2fb"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.Hover.UIGradient
G2L["2fc"] = Instance.new("UIGradient", G2L["2fb"]);
G2L["2fc"]["Rotation"] = 315;
G2L["2fc"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.392, 0.88125),NumberSequenceKeypoint.new(0.719, 0.575),NumberSequenceKeypoint.new(1.000, 0)};
G2L["2fc"]["Offset"] = Vector2.new(0.14, 0.14);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.Hover.UICorner
G2L["2fd"] = Instance.new("UICorner", G2L["2fb"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.Header
G2L["2fe"] = Instance.new("TextLabel", G2L["2f8"]);
G2L["2fe"]["ZIndex"] = 6;
G2L["2fe"]["BorderSizePixel"] = 0;
G2L["2fe"]["TextSize"] = 18;
G2L["2fe"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2fe"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2fe"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2fe"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2fe"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2fe"]["BackgroundTransparency"] = 1;
G2L["2fe"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["2fe"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2fe"]["Text"] = [[Changelog]];
G2L["2fe"]["Name"] = [[Header]];
G2L["2fe"]["Position"] = UDim2.new(0, 5, 0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.Header.Icon
G2L["2ff"] = Instance.new("ImageLabel", G2L["2fe"]);
G2L["2ff"]["ZIndex"] = 7;
G2L["2ff"]["BorderSizePixel"] = 0;
G2L["2ff"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["2ff"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2ff"]["Image"] = [[rbxassetid://94238972787969]];
G2L["2ff"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["2ff"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2ff"]["BackgroundTransparency"] = 1;
G2L["2ff"]["Name"] = [[Icon]];
G2L["2ff"]["Position"] = UDim2.new(0, -25, 0, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.Header.UIPadding
G2L["300"] = Instance.new("UIPadding", G2L["2fe"]);
G2L["300"]["PaddingLeft"] = UDim.new(0, 24);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.Interact
G2L["301"] = Instance.new("ImageButton", G2L["2f8"]);
G2L["301"]["BorderSizePixel"] = 0;
G2L["301"]["ImageTransparency"] = 1;
G2L["301"]["BackgroundTransparency"] = 1;
G2L["301"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["301"]["ZIndex"] = 7;
G2L["301"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["301"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["301"]["Name"] = [[Interact]];
G2L["301"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.UIPadding
G2L["302"] = Instance.new("UIPadding", G2L["2f8"]);
G2L["302"]["PaddingTop"] = UDim.new(0, 10);
G2L["302"]["PaddingRight"] = UDim.new(0, 10);
G2L["302"]["PaddingLeft"] = UDim.new(0, 10);
G2L["302"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.latest
G2L["303"] = Instance.new("Frame", G2L["2f8"]);
G2L["303"]["Visible"] = false;
G2L["303"]["BorderSizePixel"] = 0;
G2L["303"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["303"]["Size"] = UDim2.new(1, -10, 1, -40);
G2L["303"]["Position"] = UDim2.new(0, 5, 0, 35);
G2L["303"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["303"]["Name"] = [[latest]];
G2L["303"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.latest.Header
G2L["304"] = Instance.new("TextLabel", G2L["303"]);
G2L["304"]["ZIndex"] = 6;
G2L["304"]["BorderSizePixel"] = 0;
G2L["304"]["TextSize"] = 15;
G2L["304"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["304"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["304"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["304"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["304"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["304"]["BackgroundTransparency"] = 1;
G2L["304"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["304"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["304"]["Text"] = [[Latest Update]];
G2L["304"]["Name"] = [[Header]];


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.latest.date
G2L["305"] = Instance.new("TextLabel", G2L["303"]);
G2L["305"]["ZIndex"] = 6;
G2L["305"]["BorderSizePixel"] = 0;
G2L["305"]["TextSize"] = 13;
G2L["305"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["305"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["305"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["305"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["305"]["TextColor3"] = Color3.fromRGB(207, 207, 207);
G2L["305"]["BackgroundTransparency"] = 1;
G2L["305"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["305"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["305"]["Text"] = [[25 December 2025]];
G2L["305"]["Name"] = [[date]];
G2L["305"]["Position"] = UDim2.new(0, 0, 0, 20);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Changelog.latest.desc
G2L["306"] = Instance.new("TextLabel", G2L["303"]);
G2L["306"]["TextWrapped"] = true;
G2L["306"]["ZIndex"] = 6;
G2L["306"]["BorderSizePixel"] = 0;
G2L["306"]["TextSize"] = 13;
G2L["306"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["306"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["306"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["306"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["306"]["TextColor3"] = Color3.fromRGB(237, 237, 237);
G2L["306"]["BackgroundTransparency"] = 1;
G2L["306"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["306"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["306"]["Text"] = [[Blablabla]];
G2L["306"]["Name"] = [[desc]];
G2L["306"]["Position"] = UDim2.new(0, 0, 0, 45);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor
G2L["307"] = Instance.new("Frame", G2L["2f6"]);
G2L["307"]["ZIndex"] = 6;
G2L["307"]["BorderSizePixel"] = 0;
G2L["307"]["BackgroundColor3"] = Color3.fromRGB(34, 35, 39);
G2L["307"]["ClipsDescendants"] = true;
G2L["307"]["Size"] = UDim2.new(0, 100, 0, 80);
G2L["307"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["307"]["Name"] = [[Executor]];
G2L["307"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.DropShadow
G2L["308"] = Instance.new("ImageLabel", G2L["307"]);
G2L["308"]["ZIndex"] = 5;
G2L["308"]["BorderSizePixel"] = 0;
G2L["308"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["308"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["308"]["ImageTransparency"] = 0.6;
G2L["308"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["308"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["308"]["Image"] = [[rbxassetid://6015897843]];
G2L["308"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["308"]["BackgroundTransparency"] = 1;
G2L["308"]["Name"] = [[DropShadow]];
G2L["308"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.UICorner
G2L["309"] = Instance.new("UICorner", G2L["307"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Hover
G2L["30a"] = Instance.new("Frame", G2L["307"]);
G2L["30a"]["ZIndex"] = 6;
G2L["30a"]["BorderSizePixel"] = 0;
G2L["30a"]["BackgroundColor3"] = Color3.fromRGB(171, 57, 57);
G2L["30a"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["30a"]["Position"] = UDim2.new(0, -10, 0, -10);
G2L["30a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30a"]["Name"] = [[Hover]];
G2L["30a"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Hover.UIGradient
G2L["30b"] = Instance.new("UIGradient", G2L["30a"]);
G2L["30b"]["Rotation"] = 45;
G2L["30b"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.392, 0.88125),NumberSequenceKeypoint.new(0.719, 0.575),NumberSequenceKeypoint.new(1.000, 0)};
G2L["30b"]["Offset"] = Vector2.new(0.06, 0.06);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Hover.UICorner
G2L["30c"] = Instance.new("UICorner", G2L["30a"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Subheader
G2L["30d"] = Instance.new("TextLabel", G2L["307"]);
G2L["30d"]["TextWrapped"] = true;
G2L["30d"]["ZIndex"] = 6;
G2L["30d"]["BorderSizePixel"] = 0;
G2L["30d"]["TextSize"] = 12;
G2L["30d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["30d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["30d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30d"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["30d"]["BackgroundTransparency"] = 1;
G2L["30d"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["30d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30d"]["Text"] = [[Your Executor Seems To Be
Supported By This Script.]];
G2L["30d"]["Name"] = [[Subheader]];
G2L["30d"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Interact
G2L["30e"] = Instance.new("ImageButton", G2L["307"]);
G2L["30e"]["BorderSizePixel"] = 0;
G2L["30e"]["ImageTransparency"] = 1;
G2L["30e"]["BackgroundTransparency"] = 1;
G2L["30e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30e"]["ZIndex"] = 7;
G2L["30e"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["30e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30e"]["Name"] = [[Interact]];
G2L["30e"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.UIPadding
G2L["30f"] = Instance.new("UIPadding", G2L["307"]);
G2L["30f"]["PaddingTop"] = UDim.new(0, 10);
G2L["30f"]["PaddingRight"] = UDim.new(0, 10);
G2L["30f"]["PaddingLeft"] = UDim.new(0, 10);
G2L["30f"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Header
G2L["310"] = Instance.new("TextLabel", G2L["307"]);
G2L["310"]["ZIndex"] = 6;
G2L["310"]["BorderSizePixel"] = 0;
G2L["310"]["TextSize"] = 17;
G2L["310"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["310"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["310"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["310"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["310"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["310"]["BackgroundTransparency"] = 1;
G2L["310"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["310"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["310"]["Text"] = [[Nebula Client]];
G2L["310"]["Name"] = [[Header]];
G2L["310"]["Position"] = UDim2.new(0, 5, 0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Header.UIPadding
G2L["311"] = Instance.new("UIPadding", G2L["310"]);
G2L["311"]["PaddingLeft"] = UDim.new(0, 24);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Center.Executor.Header.Icon
G2L["312"] = Instance.new("ImageLabel", G2L["310"]);
G2L["312"]["ZIndex"] = 7;
G2L["312"]["BorderSizePixel"] = 0;
G2L["312"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["312"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["312"]["Image"] = [[rbxassetid://140131087550511]];
G2L["312"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["312"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["312"]["BackgroundTransparency"] = 1;
G2L["312"]["Name"] = [[Icon]];
G2L["312"]["Position"] = UDim2.new(0, -25, 0, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right
G2L["313"] = Instance.new("Frame", G2L["2d0"]);
G2L["313"]["ZIndex"] = 6;
G2L["313"]["BorderSizePixel"] = 0;
G2L["313"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["313"]["Size"] = UDim2.new(0.3333, -4, 0, 100);
G2L["313"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["313"]["Name"] = [[Right]];
G2L["313"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.UIListLayout
G2L["314"] = Instance.new("UIListLayout", G2L["313"]);
G2L["314"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["314"]["Padding"] = UDim.new(0, 4);
G2L["314"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status
G2L["315"] = Instance.new("Frame", G2L["313"]);
G2L["315"]["ZIndex"] = 6;
G2L["315"]["BorderSizePixel"] = 0;
G2L["315"]["BackgroundColor3"] = Color3.fromRGB(34, 35, 39);
G2L["315"]["ClipsDescendants"] = true;
G2L["315"]["Size"] = UDim2.new(0, 100, 0.423, 0);
G2L["315"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["315"]["Name"] = [[Status]];
G2L["315"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.DropShadow
G2L["316"] = Instance.new("ImageLabel", G2L["315"]);
G2L["316"]["ZIndex"] = 5;
G2L["316"]["BorderSizePixel"] = 0;
G2L["316"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["316"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["316"]["ImageTransparency"] = 0.6;
G2L["316"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["316"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["316"]["Image"] = [[rbxassetid://6015897843]];
G2L["316"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["316"]["BackgroundTransparency"] = 1;
G2L["316"]["Name"] = [[DropShadow]];
G2L["316"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.UICorner
G2L["317"] = Instance.new("UICorner", G2L["315"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Hover
G2L["318"] = Instance.new("Frame", G2L["315"]);
G2L["318"]["ZIndex"] = 6;
G2L["318"]["BorderSizePixel"] = 0;
G2L["318"]["BackgroundColor3"] = Color3.fromRGB(113, 60, 160);
G2L["318"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["318"]["Position"] = UDim2.new(0, -10, 0, -10);
G2L["318"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["318"]["Name"] = [[Hover]];
G2L["318"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Hover.UIGradient
G2L["319"] = Instance.new("UIGradient", G2L["318"]);
G2L["319"]["Rotation"] = 135;
G2L["319"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.392, 0.88125),NumberSequenceKeypoint.new(0.719, 0.575),NumberSequenceKeypoint.new(1.000, 0)};
G2L["319"]["Offset"] = Vector2.new(0.06, 0.06);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Hover.UICorner
G2L["31a"] = Instance.new("UICorner", G2L["318"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Subheader
G2L["31b"] = Instance.new("TextLabel", G2L["315"]);
G2L["31b"]["TextWrapped"] = true;
G2L["31b"]["ZIndex"] = 6;
G2L["31b"]["BorderSizePixel"] = 0;
G2L["31b"]["TextSize"] = 12;
G2L["31b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31b"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["31b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31b"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["31b"]["BackgroundTransparency"] = 1;
G2L["31b"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["31b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31b"]["Text"] = [[Coming Soon.]];
G2L["31b"]["Name"] = [[Subheader]];
G2L["31b"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Interact
G2L["31c"] = Instance.new("ImageButton", G2L["315"]);
G2L["31c"]["BorderSizePixel"] = 0;
G2L["31c"]["ImageTransparency"] = 1;
G2L["31c"]["BackgroundTransparency"] = 1;
G2L["31c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31c"]["ZIndex"] = 7;
G2L["31c"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["31c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31c"]["Name"] = [[Interact]];
G2L["31c"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.UIPadding
G2L["31d"] = Instance.new("UIPadding", G2L["315"]);
G2L["31d"]["PaddingTop"] = UDim.new(0, 10);
G2L["31d"]["PaddingRight"] = UDim.new(0, 10);
G2L["31d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["31d"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Header
G2L["31e"] = Instance.new("TextLabel", G2L["315"]);
G2L["31e"]["ZIndex"] = 6;
G2L["31e"]["BorderSizePixel"] = 0;
G2L["31e"]["TextSize"] = 18;
G2L["31e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["31e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["31e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31e"]["BackgroundTransparency"] = 1;
G2L["31e"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["31e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31e"]["Text"] = [[Account]];
G2L["31e"]["Name"] = [[Header]];
G2L["31e"]["Position"] = UDim2.new(0, 5, 0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Header.Icon
G2L["31f"] = Instance.new("ImageLabel", G2L["31e"]);
G2L["31f"]["ZIndex"] = 7;
G2L["31f"]["BorderSizePixel"] = 0;
G2L["31f"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["31f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31f"]["Image"] = [[rbxassetid://99484982075392]];
G2L["31f"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["31f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31f"]["BackgroundTransparency"] = 1;
G2L["31f"]["Name"] = [[Icon]];
G2L["31f"]["Position"] = UDim2.new(0, -25, 0, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Status.Header.UIPadding
G2L["320"] = Instance.new("UIPadding", G2L["31e"]);
G2L["320"]["PaddingLeft"] = UDim.new(0, 24);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends
G2L["321"] = Instance.new("Frame", G2L["313"]);
G2L["321"]["ZIndex"] = 6;
G2L["321"]["BorderSizePixel"] = 0;
G2L["321"]["BackgroundColor3"] = Color3.fromRGB(34, 35, 39);
G2L["321"]["ClipsDescendants"] = true;
G2L["321"]["Size"] = UDim2.new(0, 100, 0.577, -4);
G2L["321"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["321"]["Name"] = [[Friends]];
G2L["321"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.DropShadow
G2L["322"] = Instance.new("ImageLabel", G2L["321"]);
G2L["322"]["ZIndex"] = 5;
G2L["322"]["BorderSizePixel"] = 0;
G2L["322"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["322"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["322"]["ImageTransparency"] = 0.6;
G2L["322"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["322"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["322"]["Image"] = [[rbxassetid://6015897843]];
G2L["322"]["Size"] = UDim2.new(1, 35, 1, 35);
G2L["322"]["BackgroundTransparency"] = 1;
G2L["322"]["Name"] = [[DropShadow]];
G2L["322"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.UICorner
G2L["323"] = Instance.new("UICorner", G2L["321"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Hover
G2L["324"] = Instance.new("Frame", G2L["321"]);
G2L["324"]["ZIndex"] = 6;
G2L["324"]["BorderSizePixel"] = 0;
G2L["324"]["BackgroundColor3"] = Color3.fromRGB(136, 106, 41);
G2L["324"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["324"]["Position"] = UDim2.new(0, -10, 0, -10);
G2L["324"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["324"]["Name"] = [[Hover]];
G2L["324"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Hover.UIGradient
G2L["325"] = Instance.new("UIGradient", G2L["324"]);
G2L["325"]["Rotation"] = 215;
G2L["325"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(0.392, 0.88125),NumberSequenceKeypoint.new(0.719, 0.575),NumberSequenceKeypoint.new(1.000, 0)};
G2L["325"]["Offset"] = Vector2.new(0.14, 0.14);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Hover.UICorner
G2L["326"] = Instance.new("UICorner", G2L["324"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Header
G2L["327"] = Instance.new("TextLabel", G2L["321"]);
G2L["327"]["ZIndex"] = 6;
G2L["327"]["BorderSizePixel"] = 0;
G2L["327"]["TextSize"] = 18;
G2L["327"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["327"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["327"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["327"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["327"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["327"]["BackgroundTransparency"] = 1;
G2L["327"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["327"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["327"]["Text"] = [[Friends]];
G2L["327"]["Name"] = [[Header]];
G2L["327"]["Position"] = UDim2.new(0, 5, 0, 5);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Header.Icon
G2L["328"] = Instance.new("ImageLabel", G2L["327"]);
G2L["328"]["ZIndex"] = 7;
G2L["328"]["BorderSizePixel"] = 0;
G2L["328"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["328"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["328"]["Image"] = [[rbxassetid://129677565037215]];
G2L["328"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["328"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["328"]["BackgroundTransparency"] = 1;
G2L["328"]["Name"] = [[Icon]];
G2L["328"]["Position"] = UDim2.new(0, -25, 0, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Header.UIPadding
G2L["329"] = Instance.new("UIPadding", G2L["327"]);
G2L["329"]["PaddingLeft"] = UDim.new(0, 24);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Interact
G2L["32a"] = Instance.new("ImageButton", G2L["321"]);
G2L["32a"]["BorderSizePixel"] = 0;
G2L["32a"]["ImageTransparency"] = 1;
G2L["32a"]["BackgroundTransparency"] = 1;
G2L["32a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32a"]["ZIndex"] = 7;
G2L["32a"]["Size"] = UDim2.new(1, 20, 1, 20);
G2L["32a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32a"]["Name"] = [[Interact]];
G2L["32a"]["Position"] = UDim2.new(0, -10, 0, -10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.UIPadding
G2L["32b"] = Instance.new("UIPadding", G2L["321"]);
G2L["32b"]["PaddingTop"] = UDim.new(0, 10);
G2L["32b"]["PaddingRight"] = UDim.new(0, 10);
G2L["32b"]["PaddingLeft"] = UDim.new(0, 10);
G2L["32b"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame
G2L["32c"] = Instance.new("Frame", G2L["321"]);
G2L["32c"]["ZIndex"] = 7;
G2L["32c"]["BorderSizePixel"] = 0;
G2L["32c"]["BackgroundColor3"] = Color3.fromRGB(166, 166, 166);
G2L["32c"]["ClipsDescendants"] = true;
G2L["32c"]["Size"] = UDim2.new(0.93889, 0, 0.76923, 0);
G2L["32c"]["Position"] = UDim2.new(0.02778, 0, 0.20834, 0);
G2L["32c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32c"]["BackgroundTransparency"] = 0.95;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame.UICorner
G2L["32d"] = Instance.new("UICorner", G2L["32c"]);



-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame.inserver
G2L["32e"] = Instance.new("TextLabel", G2L["32c"]);
G2L["32e"]["TextWrapped"] = true;
G2L["32e"]["LineHeight"] = 1.1;
G2L["32e"]["ZIndex"] = 7;
G2L["32e"]["BorderSizePixel"] = 0;
G2L["32e"]["TextSize"] = 11;
G2L["32e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["32e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["32e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32e"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["32e"]["BackgroundTransparency"] = 1;
G2L["32e"]["RichText"] = true;
G2L["32e"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["32e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32e"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">In Server</font>
No friends are
in your session]];
G2L["32e"]["Name"] = [[inserver]];
G2L["32e"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame.online
G2L["32f"] = Instance.new("TextLabel", G2L["32c"]);
G2L["32f"]["TextWrapped"] = true;
G2L["32f"]["LineHeight"] = 1.1;
G2L["32f"]["ZIndex"] = 7;
G2L["32f"]["BorderSizePixel"] = 0;
G2L["32f"]["TextSize"] = 11;
G2L["32f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["32f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["32f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32f"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["32f"]["BackgroundTransparency"] = 1;
G2L["32f"]["RichText"] = true;
G2L["32f"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["32f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32f"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Online</font>
18 Friends
Are Online]];
G2L["32f"]["Name"] = [[online]];
G2L["32f"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame.offline
G2L["330"] = Instance.new("TextLabel", G2L["32c"]);
G2L["330"]["TextWrapped"] = true;
G2L["330"]["LineHeight"] = 1.1;
G2L["330"]["ZIndex"] = 7;
G2L["330"]["BorderSizePixel"] = 0;
G2L["330"]["TextSize"] = 11;
G2L["330"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["330"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["330"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["330"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["330"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["330"]["BackgroundTransparency"] = 1;
G2L["330"]["RichText"] = true;
G2L["330"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["330"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["330"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Offline</font>
22 Friends
Are Offline]];
G2L["330"]["Name"] = [[offline]];
G2L["330"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame.total
G2L["331"] = Instance.new("TextLabel", G2L["32c"]);
G2L["331"]["TextWrapped"] = true;
G2L["331"]["LineHeight"] = 1.1;
G2L["331"]["ZIndex"] = 7;
G2L["331"]["BorderSizePixel"] = 0;
G2L["331"]["TextSize"] = 11;
G2L["331"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["331"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["331"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["331"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["331"]["BackgroundTransparency"] = 1;
G2L["331"]["RichText"] = true;
G2L["331"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["331"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["331"]["Text"] = [[<font size="14" color="#FFF" weight="semibold">Total</font>
40 Friends.]];
G2L["331"]["Name"] = [[total]];
G2L["331"]["Position"] = UDim2.new(0, 5, 0, 28);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame.UIPadding
G2L["332"] = Instance.new("UIPadding", G2L["32c"]);
G2L["332"]["PaddingTop"] = UDim.new(0, 12);
G2L["332"]["PaddingRight"] = UDim.new(0, 8);
G2L["332"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.Elements.HomeTab.Holder.Right.Friends.Frame.UIGridLayout
G2L["333"] = Instance.new("UIGridLayout", G2L["32c"]);
G2L["333"]["CellSize"] = UDim2.new(0, 80, 0, 40);
G2L["333"]["FillDirectionMaxCells"] = 2;
G2L["333"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["333"]["CellPadding"] = UDim2.new(0, 7, 0, 14);
G2L["333"]["FillDirection"] = Enum.FillDirection.Vertical;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesTop
G2L["334"] = Instance.new("Frame", G2L["14d"]);
G2L["334"]["ZIndex"] = 7;
G2L["334"]["BorderSizePixel"] = 0;
G2L["334"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["334"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["334"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["334"]["Name"] = [[FadesTop]];
G2L["334"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesTop.Fade
G2L["335"] = Instance.new("Frame", G2L["334"]);
G2L["335"]["Visible"] = false;
G2L["335"]["ZIndex"] = 10;
G2L["335"]["BorderSizePixel"] = 0;
G2L["335"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["335"]["Size"] = UDim2.new(0, 345, 0, 40);
G2L["335"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["335"]["Name"] = [[Fade]];
G2L["335"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesTop.Fade.UIGradient
G2L["336"] = Instance.new("UIGradient", G2L["335"]);
G2L["336"]["Rotation"] = 90;
G2L["336"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.369, 0.24375),NumberSequenceKeypoint.new(0.585, 0.44375),NumberSequenceKeypoint.new(1.000, 1)};
G2L["336"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(24, 26, 30)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(24, 26, 30))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesTop.Fade.UISizeConstraint
G2L["337"] = Instance.new("UISizeConstraint", G2L["335"]);
G2L["337"]["MinSize"] = Vector2.new(300, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesTop.UIPadding
G2L["338"] = Instance.new("UIPadding", G2L["334"]);
G2L["338"]["PaddingTop"] = UDim.new(0, 10);
G2L["338"]["PaddingRight"] = UDim.new(0, 10);
G2L["338"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesTop.UIListLayout
G2L["339"] = Instance.new("UIListLayout", G2L["334"]);
G2L["339"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["339"]["Padding"] = UDim.new(0, 10);
G2L["339"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["339"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesBottom
G2L["33a"] = Instance.new("Frame", G2L["14d"]);
G2L["33a"]["ZIndex"] = 7;
G2L["33a"]["BorderSizePixel"] = 0;
G2L["33a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33a"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["33a"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["33a"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["33a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33a"]["Name"] = [[FadesBottom]];
G2L["33a"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesBottom.Fade
G2L["33b"] = Instance.new("Frame", G2L["33a"]);
G2L["33b"]["Visible"] = false;
G2L["33b"]["ZIndex"] = 10;
G2L["33b"]["BorderSizePixel"] = 0;
G2L["33b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33b"]["Size"] = UDim2.new(0, 345, 0, 40);
G2L["33b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33b"]["Name"] = [[Fade]];
G2L["33b"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesBottom.Fade.UIGradient
G2L["33c"] = Instance.new("UIGradient", G2L["33b"]);
G2L["33c"]["Rotation"] = -90;
G2L["33c"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.369, 0.24375),NumberSequenceKeypoint.new(0.585, 0.44375),NumberSequenceKeypoint.new(1.000, 1)};
G2L["33c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(24, 26, 30)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(24, 26, 30))};


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesBottom.Fade.UISizeConstraint
G2L["33d"] = Instance.new("UISizeConstraint", G2L["33b"]);
G2L["33d"]["MinSize"] = Vector2.new(300, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesBottom.UIPadding
G2L["33e"] = Instance.new("UIPadding", G2L["33a"]);
G2L["33e"]["PaddingTop"] = UDim.new(0, 10);
G2L["33e"]["PaddingRight"] = UDim.new(0, 10);
G2L["33e"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.FadesBottom.UIListLayout
G2L["33f"] = Instance.new("UIListLayout", G2L["33a"]);
G2L["33f"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["33f"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["33f"]["Padding"] = UDim.new(0, 10);
G2L["33f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["33f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.CornerRepairs
G2L["340"] = Instance.new("Frame", G2L["14d"]);
G2L["340"]["ZIndex"] = 3;
G2L["340"]["BorderSizePixel"] = 0;
G2L["340"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["340"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["340"]["BorderColor3"] = Color3.fromRGB(251, 251, 251);
G2L["340"]["Name"] = [[CornerRepairs]];
G2L["340"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.CornerRepairs.0,1
G2L["341"] = Instance.new("ImageLabel", G2L["340"]);
G2L["341"]["ZIndex"] = 2;
G2L["341"]["BorderSizePixel"] = 0;
G2L["341"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["341"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["341"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["341"]["ImageColor3"] = Color3.fromRGB(24, 26, 30);
G2L["341"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["341"]["Image"] = [[rbxassetid://92421933997743]];
G2L["341"]["Size"] = UDim2.new(0, 9, 0, 9);
G2L["341"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["341"]["BackgroundTransparency"] = 1;
G2L["341"]["Name"] = [[0,1]];
G2L["341"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.CornerRepairs.0,0
G2L["342"] = Instance.new("ImageLabel", G2L["340"]);
G2L["342"]["ZIndex"] = 2;
G2L["342"]["BorderSizePixel"] = 0;
G2L["342"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["342"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["342"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["342"]["ImageColor3"] = Color3.fromRGB(24, 26, 30);
G2L["342"]["Image"] = [[rbxassetid://92421933997743]];
G2L["342"]["Size"] = UDim2.new(0, 9, 0, 9);
G2L["342"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["342"]["BackgroundTransparency"] = 1;
G2L["342"]["Rotation"] = 90;
G2L["342"]["Name"] = [[0,0]];
G2L["342"]["Position"] = UDim2.new(0, 0, 0, 1);


-- StarterGui.Starlight V2.MainWindow.Content.ContentMain.CornerRepairs.1,0
G2L["343"] = Instance.new("ImageLabel", G2L["340"]);
G2L["343"]["ZIndex"] = 2;
G2L["343"]["BorderSizePixel"] = 0;
G2L["343"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["343"]["BackgroundColor3"] = Color3.fromRGB(28, 30, 34);
G2L["343"]["ResampleMode"] = Enum.ResamplerMode.Pixelated;
G2L["343"]["ImageColor3"] = Color3.fromRGB(24, 26, 30);
G2L["343"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["343"]["Image"] = [[rbxassetid://92421933997743]];
G2L["343"]["Size"] = UDim2.new(0, 9, 0, 9);
G2L["343"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["343"]["BackgroundTransparency"] = 1;
G2L["343"]["Rotation"] = 180;
G2L["343"]["Name"] = [[1,0]];
G2L["343"]["Position"] = UDim2.new(1, 0, 0, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay
G2L["344"] = Instance.new("ImageButton", G2L["e2"]);
G2L["344"]["BorderSizePixel"] = 0;
G2L["344"]["AutoButtonColor"] = false;
G2L["344"]["Visible"] = false;
G2L["344"]["ImageTransparency"] = 1;
G2L["344"]["BackgroundTransparency"] = 1;
G2L["344"]["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
G2L["344"]["Selectable"] = false;
G2L["344"]["ZIndex"] = 100;
G2L["344"]["Image"] = [[rbxassetid://14190223635]];
G2L["344"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["344"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["344"]["Name"] = [[ModalOverlay]];


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.UICorner
G2L["345"] = Instance.new("UICorner", G2L["344"]);



-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template
G2L["346"] = Instance.new("TextButton", G2L["344"]);
G2L["346"]["Active"] = false;
G2L["346"]["BorderSizePixel"] = 0;
G2L["346"]["TextTransparency"] = 1;
G2L["346"]["AutoButtonColor"] = false;
G2L["346"]["BackgroundColor3"] = Color3.fromRGB(25, 26, 31);
G2L["346"]["Selectable"] = false;
G2L["346"]["ZIndex"] = 120;
G2L["346"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["346"]["BackgroundTransparency"] = 0.05;
G2L["346"]["Size"] = UDim2.new(0, 400, 0, 0);
G2L["346"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["346"]["Text"] = [[]];
G2L["346"]["Name"] = [[Template]];
G2L["346"]["Visible"] = false;
G2L["346"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.UIStroke
G2L["347"] = Instance.new("UIStroke", G2L["346"]);
G2L["347"]["Transparency"] = 0.5;
G2L["347"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["347"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.DropShadowHolder
G2L["348"] = Instance.new("Frame", G2L["346"]);
G2L["348"]["ZIndex"] = 0;
G2L["348"]["BorderSizePixel"] = 0;
G2L["348"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["348"]["Name"] = [[DropShadowHolder]];
G2L["348"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.DropShadowHolder.antumbraShadow
G2L["349"] = Instance.new("ImageLabel", G2L["348"]);
G2L["349"]["ZIndex"] = 115;
G2L["349"]["BorderSizePixel"] = 0;
G2L["349"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["349"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["349"]["ImageTransparency"] = 0.94;
G2L["349"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["349"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["349"]["Image"] = [[rbxassetid://5587865193]];
G2L["349"]["Size"] = UDim2.new(1.055, 0, 1.34, 0);
G2L["349"]["BackgroundTransparency"] = 1;
G2L["349"]["Name"] = [[antumbraShadow]];
G2L["349"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.DropShadowHolder.penumbraShadow
G2L["34a"] = Instance.new("ImageLabel", G2L["348"]);
G2L["34a"]["ZIndex"] = 115;
G2L["34a"]["BorderSizePixel"] = 0;
G2L["34a"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["34a"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["34a"]["ImageTransparency"] = 0.6;
G2L["34a"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["34a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["34a"]["Image"] = [[rbxassetid://8992230677]];
G2L["34a"]["Size"] = UDim2.new(1.155, 0, 1.24, 0);
G2L["34a"]["BackgroundTransparency"] = 1;
G2L["34a"]["Name"] = [[penumbraShadow]];
G2L["34a"]["Position"] = UDim2.new(0.501, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.DropShadowHolder.umbraShadow
G2L["34b"] = Instance.new("ImageLabel", G2L["348"]);
G2L["34b"]["ZIndex"] = 115;
G2L["34b"]["BorderSizePixel"] = 0;
G2L["34b"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["34b"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["34b"]["ImageTransparency"] = 0.2;
G2L["34b"]["ImageColor3"] = Color3.fromRGB(25, 26, 31);
G2L["34b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["34b"]["Image"] = [[rbxassetid://6014261993]];
G2L["34b"]["Size"] = UDim2.new(1.15, 0, 1.19592, 0);
G2L["34b"]["BackgroundTransparency"] = 1;
G2L["34b"]["Name"] = [[umbraShadow]];
G2L["34b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.UICorner
G2L["34c"] = Instance.new("UICorner", G2L["346"]);



-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder
G2L["34d"] = Instance.new("Frame", G2L["346"]);
G2L["34d"]["ZIndex"] = 121;
G2L["34d"]["BorderSizePixel"] = 0;
G2L["34d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["34d"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["34d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34d"]["Name"] = [[Holder]];
G2L["34d"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.UIListLayout
G2L["34e"] = Instance.new("UIListLayout", G2L["34d"]);
G2L["34e"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["34e"]["Padding"] = UDim.new(0, 8);
G2L["34e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.UIPadding
G2L["34f"] = Instance.new("UIPadding", G2L["34d"]);
G2L["34f"]["PaddingTop"] = UDim.new(0, 8);
G2L["34f"]["PaddingRight"] = UDim.new(0, 8);
G2L["34f"]["PaddingLeft"] = UDim.new(0, 8);
G2L["34f"]["PaddingBottom"] = UDim.new(0, 12);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Header
G2L["350"] = Instance.new("Frame", G2L["34d"]);
G2L["350"]["ZIndex"] = 122;
G2L["350"]["BorderSizePixel"] = 0;
G2L["350"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["350"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["350"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["350"]["Name"] = [[Header]];
G2L["350"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Header.TextLabel
G2L["351"] = Instance.new("TextLabel", G2L["350"]);
G2L["351"]["ZIndex"] = 123;
G2L["351"]["BorderSizePixel"] = 0;
G2L["351"]["TextSize"] = 16;
G2L["351"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["351"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["351"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["351"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["351"]["BackgroundTransparency"] = 1;
G2L["351"]["RichText"] = true;
G2L["351"]["Size"] = UDim2.new(1, -36, 1, 0);
G2L["351"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["351"]["Text"] = [[Dialog]];
G2L["351"]["Position"] = UDim2.new(0, 36, 0, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Header.Icon
G2L["352"] = Instance.new("ImageLabel", G2L["350"]);
G2L["352"]["ZIndex"] = 123;
G2L["352"]["BorderSizePixel"] = 0;
G2L["352"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["352"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["352"]["Image"] = [[rbxassetid://6034227061]];
G2L["352"]["Size"] = UDim2.new(0, 26, 0, 26);
G2L["352"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["352"]["BackgroundTransparency"] = 1;
G2L["352"]["Name"] = [[Icon]];
G2L["352"]["Position"] = UDim2.new(0, 4, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Content
G2L["353"] = Instance.new("Frame", G2L["34d"]);
G2L["353"]["ZIndex"] = 122;
G2L["353"]["BorderSizePixel"] = 0;
G2L["353"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["353"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["353"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["353"]["Name"] = [[Content]];
G2L["353"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Content.TextLabel
G2L["354"] = Instance.new("TextLabel", G2L["353"]);
G2L["354"]["TextWrapped"] = true;
G2L["354"]["ZIndex"] = 123;
G2L["354"]["BorderSizePixel"] = 0;
G2L["354"]["TextSize"] = 12;
G2L["354"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["354"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["354"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Light, Enum.FontStyle.Normal);
G2L["354"]["TextColor3"] = Color3.fromRGB(166, 166, 166);
G2L["354"]["BackgroundTransparency"] = 1;
G2L["354"]["RichText"] = true;
G2L["354"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["354"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["354"]["Text"] = [[Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. Lorem Ipsum Dolor sit Amet. ]];
G2L["354"]["AutomaticSize"] = Enum.AutomaticSize.Y;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Content.UIPadding
G2L["355"] = Instance.new("UIPadding", G2L["353"]);
G2L["355"]["PaddingTop"] = UDim.new(0, -4);
G2L["355"]["PaddingRight"] = UDim.new(0, 5);
G2L["355"]["PaddingLeft"] = UDim.new(0, 5);
G2L["355"]["PaddingBottom"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions
G2L["356"] = Instance.new("Frame", G2L["34d"]);
G2L["356"]["ZIndex"] = 122;
G2L["356"]["BorderSizePixel"] = 0;
G2L["356"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["356"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["356"]["Size"] = UDim2.new(0, 38, 0, 0);
G2L["356"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["356"]["Name"] = [[Actions]];
G2L["356"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary
G2L["357"] = Instance.new("TextButton", G2L["356"]);
G2L["357"]["BorderSizePixel"] = 0;
G2L["357"]["TextSize"] = 15;
G2L["357"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["357"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["357"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["357"]["ZIndex"] = 124;
G2L["357"]["BackgroundTransparency"] = 1;
G2L["357"]["Size"] = UDim2.new(1, 0, 0, 34);
G2L["357"]["LayoutOrder"] = -1;
G2L["357"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["357"]["Text"] = [[]];
G2L["357"]["Name"] = [[Primary]];


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Backdrop
G2L["358"] = Instance.new("Frame", G2L["357"]);
G2L["358"]["Interactable"] = false;
G2L["358"]["ZIndex"] = 123;
G2L["358"]["BorderSizePixel"] = 0;
G2L["358"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["358"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["358"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["358"]["Name"] = [[Backdrop]];
G2L["358"]["BackgroundTransparency"] = 0.2;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Backdrop.Accent
G2L["359"] = Instance.new("UIGradient", G2L["358"]);
G2L["359"]["Name"] = [[Accent]];
G2L["359"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Backdrop.UICorner
G2L["35a"] = Instance.new("UICorner", G2L["358"]);
G2L["35a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Backdrop.UIStroke
G2L["35b"] = Instance.new("UIStroke", G2L["358"]);
G2L["35b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Backdrop.UIStroke.Accent
G2L["35c"] = Instance.new("UIGradient", G2L["35b"]);
G2L["35c"]["Name"] = [[Accent]];
G2L["35c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(231, 187, 252)),ColorSequenceKeypoint.new(0.500, Color3.fromRGB(162, 170, 226)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(139, 202, 243))};


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Header
G2L["35d"] = Instance.new("Frame", G2L["357"]);
G2L["35d"]["Active"] = true;
G2L["35d"]["Interactable"] = false;
G2L["35d"]["ZIndex"] = 124;
G2L["35d"]["BorderSizePixel"] = 0;
G2L["35d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35d"]["Selectable"] = true;
G2L["35d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["35d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35d"]["Name"] = [[Header]];
G2L["35d"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Header.UIListLayout
G2L["35e"] = Instance.new("UIListLayout", G2L["35d"]);
G2L["35e"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["35e"]["Padding"] = UDim.new(0, 6);
G2L["35e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["35e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["35e"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Header.Icon
G2L["35f"] = Instance.new("ImageLabel", G2L["35d"]);
G2L["35f"]["ZIndex"] = 125;
G2L["35f"]["BorderSizePixel"] = 0;
G2L["35f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["35f"]["Image"] = [[rbxassetid://6034227061]];
G2L["35f"]["Size"] = UDim2.new(0, 22, 0, 22);
G2L["35f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35f"]["BackgroundTransparency"] = 1;
G2L["35f"]["Name"] = [[Icon]];
G2L["35f"]["Position"] = UDim2.new(0, 4, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Header.Header
G2L["360"] = Instance.new("TextLabel", G2L["35d"]);
G2L["360"]["Active"] = true;
G2L["360"]["ZIndex"] = 125;
G2L["360"]["BorderSizePixel"] = 0;
G2L["360"]["TextSize"] = 14;
G2L["360"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["360"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["360"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["360"]["BackgroundTransparency"] = 1;
G2L["360"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["360"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["360"]["Text"] = [[Button]];
G2L["360"]["Selectable"] = true;
G2L["360"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["360"]["Name"] = [[Header]];


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Primary.Header.UIPadding
G2L["361"] = Instance.new("UIPadding", G2L["35d"]);
G2L["361"]["PaddingRight"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.UIListLayout
G2L["362"] = Instance.new("UIListLayout", G2L["356"]);
G2L["362"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill;
G2L["362"]["Padding"] = UDim.new(0, 6);
G2L["362"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["362"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["362"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary
G2L["363"] = Instance.new("TextButton", G2L["356"]);
G2L["363"]["BorderSizePixel"] = 0;
G2L["363"]["TextSize"] = 15;
G2L["363"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["363"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["363"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["363"]["ZIndex"] = 124;
G2L["363"]["BackgroundTransparency"] = 1;
G2L["363"]["Size"] = UDim2.new(1, 0, 0, 36);
G2L["363"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["363"]["Text"] = [[]];
G2L["363"]["Name"] = [[Secondary]];


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Header
G2L["364"] = Instance.new("Frame", G2L["363"]);
G2L["364"]["Active"] = true;
G2L["364"]["Interactable"] = false;
G2L["364"]["ZIndex"] = 124;
G2L["364"]["BorderSizePixel"] = 0;
G2L["364"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["364"]["Selectable"] = true;
G2L["364"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["364"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["364"]["Name"] = [[Header]];
G2L["364"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Header.UIListLayout
G2L["365"] = Instance.new("UIListLayout", G2L["364"]);
G2L["365"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["365"]["Padding"] = UDim.new(0, 6);
G2L["365"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["365"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["365"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Header.Icon
G2L["366"] = Instance.new("ImageLabel", G2L["364"]);
G2L["366"]["ZIndex"] = 125;
G2L["366"]["BorderSizePixel"] = 0;
G2L["366"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["366"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["366"]["Image"] = [[rbxassetid://6034227061]];
G2L["366"]["Size"] = UDim2.new(0, 22, 0, 22);
G2L["366"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["366"]["BackgroundTransparency"] = 1;
G2L["366"]["Name"] = [[Icon]];
G2L["366"]["Position"] = UDim2.new(0, 4, 0.5, 0);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Header.Header
G2L["367"] = Instance.new("TextLabel", G2L["364"]);
G2L["367"]["Active"] = true;
G2L["367"]["ZIndex"] = 125;
G2L["367"]["BorderSizePixel"] = 0;
G2L["367"]["TextSize"] = 14;
G2L["367"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["367"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["367"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["367"]["BackgroundTransparency"] = 1;
G2L["367"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["367"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["367"]["Text"] = [[Button]];
G2L["367"]["Selectable"] = true;
G2L["367"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["367"]["Name"] = [[Header]];


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Header.UIPadding
G2L["368"] = Instance.new("UIPadding", G2L["364"]);
G2L["368"]["PaddingRight"] = UDim.new(0, 2);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Backdrop
G2L["369"] = Instance.new("Frame", G2L["363"]);
G2L["369"]["Interactable"] = false;
G2L["369"]["ZIndex"] = 123;
G2L["369"]["BorderSizePixel"] = 0;
G2L["369"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["369"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["369"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["369"]["Name"] = [[Backdrop]];


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Backdrop.UICorner
G2L["36a"] = Instance.new("UICorner", G2L["369"]);
G2L["36a"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Backdrop.UIStroke
G2L["36b"] = Instance.new("UIStroke", G2L["369"]);
G2L["36b"]["Transparency"] = 0.85;
G2L["36b"]["Color"] = Color3.fromRGB(66, 67, 78);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Backdrop.Shadow
G2L["36c"] = Instance.new("Frame", G2L["369"]);
G2L["36c"]["ZIndex"] = 124;
G2L["36c"]["BorderSizePixel"] = 0;
G2L["36c"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["36c"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["36c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36c"]["Name"] = [[Shadow]];


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Backdrop.Shadow.UICorner
G2L["36d"] = Instance.new("UICorner", G2L["36c"]);
G2L["36d"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Secondary.Backdrop.Shadow.UIGradient
G2L["36e"] = Instance.new("UIGradient", G2L["36c"]);
G2L["36e"]["Rotation"] = -90;
G2L["36e"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.272, 0.5375),NumberSequenceKeypoint.new(1.000, 1)};


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.UIPadding
G2L["36f"] = Instance.new("UIPadding", G2L["356"]);
G2L["36f"]["PaddingRight"] = UDim.new(0, 4);
G2L["36f"]["PaddingLeft"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Input
G2L["370"] = Instance.new("Frame", G2L["356"]);
G2L["370"]["Visible"] = false;
G2L["370"]["Active"] = true;
G2L["370"]["ZIndex"] = 123;
G2L["370"]["BorderSizePixel"] = 0;
G2L["370"]["BackgroundColor3"] = Color3.fromRGB(34, 37, 43);
G2L["370"]["Selectable"] = true;
G2L["370"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["370"]["ClipsDescendants"] = true;
G2L["370"]["Size"] = UDim2.new(1, 0, 0, 32);
G2L["370"]["Position"] = UDim2.new(1, -6, 0.5, 0);
G2L["370"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["370"]["Name"] = [[Input]];
G2L["370"]["BackgroundTransparency"] = 0.65;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Input.PART_Input
G2L["371"] = Instance.new("TextBox", G2L["370"]);
G2L["371"]["Name"] = [[PART_Input]];
G2L["371"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["371"]["PlaceholderColor3"] = Color3.fromRGB(166, 166, 166);
G2L["371"]["ZIndex"] = 125;
G2L["371"]["BorderSizePixel"] = 0;
G2L["371"]["TextSize"] = 14;
G2L["371"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["371"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["371"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["371"]["RichText"] = true;
G2L["371"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["371"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["371"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["371"]["ClearTextOnFocus"] = false;
G2L["371"]["ClipsDescendants"] = true;
G2L["371"]["PlaceholderText"] = [[Placeholder Text]];
G2L["371"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["371"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["371"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["371"]["Text"] = [[]];
G2L["371"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Input.UIPadding
G2L["372"] = Instance.new("UIPadding", G2L["370"]);
G2L["372"]["PaddingRight"] = UDim.new(0, 15);
G2L["372"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Input.UICorner
G2L["373"] = Instance.new("UICorner", G2L["370"]);
G2L["373"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Input.UIStroke
G2L["374"] = Instance.new("UIStroke", G2L["370"]);
G2L["374"]["Transparency"] = 0.5;
G2L["374"]["Color"] = Color3.fromRGB(66, 67, 78);
G2L["374"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.Holder.Actions.Input.Interact
G2L["375"] = Instance.new("TextBox", G2L["370"]);
G2L["375"]["Name"] = [[Interact]];
G2L["375"]["PlaceholderColor3"] = Color3.fromRGB(179, 179, 179);
G2L["375"]["ZIndex"] = 124;
G2L["375"]["BorderSizePixel"] = 0;
G2L["375"]["TextTransparency"] = 1;
G2L["375"]["TextSize"] = 1;
G2L["375"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["375"]["Size"] = UDim2.new(1, 20, 1, 0);
G2L["375"]["Position"] = UDim2.new(0, -10, 0, 0);
G2L["375"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["375"]["Text"] = [[]];
G2L["375"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MainWindow.ModalOverlay.Template.UIScale
G2L["376"] = Instance.new("UIScale", G2L["346"]);
G2L["376"]["Scale"] = 1.25;


-- StarterGui.Starlight V2.MobileToggle
G2L["377"] = Instance.new("ImageButton", G2L["1"]);
G2L["377"]["BorderSizePixel"] = 0;
G2L["377"]["Visible"] = false;
G2L["377"]["BackgroundTransparency"] = 1;
G2L["377"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["377"]["ZIndex"] = 9999;
G2L["377"]["Image"] = [[rbxassetid://6031097229]];
G2L["377"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["377"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["377"]["Name"] = [[MobileToggle]];
G2L["377"]["Position"] = UDim2.new(0, 15, 0, 15);


-- StarterGui.Starlight V2.MobileToggle.Backdrop
G2L["378"] = Instance.new("Frame", G2L["377"]);
G2L["378"]["ZIndex"] = 9998;
G2L["378"]["BorderSizePixel"] = 0;
G2L["378"]["BackgroundColor3"] = Color3.fromRGB(24, 26, 30);
G2L["378"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["378"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["378"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["378"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["378"]["Name"] = [[Backdrop]];


-- StarterGui.Starlight V2.MobileToggle.Backdrop.UICorner
G2L["379"] = Instance.new("UICorner", G2L["378"]);
G2L["379"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.Starlight V2.MobileToggle.Backdrop.UIStroke
G2L["37a"] = Instance.new("UIStroke", G2L["378"]);
G2L["37a"]["Color"] = Color3.fromRGB(66, 67, 78);


-- StarterGui.Starlight V2.MobileToggle.Backdrop.DropShadowHolder
G2L["37b"] = Instance.new("Frame", G2L["378"]);
G2L["37b"]["ZIndex"] = 0;
G2L["37b"]["BorderSizePixel"] = 0;
G2L["37b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["37b"]["Name"] = [[DropShadowHolder]];
G2L["37b"]["BackgroundTransparency"] = 1;


-- StarterGui.Starlight V2.MobileToggle.Backdrop.DropShadowHolder.umbraShadow
G2L["37c"] = Instance.new("ImageLabel", G2L["37b"]);
G2L["37c"]["ZIndex"] = -1;
G2L["37c"]["BorderSizePixel"] = 0;
G2L["37c"]["SliceCenter"] = Rect.new(46, 43, 351, 355);
G2L["37c"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["37c"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["37c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["37c"]["Image"] = [[rbxassetid://76200300325831]];
G2L["37c"]["Size"] = UDim2.new(1.02688, 48, 1.04286, 48);
G2L["37c"]["BackgroundTransparency"] = 1;
G2L["37c"]["Name"] = [[umbraShadow]];
G2L["37c"]["Position"] = UDim2.new(0.49946, 0, 0.5, 0);


-- StarterGui.Starlight V2.MobileToggle.Backdrop.DropShadowHolder.antumbraShadow
G2L["37d"] = Instance.new("ImageLabel", G2L["37b"]);
G2L["37d"]["ZIndex"] = -1;
G2L["37d"]["BorderSizePixel"] = 0;
G2L["37d"]["SliceCenter"] = Rect.new(80, 78, 189, 318);
G2L["37d"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["37d"]["ImageTransparency"] = 0.94;
G2L["37d"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["37d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["37d"]["Image"] = [[rbxassetid://5587865193]];
G2L["37d"]["Size"] = UDim2.new(1.05392, 0, 1.34, 0);
G2L["37d"]["BackgroundTransparency"] = 1;
G2L["37d"]["Name"] = [[antumbraShadow]];
G2L["37d"]["Position"] = UDim2.new(0.50046, 0, 0.5, 0);


-- StarterGui.Starlight V2.MobileToggle.Backdrop.DropShadowHolder.penumbraShadow
G2L["37e"] = Instance.new("ImageLabel", G2L["37b"]);
G2L["37e"]["ZIndex"] = -1;
G2L["37e"]["BorderSizePixel"] = 0;
G2L["37e"]["SliceCenter"] = Rect.new(99, 99, 99, 99);
G2L["37e"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["37e"]["ImageTransparency"] = 0.55;
G2L["37e"]["ImageColor3"] = Color3.fromRGB(20, 22, 25);
G2L["37e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["37e"]["Image"] = [[rbxassetid://8992230677]];
G2L["37e"]["Size"] = UDim2.new(1.175, 0, 1.27, 0);
G2L["37e"]["BackgroundTransparency"] = 1;
G2L["37e"]["Name"] = [[penumbraShadow]];
G2L["37e"]["Position"] = UDim2.new(0.50046, 0, 0.5, 0);



do
	local _g = (type(getgenv) == "function" and getgenv()) or _G
	_g.__StarlightPrebuiltUI = G2L["1"]
end
return G2L["1"], require;
