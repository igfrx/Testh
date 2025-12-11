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

-- New UI Enhancement Instances:
local MainShadow = Instance.new("ImageLabel")
local DropShadow = Instance.new("ImageLabel")
local TabHighlight = Instance.new("Frame")
local UICorner_TabHighlight = Instance.new("UICorner")
local GlowEffect = Instance.new("Frame")
local UIGradient_Glow = Instance.new("UIGradient")

-- Properties:

Arceus.Name = "Arceus"
Arceus.Enabled = true
Arceus.ResetOnSpawn = true
Arceus.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Arceus.DisplayOrder = 999999999

-- Enhanced Main Frame with Glow Effect
Main.Name = "Main"
Main.Parent = Arceus
Main.Active = true
Main.Draggable = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, -0.2, 0)
Main.Size = UDim2.new(0.3, 0, 0.3, 0)
Main.ZIndex = 2

-- Add Glow Effect
GlowEffect.Name = "GlowEffect"
GlowEffect.Parent = Main
GlowEffect.BackgroundColor3 = Color3.fromRGB(74, 208, 238)
GlowEffect.BorderSizePixel = 0
GlowEffect.Size = UDim2.new(1, 20, 1, 20)
GlowEffect.Position = UDim2.new(-0.03, 0, -0.03, 0)
GlowEffect.BackgroundTransparency = 0.7
GlowEffect.ZIndex = 1

UIGradient_Glow.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(74, 208, 238)),
    ColorSequenceKeypoint.new(0.50, Color3.fromRGB(52, 152, 219)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(41, 128, 185))
}
UIGradient_Glow.Rotation = 45
UIGradient_Glow.Parent = GlowEffect

-- Enhanced Shadow Effect
MainShadow.Name = "MainShadow"
MainShadow.Parent = Main
MainShadow.Image = "rbxassetid://1316045217"
MainShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
MainShadow.ImageTransparency = 0.5
MainShadow.ScaleType = Enum.ScaleType.Slice
MainShadow.SliceCenter = Rect.new(10, 10, 118, 118)
MainShadow.BackgroundTransparency = 1
MainShadow.Position = UDim2.new(0, -20, 0, -20)
MainShadow.Size = UDim2.new(1, 40, 1, 40)
MainShadow.ZIndex = -1

-- Enhanced UICorner
UICorner.CornerRadius = UDim.new(0.08, 0)
UICorner.Parent = Main

-- Enhanced Tabs System with Animations
TabsContainer.Name = "TabsContainer"
TabsContainer.Parent = Main
TabsContainer.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TabsContainer.BorderSizePixel = 0
TabsContainer.Position = UDim2.new(0, 0, -0.12, 0)
TabsContainer.Size = UDim2.new(1, 0, 0.12, 0)
TabsContainer.ZIndex = 10

-- Tab Highlight Animation Frame
TabHighlight.Name = "TabHighlight"
TabHighlight.Parent = TabsContainer
TabHighlight.BackgroundColor3 = Color3.fromRGB(74, 208, 238)
TabHighlight.BorderSizePixel = 0
TabHighlight.Size = UDim2.new(0, 80, 0.7, 0)
TabHighlight.Position = UDim2.new(0, 10, 0.15, 0)
TabHighlight.ZIndex = 9
TabHighlight.Visible = false

UICorner_TabHighlight.CornerRadius = UDim.new(0.15, 0)
UICorner_TabHighlight.Parent = TabHighlight

TabsScroller.Name = "TabsScroller"
TabsScroller.Parent = TabsContainer
TabsScroller.Active = true
TabsScroller.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TabsScroller.BackgroundTransparency = 1
TabsScroller.BorderSizePixel = 0
TabsScroller.Size = UDim2.new(1, 0, 1, 0)
TabsScroller.CanvasSize = UDim2.new(0, 0, 0, 0)
TabsScroller.ScrollBarThickness = 4
TabsScroller.ScrollBarImageColor3 = Color3.fromRGB(74, 208, 238)
TabsScroller.ScrollingDirection = Enum.ScrollingDirection.X
TabsScroller.AutomaticCanvasSize = Enum.AutomaticSize.X
TabsScroller.ScrollBarImageTransparency = 0.5

