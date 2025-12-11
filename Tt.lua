-- Arceus UI Library (with Tabs + platform-aware scaling)
-- Updated 2025-12-11
-- Author: adapted for user igfrx
-- Usage: local lib = require(path_to_this_file); local tab = lib:AddTab("Combat"); tab:AddToggle("Auto Attack", func, true)

local lib = {}

local Script_Title = "Loading.."

-- Instances (templates / structure):
local Arceus = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Intro = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Logo = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Title = Instance.new("TextLabel")
local TabButtons = Instance.new("Frame")
local TabButtonsLayout = Instance.new("UIListLayout")
local Menu = Instance.new("ScrollingFrame") -- will be used as template for per-tab contents
local UIListLayout = Instance.new("UIListLayout")
local Toggle = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Enabled = Instance.new("Frame")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local Check = Instance.new("Frame")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_5 = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local Button = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local Name_2 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local tab_space = Instance.new("Frame") -- spacing helper (renamed to avoid confusion with tabs)
local Close = Instance.new("TextButton")
local ComboElem = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")
local Name_3 = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local Img = Instance.new("TextLabel")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local ComboBox = Instance.new("ImageButton")
local UICorner_8 = Instance.new("UICorner")
local Name_4 = Instance.new("TextLabel")
local UIGradient_4 = Instance.new("UIGradient")
local Img_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")

-- New Input Box Instances (template):
local InputBox = Instance.new("ImageButton")
local UICorner_9 = Instance.new("UICorner")
local Name_5 = Instance.new("TextLabel")
local UIGradient_5 = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")
local UICorner_10 = Instance.new("UICorner")
local MinLabel = Instance.new("TextLabel")
local MaxLabel = Instance.new("TextLabel")

-- Properties & hierarchy (building templates)

Arceus.Name = "Arceus"
Arceus.Enabled = true
Arceus.ResetOnSpawn = true
Arceus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Arceus.DisplayOrder = 999999999

Main.Name = "Main"
Main.Parent = Arceus
Main.Active = true
Main.Draggable = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, -0.2, 0)
Main.Size = UDim2.new(0.3, 0, 0.3, 0)

UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = Main

-- Add shadow effect for modern look
local MainShadow = Instance.new("ImageLabel")
MainShadow.Name = "MainShadow"
MainShadow.Image = "rbxassetid://1316045217"
MainShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
MainShadow.ImageTransparency = 0.8
MainShadow.ScaleType = Enum.ScaleType.Slice
MainShadow.SliceCenter = Rect.new(10, 10, 118, 118)
MainShadow.BackgroundTransparency = 1
MainShadow.Position = UDim2.new(0, -15, 0, -15)
MainShadow.Size = UDim2.new(1, 30, 1, 30)
MainShadow.ZIndex = -1
MainShadow.Parent = Main

Intro.Name = "Intro"
Intro.Parent = Main
Intro.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Intro.ClipsDescendants = true
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 2

UICorner_2.CornerRadius = UDim.new(0.1, 0)
UICorner_2.Parent = Intro

Logo.Parent = Intro
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0.75, 0, 0.75, 0)
Logo.ZIndex = 2
Logo.Image = "http://www.roblox.com/asset/?id=98057150035606"
Logo.ScaleType = Enum.ScaleType.Fit
Logo.Active = false

UIAspectRatioConstraint.Parent = Logo

Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(1, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.975, 0, 0.075, 0)
Title.Size = UDim2.new(0.85, 0, 0.155, 0)
Title.Font = Enum.Font.TitilliumWeb
Title.FontFace = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Bold)
Title.RichText = true
Title.Text = Script_Title
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Center

-- Tab buttons bar (left side)
TabButtons.Name = "TabButtons"
TabButtons.Parent = Main
TabButtons.AnchorPoint = Vector2.new(0, 0)
TabButtons.BackgroundTransparency = 1
TabButtons.Position = UDim2.new(0.02, 0, 0.18, 0)
TabButtons.Size = UDim2.new(0.2, 0, 0.7, 0)
TabButtonsLayout.Name = "UIListLayout"
TabButtonsLayout.Parent = TabButtons
TabButtonsLayout.FillDirection = Enum.FillDirection.Vertical
TabButtonsLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabButtonsLayout.Padding = UDim.new(0, 6)

