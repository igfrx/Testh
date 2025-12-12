local lib = {}

local Script_Title = "Loading.."

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

-- === ENHANCED VISUAL PROPERTIES ===

Arceus.Name = "Arceus"
Arceus.Enabled = true
Arceus.ResetOnSpawn = true
Arceus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Arceus.DisplayOrder = 999999999

-- Modern glass-morphism background with gradient
Main.Name = "Main"
Main.Parent = Arceus
Main.Active = true
Main.Draggable = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Main.BackgroundTransparency = 0.2
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, -0.2, 0)
Main.Size = UDim2.new(0.3, 0, 0.3, 0)

-- Enhanced corner radius for modern look
UICorner.CornerRadius = UDim.new(0.08, 0)
UICorner.Parent = Main

-- Add glass effect
local GlassEffect = Instance.new("Frame")
GlassEffect.Name = "GlassEffect"
GlassEffect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassEffect.BackgroundTransparency = 0.95
GlassEffect.BorderSizePixel = 0
GlassEffect.Size = UDim2.new(1, 0, 1, 0)
GlassEffect.ZIndex = -1
GlassEffect.Parent = Main

-- Add subtle gradient background
local BackgroundGradient = Instance.new("UIGradient")
BackgroundGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 15, 25)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 40))
}
BackgroundGradient.Rotation = 45
BackgroundGradient.Parent = Main

-- Enhanced shadow with blur effect
local MainShadow = Instance.new("ImageLabel")
MainShadow.Name = "MainShadow"
MainShadow.Image = "rbxassetid://1316045217"
MainShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
MainShadow.ImageTransparency = 0.9
MainShadow.ScaleType = Enum.ScaleType.Slice
MainShadow.SliceCenter = Rect.new(10, 10, 118, 118)
MainShadow.BackgroundTransparency = 1
MainShadow.Position = UDim2.new(0, -20, 0, -20)
MainShadow.Size = UDim2.new(1, 40, 1, 40)
MainShadow.ZIndex = -1
MainShadow.Parent = Main

-- === TABS SYSTEM ENHANCEMENT ===
TabsContainer.Name = "TabsContainer"
TabsContainer.Parent = Main
TabsContainer.BackgroundTransparency = 1
TabsContainer.BorderSizePixel = 0
TabsContainer.Position = UDim2.new(0, 0, -0.12, 0)
TabsContainer.Size = UDim2.new(1, 0, 0.12, 0)
TabsContainer.ZIndex = 10

TabsScroller.Name = "TabsScroller"
TabsScroller.Parent = TabsContainer
TabsScroller.Active = true
TabsScroller.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabsScroller.BackgroundTransparency = 1
TabsScroller.BorderSizePixel = 0
TabsContainer.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
TabsContainer.BackgroundTransparency = 0.2
TabsContainer.Size = UDim2.new(1, 0, 1, 0)
TabsScroller.CanvasSize = UDim2.new(0, 0, 0, 0)
TabsScroller.ScrollBarThickness = 3
TabsScroller.ScrollBarImageColor3 = Color3.fromRGB(100, 150, 255)
TabsScroller.ScrollingDirection = Enum.ScrollingDirection.X
TabsScroller.AutomaticCanvasSize = Enum.AutomaticSize.X

TabsListLayout.Name = "TabsListLayout"
TabsListLayout.Parent = TabsScroller
TabsListLayout.FillDirection = Enum.FillDirection.Horizontal
TabsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabsListLayout.Padding = UDim.new(0.02, 0)

-- Modern tab button with gradient and hover effects
TabButtonTemplate.Name = "TabButtonTemplate"
TabButtonTemplate.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
TabButtonTemplate.BorderSizePixel = 0
TabButtonTemplate.Size = UDim2.new(0, 90, 0.7, 0)
TabButtonTemplate.BackgroundTransparency = 0.3
TabButtonTemplate.Font = Enum.Font.GothamSemibold
TabButtonTemplate.Text = "Tab"
TabButtonTemplate.TextColor3 = Color3.fromRGB(220, 220, 255)
TabButtonTemplate.TextScaled = true
TabButtonTemplate.TextSize = 14
TabButtonTemplate.TextWrapped = true
TabButtonTemplate.AutoButtonColor = false