TabsListLayout.Name = "TabsListLayout"
TabsListLayout.Parent = TabsScroller
TabsListLayout.FillDirection = Enum.FillDirection.Horizontal
TabsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabsListLayout.Padding = UDim.new(0.02, 0)

-- Enhanced Tab Button Template
TabButtonTemplate.Name = "TabButtonTemplate"
TabButtonTemplate.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
TabButtonTemplate.BorderSizePixel = 0
TabButtonTemplate.Size = UDim2.new(0, 80, 0.8, 0)
TabButtonTemplate.Font = Enum.Font.GothamSemibold
TabButtonTemplate.Text = "Tab"
TabButtonTemplate.TextColor3 = Color3.fromRGB(200, 200, 220)
TabButtonTemplate.TextScaled = true
TabButtonTemplate.TextSize = 14
TabButtonTemplate.TextWrapped = true
TabButtonTemplate.AutoButtonColor = false
TabButtonTemplate.TextTransparency = 0.2

TabButtonUICorner.CornerRadius = UDim.new(0.15, 0)
TabButtonUICorner.Parent = TabButtonTemplate

-- Enhanced Intro Frame
Intro.Name = "Intro"
Intro.Parent = Main
Intro.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
Intro.ClipsDescendants = true
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 3

UICorner_2.CornerRadius = UDim.new(0.08, 0)
UICorner_2.Parent = Intro

-- Enhanced Logo with Glow
Logo.Parent = Intro
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0.75, 0, 0.75, 0)
Logo.ZIndex = 4
Logo.Image = "http://www.roblox.com/asset/?id=98057150035606"
Logo.ScaleType = Enum.ScaleType.Fit
Logo.Active = false
Logo.ImageColor3 = Color3.fromRGB(74, 208, 238)

-- Add Logo Glow Effect
local LogoGlow = Instance.new("ImageLabel")
LogoGlow.Name = "LogoGlow"
LogoGlow.Parent = Logo
LogoGlow.Image = "rbxassetid://9924798236"
LogoGlow.ImageColor3 = Color3.fromRGB(74, 208, 238)
LogoGlow.ImageTransparency = 0.7
LogoGlow.BackgroundTransparency = 1
LogoGlow.Size = UDim2.new(1.5, 0, 1.5, 0)
LogoGlow.Position = UDim2.new(-0.25, 0, -0.25, 0)
LogoGlow.ZIndex = 3

UIAspectRatioConstraint.Parent = Logo

-- Enhanced Title with Gradient
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
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 16
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Center
Title.TextTransparency = 0.1

-- Add Title Gradient
local TitleGradient = Instance.new("UIGradient")
TitleGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(74, 208, 238)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 152, 219))
}
TitleGradient.Parent = Title

-- Enhanced Menu
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
Menu.ScrollBarImageColor3 = Color3.fromRGB(74, 208, 238)
Menu.ScrollBarThickness = Menu.AbsoluteSize.X/25
Menu.ScrollBarImageTransparency = 0.3

UIListLayout.Parent = Menu
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

-- Enhanced Toggle
Toggle.Name = "Toggle"
Toggle.Visible = false
Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
Toggle.Size = UDim2.new(0.95, 0, 0, 50)
Toggle.AutoButtonColor = false

UICorner_3.CornerRadius = UDim.new(0.15, 0)
UICorner_3.Parent = Toggle

Enabled.Name = "Enabled"
Enabled.Parent = Toggle
Enabled.AnchorPoint = Vector2.new(1, 0.5)
Enabled.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Enabled.Position = UDim2.new(0.975, 0, 0.5, 0)
Enabled.Size = UDim2.new(0.75, 0, 0.75, 0)

UIAspectRatioConstraint_2.Parent = Enabled