-- Menu template (each tab will have its own ScrollingFrame cloned from this)
Menu.Name = "Menu"
Menu.Parent = Main
Menu.Active = true
Menu.AnchorPoint = Vector2.new(0.5, 1)
Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Menu.BackgroundTransparency = 1
Menu.AutomaticCanvasSize = Enum.AutomaticSize.Y
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.6, 0, 0.95, 0)
Menu.Size = UDim2.new(0.75, 0, 0.65, 0)
Menu.CanvasSize = UDim2.new(0, 0, 0, 0)
Menu.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
Menu.ScrollBarThickness = 10

UIListLayout.Parent = Menu
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

-- Toggle template
Toggle.Name = "Toggle"
Toggle.Visible = false
Toggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Toggle.Size = UDim2.new(0.95, 0, 0, 50)

UICorner_3.CornerRadius = UDim.new(0.25, 0)
UICorner_3.Parent = Toggle

Enabled.Name = "Enabled"
Enabled.Parent = Toggle
Enabled.AnchorPoint = Vector2.new(1, 0.5)
Enabled.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Enabled.Position = UDim2.new(0.975, 0, 0.5, 0)
Enabled.Size = UDim2.new(0.75, 0, 0.75, 0)

UIAspectRatioConstraint_2.Parent = Enabled

UICorner_4.CornerRadius = UDim.new(0.3, 0)
UICorner_4.Parent = Enabled

Check.Name = "Check"
Check.Parent = Enabled
Check.AnchorPoint = Vector2.new(0.5, 0.5)
Check.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Check.Position = UDim2.new(0.5, 0, 0.5, 0)
Check.Size = UDim2.new(0.65, 0, 0.65, 0)

UIAspectRatioConstraint_3.Parent = Check

UICorner_5.CornerRadius = UDim.new(0.3, 0)
UICorner_5.Parent = Check

Name.Name = "Name"
Name.Parent = Toggle
Name.AnchorPoint = Vector2.new(0, 0.5)
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.05, 0, 0.5, 0)
Name.Size = UDim2.new(0.75, 0, 0.8, 0)
Name.Font = Enum.Font.TitilliumWeb
Name.Text = "Script"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient.Parent = Toggle

-- Button template
Button.Name = "Button"
Button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Button.Size = UDim2.new(0.95, 0, 0, 50)

UICorner_6.CornerRadius = UDim.new(0.25, 0)
UICorner_6.Parent = Button

Name_2.Name = "Name"
Name_2.Parent = Button
Name_2.AnchorPoint = Vector2.new(0, 0.5)
Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_2.BackgroundTransparency = 1
Name_2.BorderSizePixel = 0
Name_2.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_2.Size = UDim2.new(0.95, 0, 0.82, 0)
Name_2.Font = Enum.Font.TitilliumWeb
Name_2.Text = "Enabled"
Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextScaled = true
Name_2.TextSize = 14
Name_2.TextWrapped = true
Name_2.TextXAlignment = Enum.TextXAlignment.Left
Name_2.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_2.Parent = Button

-- space helper (small invisible frame)
tab_space.Name = "Space"
tab_space.Visible = false
tab_space.BackgroundTransparency = 1
tab_space.Size = UDim2.new(0.95, 0, 0.025, 0)

-- Close Button
Close.Name = "Close"
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.8, 0, 0.1, 0)
Close.Size = UDim2.new(0.15, 0, 0.125, 0)
Close.Font = Enum.Font.FredokaOne
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.TextXAlignment = Enum.TextXAlignment.Right
Close.Parent = Main

-- ComboElem template
ComboElem.Name = "ComboElem"
ComboElem.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboElem.Size = UDim2.new(0.95, 0, 0, 50)

UICorner_7.CornerRadius = UDim.new(0.25, 0)
UICorner_7.Parent = ComboElem

Name_3.Name = "Name"
Name_3.Parent = ComboElem
Name_3.AnchorPoint = Vector2.new(0, 0.5)
Name_3.BackgroundTransparency = 1
Name_3.BorderSizePixel = 0
Name_3.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_3.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_3.Font = Enum.Font.TitilliumWeb
Name_3.Text = "Enabled"
Name_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_3.TextScaled = true
Name_3.TextSize = 14
Name_3.TextWrapped = true
Name_3.TextXAlignment = Enum.TextXAlignment.Left
Name_3.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_3.Rotation = 180
UIGradient_3.Parent = ComboElem

