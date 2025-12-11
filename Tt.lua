-- Enhanced Arceus UI (with themes, shadows, animations, tab indicator, hover effects)
-- Saved as: arceus_ui_enhanced.lua
-- Usage: require or load this module as before. Returns `lib`.

local lib = {}

local Script_Title = "Loading.."

-- Services
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- Instances:
local Arceus = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Intro = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Logo = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Title = Instance.new("TextLabel")
local Menu = Instance.new("ScrollingFrame")
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
local tab = Instance.new("Frame")
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

-- New Input Box Instances:
local InputBox = Instance.new("ImageButton")
local UICorner_9 = Instance.new("UICorner")
local Name_5 = Instance.new("TextLabel")
local UIGradient_5 = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")
local UICorner_10 = Instance.new("UICorner")
local MinLabel = Instance.new("TextLabel")
local MaxLabel = Instance.new("TextLabel")

-- New Tab System Instances:
local TabsContainer = Instance.new("Frame")
local TabsScroller = Instance.new("ScrollingFrame")
local TabsListLayout = Instance.new("UIListLayout")
local TabButtonTemplate = Instance.new("TextButton")
local TabButtonUICorner = Instance.new("UICorner")

-- Properties:

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
Main.Position = UDim2.new(0.5, 0, -0.2, 0) --UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0.3, 0, 0.3, 0)

UICorner.CornerRadius = UDim.new(0.1, 0)
UICorner.Parent = Main

-- Add shadow effect for modern look (main)
local MainShadow = Instance.new("ImageLabel")
MainShadow.Name = "MainShadow"
MainShadow.Image = "rbxassetid://1316045217"
MainShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
MainShadow.ImageTransparency = 0.75
MainShadow.ScaleType = Enum.ScaleType.Slice
MainShadow.SliceCenter = Rect.new(10, 10, 118, 118)
MainShadow.BackgroundTransparency = 1
MainShadow.Position = UDim2.new(0, -18, 0, -18)
MainShadow.Size = UDim2.new(1, 36, 1, 36)
MainShadow.ZIndex = Main.ZIndex - 1
MainShadow.Parent = Main

-- Tabs System
TabsContainer.Name = "TabsContainer"
TabsContainer.Parent = Main
TabsContainer.BackgroundTransparency = 1
TabsContainer.BorderSizePixel = 0
TabsContainer.Position = UDim2.new(0, 0, -0.15, 0) -- Position above the UI
TabsContainer.Size = UDim2.new(1, 0, 0.15, 0)
TabsContainer.ZIndex = 10

TabsScroller.Name = "TabsScroller"
TabsScroller.Parent = TabsContainer
TabsScroller.Active = true
TabsScroller.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TabsScroller.BackgroundTransparency = 1
TabsScroller.BorderSizePixel = 0
TabsScroller.Size = UDim2.new(1, 0, 1, 0)
TabsScroller.CanvasSize = UDim2.new(0, 0, 0, 0)
TabsScroller.ScrollBarThickness = 4
TabsScroller.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
TabsScroller.ScrollingDirection = Enum.ScrollingDirection.X
TabsScroller.AutomaticCanvasSize = Enum.AutomaticSize.X

TabsListLayout.Name = "TabsListLayout"
TabsListLayout.Parent = TabsScroller
TabsListLayout.FillDirection = Enum.FillDirection.Horizontal
TabsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabsListLayout.Padding = UDim.new(0.02, 0)

TabButtonTemplate.Name = "TabButtonTemplate"
TabButtonTemplate.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TabButtonTemplate.BorderSizePixel = 0
TabButtonTemplate.Size = UDim2.new(0, 110, 0.85, 0) -- slightly wider tabs
TabButtonTemplate.Font = Enum.Font.TitilliumWeb
TabButtonTemplate.Text = "Tab"
TabButtonTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButtonTemplate.TextScaled = true
TabButtonTemplate.TextSize = 14
TabButtonTemplate.TextWrapped = true
TabButtonTemplate.AutoButtonColor = false
TabButtonTemplate.ZIndex = 11

TabButtonUICorner.CornerRadius = UDim.new(0.15, 0)
TabButtonUICorner.Parent = TabButtonTemplate

-- Add stroke + subtle inner shadow to tab template
local TabStroke = Instance.new("UIStroke")
TabStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TabStroke.Thickness = 1
TabStroke.Color = Color3.fromRGB(30, 30, 30)
TabStroke.Parent = TabButtonTemplate