UICorner_4.CornerRadius = UDim.new(0.3, 0)
UICorner_4.Parent = Enabled

Check.Name = "Check"
Check.Parent = Enabled
Check.AnchorPoint = Vector2.new(0.5, 0.5)
Check.BackgroundColor3 = Color3.fromRGB(74, 208, 238)
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
Name.Font = Enum.Font.GothamSemibold
Name.Text = "Script"
Name.TextColor3 = Color3.fromRGB(240, 240, 250)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.TextYAlignment = Enum.TextYAlignment.Bottom
Name.TextTransparency = 0.1

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))}
UIGradient.Parent = Toggle

-- Enhanced Button
Button.Name = "Button"
Button.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
Button.Size = UDim2.new(0.95, 0, 0, 50)
Button.AutoButtonColor = false

UICorner_6.CornerRadius = UDim.new(0.15, 0)
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
Name_2.TextColor3 = Color3.fromRGB(240, 240, 250)
Name_2.TextScaled = true
Name_2.TextSize = 14
Name_2.TextWrapped = true
Name_2.TextXAlignment = Enum.TextXAlignment.Left
Name_2.TextYAlignment = Enum.TextYAlignment.Bottom
Name_2.TextTransparency = 0.1

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))}
UIGradient_2.Parent = Button

tab.Name = "Tab"
tab.Visible = false
tab.BackgroundTransparency = 1
tab.Size = UDim2.new(0.95, 0, 0.025, 0)

-- Enhanced Close Button
Close.Name = "Close"
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.8, 0, 0.1, 0)
Close.Size = UDim2.new(0.15, 0, 0.125, 0)
Close.Font = Enum.Font.GothamBold
Close.Text = "✕"
Close.TextColor3 = Color3.fromRGB(231, 76, 60)
Close.TextScaled = true
Close.TextSize = 16
Close.TextWrapped = true
Close.TextXAlignment = Enum.TextXAlignment.Right
Close.Parent = Main

-- Enhanced ComboElem
ComboElem.Name = "ComboElem"
ComboElem.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
ComboElem.Size = UDim2.new(0.95, 0, 0, 50)
ComboElem.AutoButtonColor = false

UICorner_7.CornerRadius = UDim.new(0.15, 0)
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
Name_3.TextColor3 = Color3.fromRGB(240, 240, 250)
Name_3.TextScaled = true
Name_3.TextSize = 14
Name_3.TextWrapped = true
Name_3.TextXAlignment = Enum.TextXAlignment.Left
Name_3.TextYAlignment = Enum.TextYAlignment.Bottom
Name_3.TextTransparency = 0.1

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))}
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
Img.Font = Enum.Font.GothamBold
Img.Text = "›"
Img.TextColor3 = Color3.fromRGB(200, 200, 220)
Img.TextScaled = true
Img.TextSize = 14
Img.TextWrapped = true

UIAspectRatioConstraint_4.Parent = Img

-- Enhanced ComboBox
ComboBox.Name = "ComboBox"
ComboBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
ComboBox.Size = UDim2.new(0.95, 0, 0, 50)
ComboBox.AutoButtonColor = false

UICorner_8.CornerRadius = UDim.new(0.15, 0)
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
Name_4.TextColor3 = Color3.fromRGB(240, 240, 250)
Name_4.TextScaled = true
Name_4.TextSize = 14
Name_4.TextWrapped = true
Name_4.TextXAlignment = Enum.TextXAlignment.Left
Name_4.TextYAlignment = Enum.TextYAlignment.Bottom
Name_4.TextTransparency = 0.1

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))}
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
Img_2.TextColor3 = Color3.fromRGB(74, 208, 238)
Img_2.TextScaled = true
Img_2.TextSize = 14
Img_2.TextWrapped = true

UIAspectRatioConstraint_5.Parent = Img_2

-- Enhanced Input Box
InputBox.Name = "InputBox"
InputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
InputBox.Size = UDim2.new(0.95, 0, 0, 50)
InputBox.AutoButtonColor = false