Img.Name = "Img"
Img.Parent = ComboElem
Img.AnchorPoint = Vector2.new(1, 0.5)
Img.BackgroundTransparency = 1
Img.BorderSizePixel = 0
Img.Position = UDim2.new(0.975, 0, 0.5, 0)
Img.Rotation = 90
Img.Size = UDim2.new(0.75, 0, 0.75, 0)
Img.Font = Enum.Font.FredokaOne
Img.Text = "^"
Img.TextColor3 = Color3.fromRGB(255, 255, 255)
Img.TextScaled = true
Img.TextSize = 14
Img.TextWrapped = true

UIAspectRatioConstraint_4.Parent = Img

-- ComboBox template
ComboBox.Name = "ComboBox"
ComboBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboBox.Size = UDim2.new(0.95, 0, 0, 50)

UICorner_8.CornerRadius = UDim.new(0.25, 0)
UICorner_8.Parent = ComboBox

Name_4.Name = "Name"
Name_4.Parent = ComboBox
Name_4.AnchorPoint = Vector2.new(0, 0.5)
Name_4.BackgroundTransparency = 1.000
Name_4.BorderSizePixel = 0
Name_4.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_4.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_4.Font = Enum.Font.TitilliumWeb
Name_4.Text = "Enabled"
Name_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_4.TextScaled = true
Name_4.TextSize = 14
Name_4.TextWrapped = true
Name_4.TextXAlignment = Enum.TextXAlignment.Left
Name_4.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_4.Parent = ComboBox

Img_2.Name = "Img"
Img_2.Parent = ComboBox
Img_2.AnchorPoint = Vector2.new(1, 0.5)
Img_2.BackgroundTransparency = 1
Img_2.BorderSizePixel = 0
Img_2.Rotation = 180
Img_2.Position = UDim2.new(0.975, 0, 0.5, 0)
Img_2.Size = UDim2.new(0.75, 0, 0.75, 0)
Img_2.Font = Enum.Font.FredokaOne
Img_2.Text = "^"
Img_2.TextColor3 = Color3.fromRGB(255, 0, 0)
Img_2.TextScaled = true
Img_2.TextSize = 14
Img_2.TextWrapped = true

UIAspectRatioConstraint_5.Parent = Img_2

-- Input Box template:
InputBox.Name = "InputBox"
InputBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
InputBox.Size = UDim2.new(0.95, 0, 0, 50)
InputBox.AutoButtonColor = false

UICorner_9.CornerRadius = UDim.new(0.25, 0)
UICorner_9.Parent = InputBox

Name_5.Name = "Name"
Name_5.Parent = InputBox
Name_5.AnchorPoint = Vector2.new(0, 0.5)
Name_5.BackgroundTransparency = 1
Name_5.BorderSizePixel = 0
Name_5.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_5.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_5.Font = Enum.Font.TitilliumWeb
Name_5.Text = "Input Box"
Name_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_5.TextScaled = true
Name_5.TextSize = 14
Name_5.TextWrapped = true
Name_5.TextXAlignment = Enum.TextXAlignment.Left
Name_5.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
UIGradient_5.Parent = InputBox

TextBox.Name = "TextBox"
TextBox.Parent = InputBox
TextBox.AnchorPoint = Vector2.new(1, 0.5)
TextBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
TextBox.BackgroundTransparency = 0
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.95, 0, 0.5, 0)
TextBox.Size = UDim2.new(0.35, 0, 0.6, 0)
TextBox.Font = Enum.Font.TitilliumWeb
TextBox.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)
TextBox.PlaceholderText = "Enter text..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0.25, 0)
UICorner_10.Parent = TextBox

MinLabel.Name = "MinLabel"
MinLabel.Parent = InputBox
MinLabel.AnchorPoint = Vector2.new(1, 0)
MinLabel.BackgroundTransparency = 1
MinLabel.BorderSizePixel = 0
MinLabel.Position = UDim2.new(0.55, 0, 0.1, 0)
MinLabel.Size = UDim2.new(0.15, 0, 0.3, 0)
MinLabel.Font = Enum.Font.TitilliumWeb
MinLabel.Text = "Min: 0"
MinLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
MinLabel.TextScaled = true
MinLabel.TextSize = 8
MinLabel.TextWrapped = true
MinLabel.TextXAlignment = Enum.TextXAlignment.Right
MinLabel.Visible = false