-- Tab indicator (underline that moves to active tab)
local TabIndicator = Instance.new("Frame")
TabIndicator.Name = "TabIndicator"
TabIndicator.Size = UDim2.new(0.2, 0, 0, 4)
TabIndicator.AnchorPoint = Vector2.new(0, 0)
TabIndicator.Position = UDim2.new(0, 8, 1, -6)
TabIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabIndicator.ZIndex = 12
TabIndicator.Parent = TabsContainer
local TabIndicatorUICorner = Instance.new("UICorner")
TabIndicatorUICorner.CornerRadius = UDim.new(1, 0)
TabIndicatorUICorner.Parent = TabIndicator

-- Intro and other existing elements
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
Title.ZIndex = 11

Menu.Name = "Menu"
Menu.Parent = Main
Menu.Active = true
Menu.AnchorPoint = Vector2.new(0.5, 1)
Menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Menu.BackgroundTransparency = 1
Menu.AutomaticCanvasSize = Enum.AutomaticSize.Y
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.5, 0, 0.95, 0)
Menu.Size = UDim2.new(0.95, 0, 0.65, 0)
Menu.CanvasSize = UDim2.new(0, 0, 0, 0)
Menu.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
Menu.ScrollBarThickness = 8

UIListLayout.Parent = Menu
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

Toggle.Name = "Toggle"
Toggle.Visible = false
Toggle.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Toggle.Size = UDim2.new(0.95, 0, 0, 50)
Toggle.AutoButtonColor = false
Toggle.ZIndex = 10

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
Check.BackgroundTransparency = 1

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

Button.Name = "Button"
Button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Button.Size = UDim2.new(0.95, 0, 0, 50)
Button.AutoButtonColor = false
Button.ZIndex = 10

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

tab.Name = "Tab"
tab.Visible = false
tab.BackgroundTransparency = 1
tab.Size = UDim2.new(0.95, 0, 0.025, 0)

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
Close.ZIndex = 11

ComboElem.Name = "ComboElem"
ComboElem.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboElem.Size = UDim2.new(0.95, 0, 0, 50)
ComboElem.AutoButtonColor = false
ComboElem.ZIndex = 10

UICorner_7.CornerRadius = UDim.new(0.25, 0)
UICorner_7.Parent = ComboElem

Name_3.Name = "Name"
Name_3.Parent = ComboElem
Name_3.AnchorPoint = Vector2.new(0, 0.5)
Name_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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
Img.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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

ComboBox.Name = "ComboBox"
ComboBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ComboBox.Size = UDim2.new(0.95, 0, 0, 50)
ComboBox.AutoButtonColor = false
ComboBox.ZIndex = 10

UICorner_8.CornerRadius = UDim.new(0.25, 0)
UICorner_8.Parent = ComboBox

Name_4.Name = "Name"
Name_4.Parent = ComboBox
Name_4.AnchorPoint = Vector2.new(0, 0.5)
Name_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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
Img_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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

-- Input Box Properties:
InputBox.Name = "InputBox"
InputBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
InputBox.Size = UDim2.new(0.95, 0, 0, 50)
InputBox.AutoButtonColor = false
InputBox.ZIndex = 10

UICorner_9.CornerRadius = UDim.new(0.25, 0)
UICorner_9.Parent = InputBox

Name_5.Name = "Name"
Name_5.Parent = InputBox
Name_5.AnchorPoint = Vector2.new(0, 0.5)
Name_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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

-- Min and Max Labels for Input Box
MinLabel.Name = "MinLabel"
MinLabel.Parent = InputBox
MinLabel.AnchorPoint = Vector2.new(1, 0)
MinLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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
MaxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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

-- SCRIPT CORE

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

local element_height = 50*Menu.AbsoluteSize.Y/210
local elements = 0

local function AddSpace(parent)
	local space = tab:Clone()
	space.Parent = parent
	space.LayoutOrder = elements
	space.Visible = true

	elements += 1
end