UICorner_9.CornerRadius = UDim.new(0.15, 0)
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
Name_5.TextColor3 = Color3.fromRGB(240, 240, 250)
Name_5.TextScaled = true
Name_5.TextSize = 14
Name_5.TextWrapped = true
Name_5.TextXAlignment = Enum.TextXAlignment.Left
Name_5.TextYAlignment = Enum.TextYAlignment.Bottom
Name_5.TextTransparency = 0.1

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 220))}
UIGradient_5.Parent = InputBox

TextBox.Name = "TextBox"
TextBox.Parent = InputBox
TextBox.AnchorPoint = Vector2.new(1, 0.5)
TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
TextBox.BackgroundTransparency = 0
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.95, 0, 0.5, 0)
TextBox.Size = UDim2.new(0.35, 0, 0.6, 0)
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 170)
TextBox.PlaceholderText = "Enter text..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(240, 240, 250)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
TextBox.ClearTextOnFocus = false

UICorner_10.CornerRadius = UDim.new(0.1, 0)
UICorner_10.Parent = TextBox

-- Enhanced Min and Max Labels
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
MinLabel.TextColor3 = Color3.fromRGB(150, 150, 170)
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
MaxLabel.Font = Enum.Font.Gotham
MaxLabel.Text = "Max: 100"
MaxLabel.TextColor3 = Color3.fromRGB(150, 150, 170)
MaxLabel.TextScaled = true
MaxLabel.TextSize = 8
MaxLabel.TextWrapped = true
MaxLabel.TextXAlignment = Enum.TextXAlignment.Right
MaxLabel.Visible = false

-- Add Hover Effects to All Buttons
local function setupHoverEffect(button)
    local originalColor = button.BackgroundColor3
    local originalTextColor = if button:FindFirstChildWhichIsA("TextLabel") then button:FindFirstChildWhichIsA("TextLabel").TextColor3 else Color3.new(1,1,1)
    
    button.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(
                math.min(originalColor.R * 255 + 10, 255),
                math.min(originalColor.G * 255 + 10, 255),
                math.min(originalColor.B * 255 + 10, 255)
            )
        }):Play()
        
        if button:FindFirstChildWhichIsA("TextLabel") then
            game:GetService("TweenService"):Create(button:FindFirstChildWhichIsA("TextLabel"), TweenInfo.new(0.2), {
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }):Play()
        end
    end)
    
    button.MouseLeave:Connect(function()
        game:GetService("TweenService"):Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = originalColor
        }):Play()
        
        if button:FindFirstChildWhichIsA("TextLabel") then
            game:GetService("TweenService"):Create(button:FindFirstChildWhichIsA("TextLabel"), TweenInfo.new(0.2), {
                TextColor3 = originalTextColor
            }):Play()
        end
    end)
end

-- Apply hover effects to template buttons
setupHoverEffect(Toggle)
setupHoverEffect(Button)
setupHoverEffect(ComboElem)
setupHoverEffect(ComboBox)
setupHoverEffect(InputBox)

-- SCRIPT

local TweenService = game:GetService("TweenService")

-- Enhanced Close Animation
Close.MouseButton1Click:Connect(function()
    Logo.Active = true
    
    -- Fade out all content first
    for _, child in pairs(Main:GetChildren()) do
        if child:IsA("GuiObject") and child ~= Intro and child ~= MainShadow and child ~= GlowEffect then
            game:GetService("TweenService"):Create(child, TweenInfo.new(0.2), {
                BackgroundTransparency = if child:IsA("Frame") then 1 else child.BackgroundTransparency,
                TextTransparency = if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("TextBox") then 1 else 0,
                ImageTransparency = if child:IsA("ImageButton") or child:IsA("ImageLabel") then 1 else 0
            }):Play()
        end
    end
    
    task.wait(0.2)
    
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
    TweenService:Create(GlowEffect, TweenInfo.new(0.25), {BackgroundTransparency = 0.9}):Play()

    task.wait(0.3)
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.75, 0.75),
        UDim2.fromScale(0.5, 0.5),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.5, true, nil
    )

    task.wait(0.3)
    Main:TweenSize(
        UDim2.fromScale(0.1, 0.175),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.5, true, nil
    )

    task.wait(0.3)
    for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA("GuiObject") and obj ~= Intro and obj ~= MainShadow and obj ~= GlowEffect then
            obj.Visible = false
        end
    end

    TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {ImageTransparency = 0.8}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
    TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.8}):Play()