MaxLabel.Name = "MaxLabel"
MaxLabel.Parent = InputBox
MaxLabel.AnchorPoint = Vector2.new(1, 1)
MaxLabel.BackgroundTransparency = 1
MaxLabel.BorderSizePixel = 0
MaxLabel.Position = UDim2.new(0.55, 0, 0.9, 0)
MaxLabel.Size = UDim2.new(0.15, 0, 0.3, 0)
MaxLabel.Font = Enum.Font.TitilliumWeb
MaxLabel.Text = "Max: 100"
MaxLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
MaxLabel.TextScaled = true
MaxLabel.TextSize = 8
MaxLabel.TextWrapped = true
MaxLabel.TextXAlignment = Enum.TextXAlignment.Right
MaxLabel.Visible = false

-- SCRIPT

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Intro/Close behavior (keeps original)
Close.MouseButton1Click:Connect(function()
	Logo.Active = true
	TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()

	task.wait(0.3)
	Logo:TweenSizeAndPosition(
		UDim2.fromScale(0.75, 0.75),
		UDim2.fromScale(0.5, 0.5),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quad,
		0.25, true, nil
	)

	task.wait(0.3)
	Main:TweenSize(
		UDim2.fromScale(0.1, 0.175),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quad,
		0.25, true, nil
	)

	task.wait(0.3)
	for _, obj in pairs(Main:GetChildren()) do
		if obj:IsA("GuiObject") and obj ~= Intro then
			obj.Visible = false
		end
	end

	TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0.8}):Play()
	TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
	TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.8}):Play()
end)

Logo.MouseButton1Click:Connect(function()
	Logo.Active = false
	TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0}):Play()
	TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()

	task.wait(0.3)
	Main:TweenSize(
		UDim2.fromScale(0.3, 0.3),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quad,
		0.25, true, nil
	)

	task.wait(0.3)
	Logo:TweenSizeAndPosition(
		UDim2.fromScale(0.175, 0.175),
		UDim2.fromScale(0.075, 0.15),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quad,
		0.25, true, nil
	)

	for _, obj in pairs(Main:GetChildren()) do
		if obj:IsA("GuiObject") and obj ~= Intro then
			obj.Visible = true
		end
	end

	task.wait(0.3)
	TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
end)

local function uiparent()
	local success, parent = pcall(function()
		return gethui()
	end)

	if not success then
		return game:GetService("CoreGui")
	end

	return parent
end

local success, err = pcall(function()
	Arceus.Parent = uiparent()
end)

if not success then
	Arceus.Parent = game:GetService("Players").LocalPlayer.PlayerGui
end

-- Tab system state
local tabs = {} -- map name -> {button, frame, elements_count}
local activeTab = nil

-- Internal helper: create a tab button (TextButton) and content scrolling frame
local function createTab(name)
	-- button
	local btn = Instance.new("TextButton")
	btn.Name = ("TabBtn_%s"):format(name)
	btn.BackgroundTransparency = 0
	btn.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	btn.BorderSizePixel = 0
	btn.Size = UDim2.new(1, 0, 0, 36)
	btn.Font = Enum.Font.TitilliumWeb
	btn.Text = name
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.TextScaled = true
	btn.Parent = TabButtons

	-- content (clone from Menu template)
	local frame = Menu:Clone()
	frame.Name = ("TabContent_%s"):format(name)
	frame.Parent = Main
	frame.Position = Menu.Position
	frame.Size = Menu.Size
	frame.Visible = false -- only active tab is visible
	frame.AutomaticCanvasSize = Menu.AutomaticCanvasSize
	frame.CanvasSize = UDim2.new(0,0,0,0)
	frame.ScrollBarThickness = Menu.ScrollBarThickness
	-- Ensure layout exists
	local layout = frame:FindFirstChildOfClass("UIListLayout") or UIListLayout:Clone()
	layout.Parent = frame
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Padding = UDim.new(0,6)

	-- store
	tabs[name] = {
		button = btn,
		frame = frame,
		elements = 0,
		layout = layout
	}

	-- button activation
	btn.MouseButton1Click:Connect(function()
		-- switch
		for tname, tdata in pairs(tabs) do
			tdata.frame.Visible = (tname == name)
			-- small visual: dim inactive
			tdata.button.BackgroundColor3 = (tname == name) and Color3.fromRGB(74, 74, 74) or Color3.fromRGB(55, 55, 55)
		end
		activeTab = tabs[name].frame
	end)

	-- When the frame size changes (first layout) ensure elements adapt
	frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		-- nothing heavy: used when creating elements we compute height on demand
	end)

	-- if this is the first tab created, make it active by default
	if not activeTab then
		activeTab = frame
		frame.Visible = true
		btn.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
	end

	return tabs[name]