-- Utility: create a subtle shadow image under a GUI object
local function applyShadow(guiObject, params)
	params = params or {}
	local existing = guiObject:FindFirstChild("UIShadow")
	if existing then
		return existing
	end
	local shadow = Instance.new("ImageLabel")
	shadow.Name = "UIShadow"
	shadow.Image = params.image or "rbxassetid://1316045217"
	shadow.ScaleType = Enum.ScaleType.Slice
	shadow.SliceCenter = Rect.new(10, 10, 118, 118)
	shadow.BackgroundTransparency = 1
	shadow.ImageColor3 = params.color or Color3.fromRGB(0,0,0)
	shadow.ImageTransparency = params.transparency or 0.8
	shadow.ZIndex = math.max(0, (guiObject.ZIndex or 1) - 1)
	shadow.AnchorPoint = Vector2.new(0,0)
	-- make it slightly larger than the object
	shadow.Position = UDim2.new(0, -6, 0, -6)
	shadow.Size = UDim2.new(1, 12, 1, 12)
	shadow.Parent = guiObject
	return shadow
end

-- Hover tween helper
local function hoverTween(gui, enter)
	if not gui or not gui:IsA("GuiObject") then return end
	local info = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	if enter then
		pcall(function()
			TweenService:Create(gui, info, {Rotation = 0, BackgroundTransparency = math.clamp((gui.BackgroundTransparency or 0) - 0.05, 0, 1)}):Play()
		end)
	else
		pcall(function()
			TweenService:Create(gui, info, {Rotation = 0, BackgroundTransparency = gui:GetAttribute("defaultTransparency") or gui.BackgroundTransparency}):Play()
		end)
	end
end

-- Tab System Variables
local currentTab = nil
local tabs = {}
local tabContents = {}
local tabOrderCounter = 0

-- Helper: move tab indicator to a given button (uses absolute positions to match visual)
local function moveTabIndicatorTo(button)
	if not button or not button.Parent then return end
	-- compute local X offset relative to TabsContainer
	local containerPos = TabsContainer.AbsolutePosition.X
	local targetPos = button.AbsolutePosition.X - containerPos
	local targetWidth = button.AbsoluteSize.X
	-- set indicator size and position using offsets, tween them
	local targetSize = UDim2.fromOffset(targetWidth, TabIndicator.AbsoluteSize.Y)
	local targetPosition = UDim2.fromOffset(targetPos, TabsContainer.AbsoluteSize.Y - (TabIndicator.AbsoluteSize.Y + 6))
	local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	-- apply tweens
	TweenService:Create(TabIndicator, tweenInfo, {Size = targetSize}):Play()
	TweenService:Create(TabIndicator, tweenInfo, {Position = targetPosition}):Play()
end

function lib:CreateTab(name)
    local newTabButton = TabButtonTemplate:Clone()
    newTabButton.Name = name .. "Tab"
    newTabButton.Text = name
    newTabButton.Parent = TabsScroller
    newTabButton.Visible = true
    newTabButton.LayoutOrder = tabOrderCounter
    newTabButton.ZIndex = 11

    -- add hover effects
    newTabButton.MouseEnter:Connect(function()
        local info = TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local hoverColor = newTabButton.BackgroundColor3:Lerp(Color3.fromRGB(255,255,255), 0.03)
        pcall(function() TweenService:Create(newTabButton, info, {BackgroundColor3 = hoverColor}):Play() end)
    end)
    newTabButton.MouseLeave:Connect(function()
        local info = TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        pcall(function() TweenService:Create(newTabButton, info, {BackgroundColor3 = Color3.fromRGB(60,60,60)}):Play() end)
    end)

    -- Create a container for this tab's content
    local tabContent = Instance.new("ScrollingFrame")
    tabContent.Name = name .. "Content"
    tabContent.Parent = Menu
    tabContent.BackgroundTransparency = 1
    tabContent.BorderSizePixel = 0
    tabContent.Size = UDim2.new(1, 0, 1, 0)
    tabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
    tabContent.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
    tabContent.ScrollBarThickness = Menu.ScrollBarThickness
    tabContent.AutomaticCanvasSize = Enum.AutomaticSize.Y
    tabContent.Visible = false
    tabContent.ZIndex = 10

    local tabContentLayout = Instance.new("UIListLayout")
    tabContentLayout.Name = "UIListLayout"
    tabContentLayout.Parent = tabContent
    tabContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabContentLayout.Padding = UDim.new(0, 8)

    -- Store tab data
    local tabData = {
        button = newTabButton,
        content = tabContent,
        name = name,
        order = tabOrderCounter,
        elements = {}
    }

    tabs[name] = tabData
    tabOrderCounter += 1

    -- Set up tab button click
    newTabButton.MouseButton1Click:Connect(function()
        lib:SwitchTab(name)
    end)

    -- If this is the first tab, make it active
    if not currentTab then
        lib:SwitchTab(name)
    end

    return tabData