-- Tab gradient effect
local TabGradient = Instance.new("UIGradient")
TabGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(60, 60, 90)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(40, 40, 70))
}
TabGradient.Parent = TabButtonTemplate

TabButtonUICorner.CornerRadius = UDim.new(0.5, 0)
TabButtonUICorner.Parent = TabButtonTemplate

-- === INTRO ENHANCEMENT ===
Intro.Name = "Intro"
Intro.Parent = Main
Intro.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Intro.BackgroundTransparency = 0.2
Intro.ClipsDescendants = true
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 2

UICorner_2.CornerRadius = UDim.new(0.08, 0)
UICorner_2.Parent = Intro

-- Logo with glow effect
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

-- Logo glow effect
local LogoGlow = Instance.new("ImageLabel")
LogoGlow.Name = "LogoGlow"
LogoGlow.Image = "rbxassetid://5028857084"
LogoGlow.ImageColor3 = Color3.fromRGB(100, 150, 255)
LogoGlow.ImageTransparency = 0.8
LogoGlow.BackgroundTransparency = 1
LogoGlow.Size = UDim2.new(1.5, 0, 1.5, 0)
LogoGlow.Position = UDim2.new(-0.25, 0, -0.25, 0)
LogoGlow.ZIndex = 1
LogoGlow.Parent = Logo

UIAspectRatioConstraint.Parent = Logo

-- === TITLE ENHANCEMENT ===
Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(1, 0)
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.975, 0, 0.075, 0)
Title.Size = UDim2.new(0.85, 0, 0.155, 0)
Title.Font = Enum.Font.GothamBold
Title.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold)
Title.RichText = true
Title.Text = Script_Title
Title.TextColor3 = Color3.fromRGB(220, 220, 255)
Title.TextScaled = true
Title.TextSize = 16
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Center

-- Title gradient effect
local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(180, 180, 255)),
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(150, 200, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 255))
}
TitleGradient.Parent = Title

-- === MENU ENHANCEMENT ===
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
Menu.ScrollBarImageColor3 = Color3.fromRGB(100, 150, 255)
Menu.ScrollBarThickness = Menu.AbsoluteSize.X/30

UIListLayout.Parent = Menu
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8) -- Add spacing between elements

-- === TOGGLE ENHANCEMENT ===
Toggle.Name = "Toggle"
Toggle.Visible = false
Toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
Toggle.BackgroundTransparency = 0.1
Toggle.Size = UDim2.new(0.95, 0, 0, 50)
Toggle.AutoButtonColor = false

UICorner_3.CornerRadius = UDim.new(0.2, 0)
UICorner_3.Parent = Toggle

Enabled.Name = "Enabled"
Enabled.Parent = Toggle
Enabled.AnchorPoint = Vector2.new(1, 0.5)
Enabled.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
Enabled.Position = UDim2.new(0.975, 0, 0.5, 0)
Enabled.Size = UDim2.new(0.75, 0, 0.75, 0)

UIAspectRatioConstraint_2.Parent = Enabled

UICorner_4.CornerRadius = UDim.new(0.3, 0)
UICorner_4.Parent = Enabled

Check.Name = "Check"
Check.Parent = Enabled
Check.AnchorPoint = Vector2.new(0.5, 0.5)
Check.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
Check.Position = UDim2.new(0.5, 0, 0.5, 0)
Check.Size = UDim2.new(0.65, 0, 0.65, 0)

-- Check glow effect
local CheckGlow = Instance.new("Frame")
CheckGlow.Name = "CheckGlow"
CheckGlow.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
CheckGlow.BackgroundTransparency = 0.7
CheckGlow.Size = UDim2.new(1.5, 0, 1.5, 0)
CheckGlow.Position = UDim2.new(-0.25, 0, -0.25, 0)
CheckGlow.ZIndex = -1
CheckGlow.Parent = Check

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
Name.Font = Enum.Font.GothamSemibold
Name.Text = "Script"
Name.TextColor3 = Color3.fromRGB(240, 240, 255)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 240, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))
}
UIGradient.Rotation = 90
UIGradient.Parent = Toggle