end)

-- Enhanced Logo Open Animation
Logo.MouseButton1Click:Connect(function()
    Logo.Active = false
    TweenService:Create(Logo, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {ImageTransparency = 0}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
    TweenService:Create(Main, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
    TweenService:Create(GlowEffect, TweenInfo.new(0.25), {BackgroundTransparency = 0.7}):Play()

    task.wait(0.3)
    Main:TweenSize(
        UDim2.fromScale(0.3, 0.3),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.5, true, nil
    )

    task.wait(0.3)
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.175, 0.175),
        UDim2.fromScale(0.075, 0.15),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.5, true, nil
    )

    for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA("GuiObject") and obj ~= Intro and obj ~= MainShadow and obj ~= GlowEffect then
            obj.Visible = true
            game:GetService("TweenService"):Create(obj, TweenInfo.new(0.3), {
                BackgroundTransparency = if obj:IsA("Frame") then 0 else obj.BackgroundTransparency,
                TextTransparency = if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then 0.1 else 0,
                ImageTransparency = if obj:IsA("ImageButton") or obj:IsA("ImageLabel") then 0 else 0
            }):Play()
        end
    end

    task.wait(0.3)
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
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

local element_height = 50*Menu.AbsoluteSize.Y/210
local elements = 0

local function AddSpace(parent)
    local space = tab:Clone()
    space.Parent = parent
    space.LayoutOrder = elements
    space.Visible = true

    elements += 1
end

-- Tab System Variables
local currentTab = nil
local tabs = {}
local tabContents = {}
local tabOrderCounter = 0

function lib:CreateTab(name)
    local newTabButton = TabButtonTemplate:Clone()
    newTabButton.Name = name .. "Tab"
    newTabButton.Text = name
    newTabButton.Parent = TabsScroller
    newTabButton.Visible = true
    
    -- Apply hover effect to tab button
    setupHoverEffect(newTabButton)
    
    -- Create a container for this tab's content
    local tabContent = Instance.new("ScrollingFrame")
    tabContent.Name = name .. "Content"
    tabContent.Parent = Menu
    tabContent.BackgroundTransparency = 1
    tabContent.BorderSizePixel = 0
    tabContent.Size = UDim2.new(1, 0, 1, 0)
    tabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
    tabContent.ScrollBarImageColor3 = Color3.fromRGB(74, 208, 238)
    tabContent.ScrollBarThickness = Menu.ScrollBarThickness
    tabContent.ScrollBarImageTransparency = 0.3
    tabContent.AutomaticCanvasSize = Enum.AutomaticSize.Y
    tabContent.Visible = false
    
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
    
    -- Enhanced tab button click with animation
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
        -- Animate tab highlight movement
        local targetTab = tabs[tabName].button
        TabHighlight.Visible = true
        
        TweenService:Create(TabHighlight, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(
                targetTab.Position.X.Scale,
                targetTab.Position.X.Offset,
                TabHighlight.Position.Y.Scale,
                TabHighlight.Position.Y.Offset
            ),
            Size = UDim2.new(0, targetTab.AbsoluteSize.X, TabHighlight.Size.Y.Scale, TabHighlight.Size.Y.Offset)
        }):Play()
        
        -- Hide current tab content with fade out
        if currentTab and tabs[currentTab] then
            TweenService:Create(tabs[currentTab].button, TweenInfo.new(0.2), {
                BackgroundColor3 = Color3.fromRGB(40, 40, 55),
                TextColor3 = Color3.fromRGB(200, 200, 220)
            }):Play()
            
            tabs[currentTab].content.Visible = false
        end
        
        -- Show new tab content with fade in
        tabs[tabName].content.Visible = true
        TweenService:Create(tabs[tabName].button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(50, 50, 70),
            TextColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
        
        -- Update current tab
        currentTab = tabName
    end
end

function lib:GetCurrentTabContent()
    if currentTab and tabs[currentTab] then
        return tabs[currentTab].content
    end
    return Menu -- Fallback to main menu if no tabs
end

-- Enhanced AddToggle with animations
function lib:AddToggle(name, funct, enabled, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}
    
    local newTog = Toggle:Clone()
    
    local check = newTog:WaitForChild("Enabled"):WaitForChild("Check")
    check.Visible = enabled
    
    newTog.MouseButton1Click:Connect(function()
        enabled = not enabled
        
        -- Animate toggle switch
        TweenService:Create(check, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = enabled and Color3.fromRGB(46, 204, 113) or Color3.fromRGB(231, 76, 60)
        }):Play()
        
        -- Scale animation
        check.Size = UDim2.new(0.4, 0, 0.4, 0)
        TweenService:Create(check, TweenInfo.new(0.15), {
            Size = UDim2.new(0.65, 0, 0.65, 0)
        }):Play()
        
        check.Visible = enabled
        funct(enabled, unpack(args))
    end)
    
    -- Set initial color
    check.BackgroundColor3 = enabled and Color3.fromRGB(46, 204, 113) or Color3.fromRGB(231, 76, 60)
    
    newTog:WaitForChild("Name").Text = name
    
    newTog.Size = UDim2.new(0.95, 0, 0, element_height)
    newTog.Name = name
    newTog.Parent = tabContent
    newTog.Visible = true
    
    -- Store element in current tab if we have one
    if currentTab then
        table.insert(tabs[currentTab].elements, newTog)
    end
    
    return newTog