end

function lib:SwitchTab(tabName)
    if tabs[tabName] then
        -- Hide current tab content
        if currentTab and tabs[currentTab] then
            tabs[currentTab].content.Visible = false
            -- animate deselect color
            TweenService:Create(tabs[currentTab].button, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(60,60,60)}):Play()
        end

        -- Show new tab content
        tabs[tabName].content.Visible = true
        -- animate selected tab color
        TweenService:Create(tabs[tabName].button, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(80,80,80)}):Play()

        -- Update current tab
        currentTab = tabName

        -- Move indicator
        moveTabIndicatorTo(tabs[tabName].button)
    end
end

function lib:GetCurrentTabContent()
    if currentTab and tabs[currentTab] then
        return tabs[currentTab].content
    end
    return Menu -- Fallback to main menu if no tabs
end

-- Modified AddToggle to support tabs + animated check
function lib:AddToggle(name, funct, enabled, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}

    local newTog = Toggle:Clone()
    newTog.MouseButton1Click:Connect(function()
        enabled = not enabled
        local check = newTog:WaitForChild("Enabled"):WaitForChild("Check")
        if enabled then
            check.Visible = true
            check.BackgroundTransparency = 1
            check.Size = UDim2.new(0.2,0,0.2,0)
            TweenService:Create(check, TweenInfo.new(0.18, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0, Size = UDim2.new(0.65,0,0.65,0)}):Play()
        else
            TweenService:Create(check, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1, Size = UDim2.new(0.2,0,0.2,0)}):Play()
            task.delay(0.12, function() check.Visible = false end)
        end
        funct(enabled, unpack(args))
    end)

    newTog:WaitForChild("Enabled"):WaitForChild("Check").Visible = enabled
    if enabled then
        newTog:WaitForChild("Enabled"):WaitForChild("Check").BackgroundTransparency = 0
    end
    newTog:WaitForChild("Name").Text = name

    newTog.Size = UDim2.new(0.95, 0, 0, element_height)
    newTog.Name = name
    newTog.Parent = tabContent
    newTog.Visible = true

    -- apply shadow
    applyShadow(newTog, {transparency = 0.85})

    -- hover effect
    newTog.MouseEnter:Connect(function()
        hoverTween(newTog, true)
    end)
    newTog.MouseLeave:Connect(function()
        hoverTween(newTog, false)
    end)

    -- Store element in current tab if we have one
    if currentTab then
        table.insert(tabs[currentTab].elements, newTog)
    end

    return newTog
end

-- Modified AddButton to support tabs + animated press/hover
function lib:AddButton(name, funct, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}

    local newBut = Button:Clone()
    newBut.MouseButton1Click:Connect(function()
        local orig = newBut.Size
        local info = TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        TweenService:Create(newBut, info, {BackgroundTransparency = math.clamp((newBut.BackgroundTransparency or 0) + 0.05, 0, 1)}):Play()
        task.wait(0.06)
        TweenService:Create(newBut, info, {BackgroundTransparency = newBut:GetAttribute("defaultTransparency") or newBut.BackgroundTransparency}):Play()
        funct(unpack(args))
    end)

    newBut:WaitForChild("Name").Text = name
    newBut.Size = UDim2.new(0.95, 0, 0, element_height)
    newBut.Name = name
    newBut.Parent = tabContent
    newBut.Visible = true

    -- apply shadow
    applyShadow(newBut, {transparency = 0.85})

    -- hover effect
    newBut.MouseEnter:Connect(function()
        hoverTween(newBut, true)
    end)
    newBut.MouseLeave:Connect(function()
        hoverTween(newBut, false)
    end)

    -- Store element in current tab if we have one
    if currentTab then
        table.insert(tabs[currentTab].elements, newBut)
    end

    return newBut
end