-- === BUTTON ENHANCEMENT ===
Button.Name = "Button"
Button.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
Button.BackgroundTransparency = 0.1
Button.Size = UDim2.new(0.95, 0, 0, 50)
Button.AutoButtonColor = false

-- Button hover effect (will be scripted)
local ButtonHover = Instance.new("Frame")
ButtonHover.Name = "ButtonHover"
ButtonHover.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonHover.BackgroundTransparency = 0.9
ButtonHover.Size = UDim2.new(1, 0, 1, 0)
ButtonHover.Visible = false
ButtonHover.Parent = Button

UICorner_6.CornerRadius = UDim.new(0.2, 0)
UICorner_6.Parent = Button

Name_2.Name = "Name"
Name_2.Parent = Button
Name_2.AnchorPoint = Vector2.new(0, 0.5)
Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_2.BackgroundTransparency = 1
Name_2.BorderSizePixel = 0
Name_2.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_2.Size = UDim2.new(0.95, 0, 0.82, 0)
Name_2.Font = Enum.Font.GothamSemibold
Name_2.Text = "Enabled"
Name_2.TextColor3 = Color3.fromRGB(240, 240, 255)
Name_2.TextScaled = true
Name_2.TextSize = 14
Name_2.TextWrapped = true
Name_2.TextXAlignment = Enum.TextXAlignment.Left
Name_2.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_2.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 240, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))
}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = Button

tab.Name = "Tab"
tab.Visible = false
tab.BackgroundTransparency = 1
tab.Size = UDim2.new(0.95, 0, 0.025, 0)

-- === CLOSE BUTTON ENHANCEMENT ===
Close.Name = "Close"
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.8, 0, 0.1, 0)
Close.Size = UDim2.new(0.15, 0, 0.125, 0)
Close.Font = Enum.Font.GothamBold
Close.Text = "×"
Close.TextColor3 = Color3.fromRGB(255, 100, 100)
Close.TextScaled = true
Close.TextSize = 18
Close.TextWrapped = true
Close.TextXAlignment = Enum.TextXAlignment.Right
Close.Parent = Main

-- Close button hover effect
local CloseHover = Instance.new("Frame")
CloseHover.Name = "CloseHover"
CloseHover.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
CloseHover.BackgroundTransparency = 0.9
CloseHover.Size = UDim2.new(1, 0, 1, 0)
CloseHover.Visible = false
CloseHover.Parent = Close

-- === COMBOBOX ENHANCEMENTS ===
ComboElem.Name = "ComboElem"
ComboElem.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
ComboElem.BackgroundTransparency = 0.1
ComboElem.Size = UDim2.new(0.95, 0, 0, 50)
ComboElem.AutoButtonColor = false

UICorner_7.CornerRadius = UDim.new(0.2, 0)
UICorner_7.Parent = ComboElem

Name_3.Name = "Name"
Name_3.Parent = ComboElem
Name_3.AnchorPoint = Vector2.new(0, 0.5)
Name_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_3.BackgroundTransparency = 1
Name_3.BorderSizePixel = 0
Name_3.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_3.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_3.Font = Enum.Font.GothamSemibold
Name_3.Text = "Enabled"
Name_3.TextColor3 = Color3.fromRGB(240, 240, 255)
Name_3.TextScaled = true
Name_3.TextSize = 14
Name_3.TextWrapped = true
Name_3.TextXAlignment = Enum.TextXAlignment.Left
Name_3.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_3.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 240, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))
}
UIGradient_3.Rotation = -90
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
Img.Font = Enum.Font.GothamBold
Img.Text = "›"
Img.TextColor3 = Color3.fromRGB(150, 200, 255)
Img.TextScaled = true
Img.TextSize = 16
Img.TextWrapped = true