end

-- Create default tab
createTab("Main")

-- Helper: compute element height based on parent's height (keeps original proportional logic)
local function computeElementHeight(parentFrame)
	if not parentFrame or not parentFrame.AbsoluteSize then
		return 50
	end
	local base = 50
	local ref = 210
	local parentY = parentFrame.AbsoluteSize.Y
	if parentY <= 0 then
		return base
	end
	local h = math.max(34, math.floor(base * (parentY / ref)))
	return h
end

-- Helper to add spacing (space template)
local function AddSpaceTo(parentFrame)
	local space = tab_space:Clone()
	space.Parent = parentFrame
	space.LayoutOrder = (parentFrame:GetAttribute("elements") or 0)
	space.Visible = true
	parentFrame:SetAttribute("elements", (parentFrame:GetAttribute("elements") or 0) + 1)
end

-- Internal element creators that target a specific parent frame
local function addToggleTo(parentFrame, name, funct, enabled, ...)
	local newTog = Toggle:Clone()
	local args = {...}
	newTog.Visible = true

	newTog.MouseButton1Click:Connect(function()
		enabled = not enabled
		local enabledFrame = newTog:WaitForChild("Enabled", 1)
		if enabledFrame then
			enabledFrame:WaitForChild("Check").Visible = enabled
		end
		if funct then
			funct(enabled, unpack(args))
		end
	end)

	newTog:WaitForChild("Enabled"):WaitForChild("Check").Visible = enabled
	newTog:WaitForChild("Name").Text = name

	local h = computeElementHeight(parentFrame)
	newTog.Size = UDim2.new(0.95, 0, 0, h)
	newTog.Name = name
	newTog.Parent = parentFrame
	newTog.LayoutOrder = (parentFrame:GetAttribute("elements") or 0)
	parentFrame:SetAttribute("elements", (parentFrame:GetAttribute("elements") or 0) + 1)

	AddSpaceTo(parentFrame)
	return newTog
end

local function addButtonTo(parentFrame, name, funct, ...)
	local newBut = Button:Clone()
	local args = {...}
	newBut.Visible = true

	newBut.MouseButton1Click:Connect(function()
		if funct then
			funct(unpack(args))
		end
	end)

	newBut:WaitForChild("Name").Text = name
	local h = computeElementHeight(parentFrame)
	newBut.Size = UDim2.new(0.95, 0, 0, h)
	newBut.Name = name
	newBut.Parent = parentFrame
	newBut.LayoutOrder = (parentFrame:GetAttribute("elements") or 0)
	parentFrame:SetAttribute("elements", (parentFrame:GetAttribute("elements") or 0) + 1)

	AddSpaceTo(parentFrame)
	return newBut
end