end

-- Enhanced AddButton with click animation
function lib:AddButton(name, funct, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}
    
    local newBut = Button:Clone()
    
    newBut.MouseButton1Click:Connect(function()
        -- Click animation
        local originalSize = newBut.Size
        TweenService:Create(newBut, TweenInfo.new(0.1), {
            Size = UDim2.new(originalSize.X.Scale * 0.95, 0, originalSize.Y.Scale, originalSize.Y.Offset)
        }):Play()
        
        task.wait(0.1)
        
        TweenService:Create(newBut, TweenInfo.new(0.1), {
            Size = originalSize
        }):Play()
        
        funct(unpack(args))
    end)
    
    newBut:WaitForChild("Name").Text = name
    newBut.Size = UDim2.new(0.95, 0, 0, element_height)
    newBut.Name = name
    newBut.Parent = tabContent
    newBut.Visible = true
    
    -- Store element in current tab if we have one
    if currentTab then
        table.insert(tabs[currentTab].elements, newBut)
    end
    
    return newBut
end

-- Enhanced AddInputBox with focus animations
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
    
    -- Focus animation
    textBox.Focused:Connect(function()
        TweenService:Create(textBox, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(45, 45, 60)
        }):Play()
    end)
    
    textBox.FocusLost:Connect(function()
        TweenService:Create(textBox, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(35, 35, 45)
        }):Play()
    end)
    
    -- Function to validate input based on min/max constraints
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
        
        funct(text, unpack(args))
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
    
    newInput.Size = UDim2.new(0.95, 0, 0, element_height)
    newInput.Name = name
    newInput.Parent = tabContent
    newInput.Visible = true
    
    if currentTab then
        table.insert(tabs[currentTab].elements, newInput)
    end
    
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
    
    handleTextChanged()
    
    return inputObj
end