UIAspectRatioConstraint_4.Parent = Img

ComboBox.Name = "ComboBox"
ComboBox.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
ComboBox.BackgroundTransparency = 0.1
ComboBox.Size = UDim2.new(0.95, 0, 0, 50)
ComboBox.AutoButtonColor = false

UICorner_8.CornerRadius = UDim.new(0.2, 0)
UICorner_8.Parent = ComboBox

Name_4.Name = "Name"
Name_4.Parent = ComboBox
Name_4.AnchorPoint = Vector2.new(0, 0.5)
Name_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_4.BackgroundTransparency = 1.000
Name_4.BorderSizePixel = 0
Name_4.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_4.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_4.Font = Enum.Font.GothamSemibold
Name_4.Text = "Enabled"
Name_4.TextColor3 = Color3.fromRGB(240, 240, 255)
Name_4.TextScaled = true
Name_4.TextSize = 14
Name_4.TextWrapped = true
Name_4.TextXAlignment = Enum.TextXAlignment.Left
Name_4.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_4.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 240, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))
}
UIGradient_4.Rotation = 90
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
Img_2.Font = Enum.Font.GothamBold
Img_2.Text = "›"
Img_2.TextColor3 = Color3.fromRGB(150, 200, 255)
Img_2.TextScaled = true
Img_2.TextSize = 16
Img_2.TextWrapped = true

UIAspectRatioConstraint_5.Parent = Img_2

-- === INPUT BOX ENHANCEMENT ===
InputBox.Name = "InputBox"
InputBox.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
InputBox.BackgroundTransparency = 0.1
InputBox.Size = UDim2.new(0.95, 0, 0, 50)
InputBox.AutoButtonColor = false

UICorner_9.CornerRadius = UDim.new(0.2, 0)
UICorner_9.Parent = InputBox

Name_5.Name = "Name"
Name_5.Parent = InputBox
Name_5.AnchorPoint = Vector2.new(0, 0.5)
Name_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_5.BackgroundTransparency = 1
Name_5.BorderSizePixel = 0
Name_5.Position = UDim2.new(0.05, 0, 0.5, 0)
Name_5.Size = UDim2.new(0.75, 0, 0.8, 0)
Name_5.Font = Enum.Font.GothamSemibold
Name_5.Text = "Input Box"
Name_5.TextColor3 = Color3.fromRGB(240, 240, 255)
Name_5.TextScaled = true
Name_5.TextSize = 14
Name_5.TextWrapped = true
Name_5.TextXAlignment = Enum.TextXAlignment.Left
Name_5.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_5.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 240, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))
}
UIGradient_5.Rotation = 90
UIGradient_5.Parent = InputBox

TextBox.Name = "TextBox"
TextBox.Parent = InputBox
TextBox.AnchorPoint = Vector2.new(1, 0.5)
TextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
TextBox.BackgroundTransparency = 0.1
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.95, 0, 0.5, 0)
TextBox.Size = UDim2.new(0.35, 0, 0.6, 0)
TextBox.Font = Enum.Font.GothamSemibold
TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 180)
TextBox.PlaceholderText = "Enter text..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(240, 240, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0.15, 0)
UICorner_10.Parent = TextBox

-- TextBox focus effect
local TextBoxFocus = Instance.new("Frame")
TextBoxFocus.Name = "TextBoxFocus"
TextBoxFocus.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
TextBoxFocus.BackgroundTransparency = 0.8
TextBoxFocus.Size = UDim2.new(1, 0, 1, 0)
TextBoxFocus.Visible = false
TextBoxFocus.Parent = TextBox