local function addInputBoxTo(parentFrame, name, funct, placeholder, default, options, ...)
	local newInput = InputBox:Clone()
	newInput.Visible = true
	local args = {...}

	-- Parse options for min and max values
	local minValue = nil
	local maxValue = nil
	local isNumberOnly = false

	if options then
		if options.min ~= nil then
			minValue = options.min
		end
		if options.max ~= nil then
			maxValue = options.max
		end
		if options.isNumber ~= nil then
			isNumberOnly = options.isNumber
		end
	end

	newInput:WaitForChild("Name").Text = name
	if placeholder then
		newInput.TextBox.PlaceholderText = placeholder
	end
	if default then
		newInput.TextBox.Text = default
	end

	-- Show min and max labels if values are provided
	if minValue ~= nil or maxValue ~= nil then
		newInput.MinLabel.Visible = true
		newInput.MaxLabel.Visible = true

		if minValue ~= nil then
			newInput.MinLabel.Text = "Min: " .. tostring(minValue)
		end
		if maxValue ~= nil then
			newInput.MaxLabel.Text = "Max: " .. tostring(maxValue)
		end

		-- Adjust text box position to accommodate labels
		newInput.TextBox.Position = UDim2.new(0.95, 0, 0.5, 0)
		newInput.TextBox.Size = UDim2.new(0.35, 0, 0.6, 0)
	end

	local textBox = newInput.TextBox

	-- Validation helpers
	local function validateInput(inputText)
		if isNumberOnly then
			local numericText = inputText:gsub("[^%-%d%.]", "")
			local decimalCount = 0
			local cleanedText = ""
			for i = 1, #numericText do
				local char = numericText:sub(i, i)
				if char == "." then
					decimalCount = decimalCount + 1
					if decimalCount <= 1 then
						cleanedText = cleanedText .. char
					end
				elseif char == "-" then
					if i == 1 then
						cleanedText = cleanedText .. char
					end
				else
					cleanedText = cleanedText .. char
				end
			end
			inputText = cleanedText
			if inputText ~= "" and inputText ~= "-" and inputText ~= "." then
				local numValue = tonumber(inputText)
				if numValue then
					if minValue ~= nil and numValue < minValue then
						inputText = tostring(minValue)
					elseif maxValue ~= nil and numValue > maxValue then
						inputText = tostring(maxValue)
					end
				end
			end
		end
		return inputText
	end

	local function submitText()
		local text = textBox.Text
		local validatedText = validateInput(text)

		if text ~= validatedText then
			textBox.Text = validatedText
			text = validatedText
		end

		if funct then
			funct(text, unpack(args))
		end
	end

	local function handleTextChanged()
		if isNumberOnly then
			local cursorPos = textBox.CursorPosition
			local text = textBox.Text
			local validatedText = validateInput(text)
			if text ~= validatedText then
				textBox.Text = validatedText
				textBox.CursorPosition = math.min(cursorPos, #validatedText + 1)
			end
		end
	end

	textBox:GetPropertyChangedSignal("Text"):Connect(handleTextChanged)

	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			submitText()
		else
			handleTextChanged()
		end
	end)

	newInput.MouseButton1Click:Connect(function()
		if not textBox:IsFocused() then
			textBox:CaptureFocus()
		end
	end)

	local h = computeElementHeight(parentFrame)
	newInput.Size = UDim2.new(0.95, 0, 0, h)
	newInput.Name = name
	newInput.Parent = parentFrame
	newInput.LayoutOrder = (parentFrame:GetAttribute("elements") or 0)
	parentFrame:SetAttribute("elements", (parentFrame:GetAttribute("elements") or 0) + 1)

	AddSpaceTo(parentFrame)

	-- Return control object
	local inputObj = {
		Frame = newInput,
		TextBox = textBox,
		GetText = function()
			return textBox.Text
		end,
		SetText = function(newText)
			textBox.Text = newText or ""
			handleTextChanged()
		end,
		Clear = function()
			textBox.Text = ""
		end,
		SetPlaceholder = function(placeholderText)
			textBox.PlaceholderText = placeholderText or "Enter text..."
		end,
		SetMinValue = function(minVal)
			minValue = minVal
			newInput.MinLabel.Visible = minVal ~= nil
			if minVal ~= nil then
				newInput.MinLabel.Text = "Min: " .. tostring(minVal)
			end
			handleTextChanged()
		end,
		SetMaxValue = function(maxVal)
			maxValue = maxVal
			newInput.MaxLabel.Visible = maxVal ~= nil
			if maxVal ~= nil then
				newInput.MaxLabel.Text = "Max: " .. tostring(maxVal)
			end
			handleTextChanged()
		end,
		SetNumberOnly = function(numberOnly)
			isNumberOnly = numberOnly
			if numberOnly then
				handleTextChanged()
			end
		end,
		GetMinValue = function()
			return minValue
		end,
		GetMaxValue = function()
			return maxValue
		end
	}

	-- initial validation
	handleTextChanged()

	return inputObj