-- Enhanced AddComboBox with animations
function lib:AddComboBox(text, options, funct, ...)
    local tabContent = lib:GetCurrentTabContent()
    local enabled = false
    local elems = {}
    local args = {...}
    
    local newCombo = ComboBox:Clone()
    
    local function setBoxState()
        TweenService:Create(newCombo:WaitForChild("Img"), TweenInfo.new(0.2), {
            Rotation = enabled and 0 or 180
        }):Play()
        
        for _, elem in ipairs(elems) do
            if enabled then
                elem.Visible = true
                TweenService:Create(elem, TweenInfo.new(0.2), {
                    Position = elem.Position + UDim2.new(0, 0, 0.1, 0),
                    BackgroundTransparency = 0
                }):Play()
            else
                TweenService:Create(elem, TweenInfo.new(0.2), {
                    Position = elem.Position - UDim2.new(0, 0, 0.1, 0),
                    BackgroundTransparency = 1
                }):Play()
                task.wait(0.2)
                elem.Visible = false
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
    
    if currentTab then
        table.insert(tabs[currentTab].elements, newCombo)
    end
    
    for index, name in ipairs(options) do
        local newElem = ComboElem:Clone()
        table.insert(elems, newElem)
        
        newElem.Position = newElem.Position + UDim2.new(0, 0, 0.1 * index, 0)
        newElem.BackgroundTransparency = 1
        
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

function lib:SetTabButtonColor(r, g, b)
    for _, tabData in pairs(tabs) do
        tabData.button.BackgroundColor3 = Color3.fromRGB(r, g, b)
    end
end

function lib:SetActiveTabColor(r, g, b)
    if currentTab and tabs[currentTab] then
        tabs[currentTab].button.BackgroundColor3 = Color3.fromRGB(r, g, b)
    end
end

function lib:SetTheme(theme)
    if theme == "Default" then
        lib:SetBackgroundColor(30, 30, 45)
        lib:SetButtonsColor(40, 40, 55)
        lib:SetCloseBtnColor(74, 208, 238)
        lib:SetInputBoxColor(40, 40, 55)
        lib:SetTabButtonColor(40, 40, 55)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(74, 208, 238)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(74, 208, 238)
        
    elseif theme == "TomorrowNightBlue" then
        lib:SetButtonsColor(60, 80, 110)
        lib:SetCloseBtnColor(74, 208, 238)
        lib:SetBackgroundColor(25, 35, 70)
        lib:SetInputBoxColor(60, 80, 110)
        lib:SetTabButtonColor(50, 70, 100)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(74, 208, 238)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(74, 208, 238)
        
    elseif theme == "HighContrast" then
        lib:SetBackgroundColor(0, 0, 0)
        lib:SetButtonsColor(20, 20, 20)
        lib:SetCloseBtnColor(255, 255, 0)
        lib:SetInputBoxColor(20, 20, 20)
        lib:SetTabButtonColor(40, 40, 40)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
        
    elseif theme == "Aqua" then
        lib:SetBackgroundColor(44, 62, 82)
        lib:SetButtonsColor(52, 74, 95)
        lib:SetCloseBtnColor(26, 189, 158)
        lib:SetInputBoxColor(52, 74, 95)
        lib:SetTabButtonColor(48, 68, 88)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(26, 189, 158)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(26, 189, 158)
        
    elseif theme == "Ocean" then
        lib:SetBackgroundColor(26, 32, 58)
        lib:SetButtonsColor(38, 45, 71)
        lib:SetCloseBtnColor(86, 76, 251)
        lib:SetInputBoxColor(38, 45, 71)
        lib:SetTabButtonColor(34, 40, 65)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(86, 76, 251)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(86, 76, 251)
        
    elseif theme == "Synapse" then
        lib:SetBackgroundColor(15, 15, 25)
        lib:SetButtonsColor(25, 25, 35)
        lib:SetCloseBtnColor(0, 255, 255)
        lib:SetInputBoxColor(25, 25, 35)
        lib:SetTabButtonColor(35, 35, 45)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
        
    elseif theme == "DarkPurple" then
        lib:SetBackgroundColor(40, 20, 60)
        lib:SetButtonsColor(60, 30, 80)
        lib:SetCloseBtnColor(155, 89, 182)
        lib:SetInputBoxColor(60, 30, 80)
        lib:SetTabButtonColor(50, 25, 70)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(155, 89, 182)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(155, 89, 182)
        
    elseif theme == "Forest" then
        lib:SetBackgroundColor(15, 40, 25)
        lib:SetButtonsColor(25, 60, 35)
        lib:SetCloseBtnColor(46, 204, 113)
        lib:SetInputBoxColor(25, 60, 35)
        lib:SetTabButtonColor(20, 50, 30)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(46, 204, 113)
        
    elseif theme == "Sunset" then
        lib:SetBackgroundColor(60, 30, 40)
        lib:SetButtonsColor(80, 40, 50)
        lib:SetCloseBtnColor(230, 126, 34)
        lib:SetInputBoxColor(80, 40, 50)
        lib:SetTabButtonColor(70, 35, 45)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(230, 126, 34)
        TabHighlight.BackgroundColor3 = Color3.fromRGB(230, 126, 34)
        
    else
        error("Theme not found.")
    end