-- Modified AddInputBox to support tabs + focus glow
function lib:AddInputBox(name, funct, placeholder, default, options, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}

    local newInput = InputBox:Clone()

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
    end

    local textBox = newInput.TextBox

    -- Function to validate input based on min/max constraints
    local function validateInput(inputText)
        if isNumberOnly then
            -- Remove non-numeric characters
            local numericText = inputText:gsub("[^%-%d%.]", "")

            -- Ensure only one decimal point
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
                    -- Only allow minus at the beginning
                    if i == 1 then
                        cleanedText = cleanedText .. char
                    end
                else
                    cleanedText = cleanedText .. char
                end
            end

            inputText = cleanedText

            -- Apply min/max constraints if they exist
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

    -- Function to handle text submission
    local function submitText()
        local text = textBox.Text
        local validatedText = validateInput(text)

        if text ~= validatedText then
            textBox.Text = validatedText
            text = validatedText
        end

        funct(text, unpack(args))
    end

    -- Function to handle real-time validation for number input
    local function handleTextChanged()
        if isNumberOnly then
            local cursorPos = textBox.CursorPosition
            local text = textBox.Text
            local validatedText = validateInput(text)

            if text ~= validatedText then
                textBox.Text = validatedText
                -- Try to restore cursor position
                textBox.CursorPosition = math.min(cursorPos, #validatedText + 1)
            end
        end
    end

    -- Connect text changed event for real-time validation
    textBox:GetPropertyChangedSignal("Text"):Connect(handleTextChanged)

    -- Submit on Enter key
    textBox.FocusLost:Connect(function(enterPressed)
        if enterPressed then
            submitText()
        else
            -- Still validate on focus lost
            handleTextChanged()
        end
        -- remove focus glow
        TweenService:Create(newInput, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
    end)

    -- Focus glow on focus
    textBox.Focused:Connect(function()
        TweenService:Create(newInput, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.05}):Play()
    end)

    -- Submit on clicking outside the text box
    newInput.MouseButton1Click:Connect(function()
        if not textBox:IsFocused() then
            textBox:CaptureFocus()
        end
    end)

    newInput.Size = UDim2.new(0.95, 0, 0, element_height)
    newInput.Name = name
    newInput.Parent = tabContent
    newInput.Visible = true

    -- apply shadow
    applyShadow(newInput, {transparency = 0.85})

    -- Store element in current tab if we have one
    if currentTab then
        table.insert(tabs[currentTab].elements, newInput)
    end

    -- Return the input box and text box for external control
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

    -- Apply initial validation
    handleTextChanged()

    return inputObj
end

-- Modified AddComboBox to support tabs + expand animations
function lib:AddComboBox(text, options, funct, ...)
    local tabContent = lib:GetCurrentTabContent()
    local enabled = false
    local elems = {}
    local args = {...}

    local newCombo = ComboBox:Clone()

    local function setBoxState()
        newCombo:WaitForChild("Img").Rotation = enabled and 0 or 180
        for _, elem in ipairs(elems) do
            if enabled then
                elem.Visible = true
                elem.BackgroundTransparency = 1
                TweenService:Create(elem, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
            else
                TweenService:Create(elem, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
                task.delay(0.12, function() if elem then elem.Visible = false end end)
            end
        end
    end

    newCombo.MouseButton1Click:Connect(function()
        enabled = not enabled
        setBoxState()
    end)

    newCombo:WaitForChild("Name").Text = text .. ": " .. (#options > 0 and options[1] or "")
    newCombo.Size = UDim2.new(0.95, 0, 0, element_height)
    newCombo.Name = #options > 0 and options[1] or ""
    newCombo.Parent = tabContent
    newCombo.Visible = true

    -- apply shadow
    applyShadow(newCombo, {transparency = 0.85})

    -- Store element in current tab if we have one
    if currentTab then
        table.insert(tabs[currentTab].elements, newCombo)
    end

    for _, name in ipairs(options) do
        local newElem = ComboElem:Clone()
        table.insert(elems, newElem)

        newElem.MouseButton1Click:Connect(function()
            newCombo:WaitForChild("Name").Text = text .. ": " .. name
            enabled = false
            setBoxState()

            funct(name, unpack(args))
        end)

        newElem:WaitForChild("Name").Text = name
        newElem.Size = UDim2.new(0.95, 0, 0, element_height)
        newElem.Name = name
        newElem.Parent = tabContent
        newElem.Visible = false
        newElem.BackgroundTransparency = 1

        -- apply shadow for each option
        applyShadow(newElem, {transparency = 0.9})

        -- Store element in current tab if we have one
        if currentTab then
            table.insert(tabs[currentTab].elements, newElem)
        end
    end

    return newCombo
end

function lib:SetTitle(txt)
    Title.Text = txt
end

function lib:SetIcon(img)
    Logo.Image = img
end

-- Color tween helper to animate theme transitions
local function tweenColor(instance, prop, color, time)
    local ok, _ = pcall(function()
        local tweenInfo = TweenInfo.new(time or 0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        TweenService:Create(instance, tweenInfo, {[prop] = color}):Play()
    end)
    return ok
end

function lib:SetBackgroundColor(r, g ,b)
    local c = Color3.fromRGB(r,g,b)
    tweenColor(Main, "BackgroundColor3", c)
    tweenColor(Intro, "BackgroundColor3", c)
    -- tint shadow slightly
    if Main:FindFirstChild("MainShadow") then
        TweenService:Create(Main.MainShadow, TweenInfo.new(0.28), {ImageColor3 = Color3.new(0,0,0)}):Play()
    end
end

function lib:SetTitleColor(r, g, b)
    local c = Color3.fromRGB(r,g,b)
    tweenColor(Title, "TextColor3", c)
end

function lib:SetCloseBtnColor(r, g, b)
    local c = Color3.fromRGB(r,g,b)
    tweenColor(Close, "TextColor3", c)
    tweenColor(Img_2, "TextColor3", c)
    tweenColor(Check, "BackgroundColor3", c)
end

function lib:SetButtonsColor(r, g ,b)
    local c = Color3.fromRGB(r,g,b)
    local time = 0.28
    for _, v in pairs({Toggle, Button, ComboElem, ComboBox, InputBox}) do
        if v and v:IsA("GuiObject") then
            tweenColor(v, "BackgroundColor3", c, time)
            -- store default transparency for hover resets
            v:SetAttribute("defaultTransparency", v.BackgroundTransparency)
        end
    end
end

function lib:SetInputBoxColor(r, g, b)
    local c = Color3.fromRGB(r,g,b)
    tweenColor(InputBox, "BackgroundColor3", c)
    local dark = Color3.fromRGB(math.max(0, r-15), math.max(0, g-15), math.max(0, b-15))
    tweenColor(TextBox, "BackgroundColor3", dark)
end

function lib:SetTabButtonColor(r, g, b)
    local c = Color3.fromRGB(r,g,b)
    for _, tabData in pairs(tabs) do
        if tabData.button then
            tweenColor(tabData.button, "BackgroundColor3", c)
        end
    end
    -- also set template color
    tweenColor(TabButtonTemplate, "BackgroundColor3", c)
end

function lib:SetActiveTabColor(r, g, b)
    -- Update current tab if exists
    if currentTab and tabs[currentTab] then
        tweenColor(tabs[currentTab].button, "BackgroundColor3", Color3.fromRGB(r,g,b))
    end
end

-- Theme palettes and animated application
local Themes = {
    Default = {
        background = Color3.fromRGB(40,40,40),
        buttons = Color3.fromRGB(55,55,55),
        activeTab = Color3.fromRGB(80,80,80),
        tab = Color3.fromRGB(60,60,60),
        title = Color3.fromRGB(255,255,255),
        close = Color3.fromRGB(255,0,0),
        input = Color3.fromRGB(55,55,55),
        indicator = Color3.fromRGB(255,255,255)
    },
    TomorrowNightBlue = {
        background = Color3.fromRGB(5,16,58),
        buttons = Color3.fromRGB(74,208,238),
        activeTab = Color3.fromRGB(60,150,200),
        tab = Color3.fromRGB(50,150,200),
        title = Color3.fromRGB(220,240,255),
        close = Color3.fromRGB(74,208,238),
        input = Color3.fromRGB(74,208,238),
        indicator = Color3.fromRGB(74,208,238)
    },
    HighContrast = {
        background = Color3.fromRGB(0,0,0),
        buttons = Color3.fromRGB(0,0,0),
        activeTab = Color3.fromRGB(60,60,60),
        tab = Color3.fromRGB(30,30,30),
        title = Color3.fromRGB(255,255,0),
        close = Color3.fromRGB(255,255,0),
        input = Color3.fromRGB(20,20,20),
        indicator = Color3.fromRGB(255,255,0)
    },
    Aqua = {
        background = Color3.fromRGB(44,62,82),
        buttons = Color3.fromRGB(52,74,95),
        activeTab = Color3.fromRGB(60,90,110),
        tab = Color3.fromRGB(40,55,70),
        title = Color3.fromRGB(220,235,245),
        close = Color3.fromRGB(26,189,158),
        input = Color3.fromRGB(52,74,95),
        indicator = Color3.fromRGB(26,189,158)
    },
    Ocean = {
        background = Color3.fromRGB(26,32,58),
        buttons = Color3.fromRGB(38,45,71),
        activeTab = Color3.fromRGB(60,70,100),
        tab = Color3.fromRGB(30,36,60),
        title = Color3.fromRGB(220,230,255),
        close = Color3.fromRGB(86,76,251),
        input = Color3.fromRGB(38,45,71),
        indicator = Color3.fromRGB(86,76,251)
    }
}

function lib:SetTheme(theme)
    local palette = Themes[theme]
    if not palette then
        error("Theme not found: "..tostring(theme))
    end

    -- Animate multiple properties
    local ttime = 0.28
    tweenColor(Main, "BackgroundColor3", palette.background, ttime)
    tweenColor(Intro, "BackgroundColor3", palette.background, ttime)
    tweenColor(Title, "TextColor3", palette.title, ttime)
    tweenColor(TabIndicator, "BackgroundColor3", palette.indicator, ttime)

    -- Buttons and inputs
    for _, gui in pairs({Toggle, Button, ComboElem, ComboBox, InputBox}) do
        if gui and gui:IsA("GuiObject") then
            tweenColor(gui, "BackgroundColor3", palette.buttons, ttime)
        end
    end

    -- Tab buttons base color
    lib:SetTabButtonColor(palette.tab.R*255, palette.tab.G*255, palette.tab.B*255)
    -- Active tab highlight
    lib:SetActiveTabColor(palette.activeTab.R*255, palette.activeTab.G*255, palette.activeTab.B*255)
    -- Close button color
    lib:SetCloseBtnColor(palette.close.R*255, palette.close.G*255, palette.close.B*255)
    -- Input box color
    lib:SetInputBoxColor(palette.input.R*255, palette.input.G*255, palette.input.B*255)

    -- Tint shadows subtly for theme cohesion
    if Main:FindFirstChild("MainShadow") then
        TweenService:Create(Main.MainShadow, TweenInfo.new(ttime), {ImageTransparency = 0.7}):Play()
    end
end

-- Tab System Functions
function lib:RemoveTab(tabName)
    if tabs[tabName] then
        -- Remove tab button
        tabs[tabName].button:Destroy()

        -- Remove tab content
        tabs[tabName].content:Destroy()

        -- If this was the current tab, switch to another tab if available
        if currentTab == tabName then
            local newTab = nil
            for name, _ in pairs(tabs) do
                if name ~= tabName then
                    newTab = name
                    break
                end
            end

            if newTab then
                lib:SwitchTab(newTab)
            else
                currentTab = nil
            end
        end

        -- Remove from tabs table
        tabs[tabName] = nil
    end
end

function lib:GetTab(tabName)
    return tabs[tabName]
end

function lib:GetAllTabs()
    return tabs
end

function lib:GetCurrentTab()
    return currentTab
end

-- Close and logo show/hide animations (kept behavior but softened)
Close.MouseButton1Click:Connect(function()
	Logo.Active = true
	TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()

	task.wait(0.25)
	Logo:TweenSizeAndPosition(
		UDim2.fromScale(0.75, 0.75),
		UDim2.fromScale(0.5, 0.5),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		0.28, true, nil
	)

	task.wait(0.26)
	Main:TweenSize(
		UDim2.fromScale(0.1, 0.175),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		0.28, true, nil
	)

	task.wait(0.28)
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

	task.wait(0.28)
	Main:TweenSize(
		UDim2.fromScale(0.3, 0.3),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		0.28, true, nil
	)

	task.wait(0.28)
	Logo:TweenSizeAndPosition(
		UDim2.fromScale(0.175, 0.175),
		UDim2.fromScale(0.075, 0.15),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quart,
		0.28, true, nil
	)

	for _, obj in pairs(Main:GetChildren()) do
		if obj:IsA("GuiObject") and obj ~= Intro then
			obj.Visible = true
		end
	end

	task.wait(0.3)
	TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
end)

-- INIT animations
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

task.wait(1.2)
TweenService:Create(Intro, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()

-- ensure tab indicator updates when layout changes (e.g., resize or canvas changes)
local function updateIndicatorOnRender()
    if currentTab and tabs[currentTab] and tabs[currentTab].button then
        moveTabIndicatorTo(tabs[currentTab].button)
    end
end

RunService.RenderStepped:Connect(function()
    -- keep indicator following the tab if scrolled
    updateIndicatorOnRender()
end)

return lib