-- Min and Max Labels for Input Box
MinLabel.Name = "MinLabel"
MinLabel.Parent = InputBox
MinLabel.AnchorPoint = Vector2.new(1, 0)
MinLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MinLabel.BackgroundTransparency = 1
MinLabel.BorderSizePixel = 0
MinLabel.Position = UDim2.new(0.55, 0, 0.1, 0)
MinLabel.Size = UDim2.new(0.15, 0, 0.3, 0)
MinLabel.Font = Enum.Font.Gotham
MinLabel.Text = "Min: 0"
MinLabel.TextColor3 = Color3.fromRGB(150, 180, 220)
MinLabel.TextScaled = true
MinLabel.TextSize = 10
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
MaxLabel.Font = Enum.Font.Gotham
MaxLabel.Text = "Max: 100"
MaxLabel.TextColor3 = Color3.fromRGB(150, 180, 220)
MaxLabel.TextScaled = true
MaxLabel.TextSize = 10
MaxLabel.TextWrapped = true
MaxLabel.TextXAlignment = Enum.TextXAlignment.Right
MaxLabel.Visible = false

-- === HOVER EFFECTS SCRIPT ===
local function setupHoverEffects()
    -- Function to create hover effects for any button-like element
    local function addHoverEffect(element, hoverFrame)
        element.MouseEnter:Connect(function()
            hoverFrame.Visible = true
            if element:FindFirstChild("UIGradient") then
                element.UIGradient.Rotation = 0
            end
        end)
        
        element.MouseLeave:Connect(function()
            hoverFrame.Visible = false
            if element:FindFirstChild("UIGradient") then
                element.UIGradient.Rotation = 90
            end
        end)
    end
    
    -- Setup hover effects for various elements
    addHoverEffect(Button, Button.ButtonHover)
    addHoverEffect(Close, Close.CloseHover)
    
    -- TextBox focus effect
    TextBox.Focused:Connect(function()
        TextBoxFocus.Visible = true
    end)
    
    TextBox.FocusLost:Connect(function()
        TextBoxFocus.Visible = false
    end)
end

-- SCRIPT (with enhanced animations)
local TweenService = game:GetService("TweenService")

-- Enhanced close animation with glow effect
Close.MouseButton1Click:Connect(function()
    Logo.Active = true
    
    -- Create glow effect on close
    local CloseGlow = Instance.new("Frame")
    CloseGlow.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
    CloseGlow.BackgroundTransparency = 0.7
    CloseGlow.Size = UDim2.new(3, 0, 3, 0)
    CloseGlow.Position = UDim2.new(-1, 0, -1, 0)
    CloseGlow.ZIndex = 5
    CloseGlow.Parent = Close
    CloseGlow:Destroy() -- Will create a flash effect
    
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()

    task.wait(0.3)
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.75, 0.75),
        UDim2.fromScale(0.5, 0.5),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.3, true, nil
    )

    task.wait(0.3)
    Main:TweenSize(
        UDim2.fromScale(0.1, 0.175),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.3, true, nil
    )

    task.wait(0.3)
    for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA("GuiObject") and obj ~= Intro then
            obj.Visible = false
        end
    end

    TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.8}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
    TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.8}):Play()
end)

-- Enhanced open animation
Logo.MouseButton1Click:Connect(function()
    Logo.Active = false
    
    -- Create opening glow effect
    local OpenGlow = Instance.new("Frame")
    OpenGlow.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
    OpenGlow.BackgroundTransparency = 0.7
    OpenGlow.Size = UDim2.new(3, 0, 3, 0)
    OpenGlow.Position = UDim2.new(-1, 0, -1, 0)
    OpenGlow.ZIndex = 5
    OpenGlow.Parent = Logo
    TweenService:Create(OpenGlow, TweenInfo.new(0.5), {BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0)}):Play()
    task.wait(0.5)
    OpenGlow:Destroy()
    
    TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
    TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()

    task.wait(0.3)
    Main:TweenSize(
        UDim2.fromScale(0.3, 0.3),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.3, true, nil
    )

    task.wait(0.3)
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.175, 0.175),
        UDim2.fromScale(0.075, 0.15),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.3, true, nil
    )

    for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA("GuiObject") and obj ~= Intro then
            obj.Visible = true
        end
    end

    task.wait(0.3)
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
end)

-- ... (rest of the script remains the same with the tab system and functions)

-- Setup hover effects
setupHoverEffects()

-- Return the enhanced library
return lib