end

-- Enhanced Tab System Functions
function lib:RemoveTab(tabName)
    if tabs[tabName] then
        -- Animate removal
        TweenService:Create(tabs[tabName].button, TweenInfo.new(0.2), {
            BackgroundTransparency = 1,
            TextTransparency = 1
        }):Play()
        
        task.wait(0.2)
        tabs[tabName].button:Destroy()
        tabs[tabName].content:Destroy()
        
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
                TabHighlight.Visible = false
            end
        end
        
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

-- New UI Enhancement Functions
function lib:SetGlowColor(r, g, b)
    GlowEffect.BackgroundColor3 = Color3.fromRGB(r, g, b)
    local glowGradient = UIGradient_Glow:Clone()
    glowGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(r, g, b)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(math.max(0, r-30), math.max(0, g-30), math.max(0, b-30))),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(math.max(0, r-60), math.max(0, g-60), math.max(0, b-60)))
    }
    glowGradient.Parent = GlowEffect
end

function lib:SetGlowIntensity(intensity)
    GlowEffect.BackgroundTransparency = 1 - intensity
end

function lib:EnableBlurEffect(enable)
    if enable then
        local blur = Instance.new("BlurEffect")
        blur.Name = "BackgroundBlur"
        blur.Size = 10
        blur.Parent = game:GetService("Lighting")
        
        TweenService:Create(blur, TweenInfo.new(0.5), {
            Size = 24
        }):Play()
    else
        local blur = game:GetService("Lighting"):FindFirstChild("BackgroundBlur")
        if blur then
            TweenService:Create(blur, TweenInfo.new(0.5), {
                Size = 0
            }):Play()
            task.wait(0.5)
            blur:Destroy()
        end
    end
end

function lib:SetElementAnimationSpeed(speed)
    -- This can be used to control animation speeds globally
    for _, element in pairs({Toggle, Button, ComboBox, InputBox}) do
        local hoverConnections = element:GetPropertyChangedSignal("MouseEnter"):GetConnections()
        for _, conn in pairs(hoverConnections) do
            conn:Disconnect()
        end
    end
end

-- INIT

-- Animate initial appearance
Main:TweenPosition(
    UDim2.fromScale(0.5, 0.5),
    Enum.EasingDirection.Out,
    Enum.EasingStyle.Back,
    1.5, true, nil
)

-- Pulse glow effect on load
task.wait(0.5)
TweenService:Create(GlowEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 2, true), {
    BackgroundTransparency = 0.5
}):Play()

task.wait(1.5)
Logo:TweenSizeAndPosition(
    UDim2.fromScale(0.175, 0.175),
    UDim2.fromScale(0.075, 0.15),
    Enum.EasingDirection.Out,
    Enum.EasingStyle.Back,
    1, true, nil
)

task.wait(1.5)
TweenService:Create(Intro, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()

-- Set default theme
lib:SetTheme("Default")

return lib