end

local function addComboBoxTo(parentFrame, text, options, funct, ...)
	local newCombo = ComboBox:Clone()
	newCombo.Visible = true
	local enabled = false
	local elems = {}
	local args = {...}

	local function setBoxState()
		local img = newCombo:FindFirstChild("Img")
		if img then
			img.Rotation = enabled and 0 or 180
		end
		for _, elem in ipairs(elems) do
			elem.Visible = enabled
		end
	end

	newCombo.MouseButton1Click:Connect(function()
		enabled = not enabled
		setBoxState()
	end)

	newCombo:WaitForChild("Name").Text = text .. ": " .. (#options > 0 and options[1] or "")
	local h = computeElementHeight(parentFrame)
	newCombo.Size = UDim2.new(0.95, 0, 0, h)
	newCombo.Name = (#options > 0 and options[1] or "")
	newCombo.Parent = parentFrame
	newCombo.LayoutOrder = (parentFrame:GetAttribute("elements") or 0)
	parentFrame:SetAttribute("elements", (parentFrame:GetAttribute("elements") or 0) + 1)
	newCombo.Visible = true

	AddSpaceTo(parentFrame)

	for _, name in ipairs(options) do
		local newElem = ComboElem:Clone()
		newElem.Visible = false
		table.insert(elems, newElem)

		newElem.MouseButton1Click:Connect(function()
			newCombo:WaitForChild("Name").Text = text .. ": " .. name
			enabled = false
			setBoxState()
			if funct then
				funct(name, unpack(args))
			end
		end)

		newElem:WaitForChild("Name").Text = name
		newElem.Size = UDim2.new(0.95, 0, 0, computeElementHeight(parentFrame))
		newElem.Name = name
		newElem.Parent = parentFrame
		newElem.LayoutOrder = (parentFrame:GetAttribute("elements") or 0)
		parentFrame:SetAttribute("elements", (parentFrame:GetAttribute("elements") or 0) + 1)

		AddSpaceTo(parentFrame)
	end

	return newCombo
end

-- Public API: creating tabs
function lib:AddTab(name)
	assert(type(name) == "string", "Tab name must be a string")
	if tabs[name] then
		-- return a wrapper for existing tab
		local wrapper = {}
		wrapper.Name = name
		wrapper.AddToggle = function(_, ...) return addToggleTo(tabs[name].frame, ...) end
		wrapper.AddButton = function(_, ...) return addButtonTo(tabs[name].frame, ...) end
		wrapper.AddInputBox = function(_, ...) return addInputBoxTo(tabs[name].frame, ...) end
		wrapper.AddComboBox = function(_, ...) return addComboBoxTo(tabs[name].frame, ...) end
		wrapper.Activate = function() tabs[name].button:CaptureFocus(); tabs[name].button.MouseButton1Click:Fire() end
		return wrapper
	end

	local tabdata = createTab(name)
	local wrapper = {}
	wrapper.Name = name
	wrapper.AddToggle = function(_, ...) return addToggleTo(tabdata.frame, ...) end
	wrapper.AddButton = function(_, ...) return addButtonTo(tabdata.frame, ...) end
	wrapper.AddInputBox = function(_, ...) return addInputBoxTo(tabdata.frame, ...) end
	wrapper.AddComboBox = function(_, ...) return addComboBoxTo(tabdata.frame, ...) end
	wrapper.Activate = function() tabdata.button.MouseButton1Click:Fire() end
	return wrapper
end

-- Backwards-compatible methods (operate on active tab)
function lib:AddToggle(name, funct, enabled, ...)
	assert(activeTab, "No active tab found")
	return addToggleTo(activeTab, name, funct, enabled, ...)
end

function lib:AddButton(name, funct, ...)
	assert(activeTab, "No active tab found")
	return addButtonTo(activeTab, name, funct, ...)
end

function lib:AddInputBox(name, funct, placeholder, default, options, ...)
	assert(activeTab, "No active tab found")
	return addInputBoxTo(activeTab, name, funct, placeholder, default, options, ...)
end

function lib:AddComboBox(text, options, funct, ...)
	assert(activeTab, "No active tab found")
	return addComboBoxTo(activeTab, text, options, funct, ...)
end

-- Visual configuration / theming functions (operate on templates so new elements inherit)
function lib:SetTitle(txt)
    Title.Text = txt
end

function lib:SetIcon(img)
    Logo.Image = img
end

function lib:SetBackgroundColor(r, g ,b)
    Main.BackgroundColor3 = Color3.fromRGB(r, g, b)
    Intro.BackgroundColor3 = Color3.fromRGB(r, g, b)
end

function lib:SetTitleColor(r, g, b)
    Title.TextColor3 = Color3.fromRGB(r, g, b)
end

function lib:SetCloseBtnColor(r, g, b)
    Close.TextColor3 = Color3.fromRGB(r, g, b)
	Img_2.TextColor3 = Color3.fromRGB(r, g, b)
	Check.BackgroundColor3 = Color3.fromRGB(r, g, b)
end

function lib:SetButtonsColor(r, g ,b)
    Toggle.BackgroundColor3 = Color3.fromRGB(r, g, b)
	Button.BackgroundColor3 = Color3.fromRGB(r, g, b)
	ComboElem.BackgroundColor3 = Color3.fromRGB(r, g, b)
	ComboBox.BackgroundColor3 = Color3.fromRGB(r, g, b)
	InputBox.BackgroundColor3 = Color3.fromRGB(r, g, b)
end

function lib:SetInputBoxColor(r, g, b)
    InputBox.BackgroundColor3 = Color3.fromRGB(r, g, b)
    TextBox.BackgroundColor3 = Color3.fromRGB(math.max(0, r-15), math.max(0, g-15), math.max(0, b-15))
end

function lib:SetTheme(theme)
	if theme == "Default" then
		
	elseif theme == "TomorrowNightBlue" then
		lib:SetButtonsColor(74, 208, 238)
		lib:SetCloseBtnColor(74, 208, 238)
		lib:SetBackgroundColor(5, 16, 58)
		lib:SetInputBoxColor(74, 208, 238)
	elseif theme == "HighContrast" then
		lib:SetBackgroundColor(0, 0, 0)
		lib:SetButtonsColor(0, 0, 0)
		lib:SetCloseBtnColor(255, 255, 0)
		lib:SetInputBoxColor(0, 0, 0)
	elseif theme == "Aqua" then
		lib:SetBackgroundColor(44, 62, 82)
		lib:SetButtonsColor(52, 74, 95)
		lib:SetCloseBtnColor(26, 189, 158)
		lib:SetInputBoxColor(52, 74, 95)
	elseif theme == "Ocean" then
		lib:SetBackgroundColor(26, 32, 58)
		lib:SetButtonsColor(38, 45, 71)
		lib:SetCloseBtnColor(86, 76, 251)
		lib:SetInputBoxColor(38, 45, 71)
	else
		error("Theme not found.")
	end
end

-- Platform-aware scaling:
-- If the device is non-touch (PC), scale the UI up. If touch-enabled (mobile/tablet), keep original size.
local function applyPlatformScale()
	local isTouch = UserInputService.TouchEnabled
	-- original size (as in previous code)
	local mobileSize = UDim2.new(0.3, 0, 0.3, 0)
	local pcSize = UDim2.new(0.45, 0, 0.45, 0) -- larger on PC
	local target = isTouch and mobileSize or pcSize
	-- Tween to the size for smoothness
	TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = target}):Play()
end

-- React to platform changes (if device toggles)
if UserInputService:GetPropertyChangedSignal then
	UserInputService:GetPropertyChangedSignal("TouchEnabled"):Connect(function()
		applyPlatformScale()
	end)
end

-- Initial platform sizing
applyPlatformScale()

-- Initial entrance animation (keeps similar behavior)
Main:TweenPosition(
	UDim2.fromScale(0.5, 0.5),
	Enum.EasingDirection.In,
	Enum.EasingStyle.Quad,
	1, true, nil
)

task.wait(1.5)
Logo:TweenSizeAndPosition(
	UDim2.fromScale(0.175, 0.175),
	UDim2.fromScale(0.075, 0.15),
	Enum.EasingDirection.In,
	Enum.EasingStyle.Quad,
	1, true, nil
)

task.wait(1.5)
TweenService:Create(Intro, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()

-- Return the library
return lib
