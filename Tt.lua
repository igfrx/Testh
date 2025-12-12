-- Arceus UI — Enhanced appearance + interactions
-- Drop this file into your loader and require it like the original.
-- Preserves the original API (lib:CreateTab, AddButton, AddToggle, AddInputBox, AddComboBox, etc.)

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

-- PROPERTIES (base)
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
Main.BackgroundColor3 = Color3.fromRGB(30, 34, 38)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, -0.2, 0)
Main.Size = UDim2.new(0.34, 0, 0.36, 0)
Main.ClipsDescendants = false

UICorner.CornerRadius = UDim.new(0.035, 0)
UICorner.Parent = Main

-- subtle outer stroke
local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = Main
MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainStroke.Color = Color3.fromRGB(20,20,20)
MainStroke.Transparency = 0.5
MainStroke.Thickness = 1

-- soft background gradient for Main
local MainGradient = Instance.new("UIGradient")
MainGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(38,42,48)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(28,30,34))
}
MainGradient.Rotation = 90
MainGradient.Parent = Main

-- Add shadow effect for modern look
local MainShadow = Instance.new("ImageLabel")
MainShadow.Name = "MainShadow"
MainShadow.Image = "rbxassetid://1316045217"
MainShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
MainShadow.ImageTransparency = 0.82
MainShadow.ScaleType = Enum.ScaleType.Slice
MainShadow.SliceCenter = Rect.new(10, 10, 118, 118)
MainShadow.BackgroundTransparency = 1
MainShadow.Position = UDim2.new(0, -22, 0, -22)
MainShadow.Size = UDim2.new(1, 44, 1, 44)
MainShadow.ZIndex = 0
MainShadow.Parent = Main

-- Tabs System (top bar)
TabsContainer.Name = "TabsContainer"
TabsContainer.Parent = Main
TabsContainer.BackgroundTransparency = 1
TabsContainer.BorderSizePixel = 0
TabsContainer.Position = UDim2.new(0, 0, 0, 10)
TabsContainer.Size = UDim2.new(1, 0, 0, 48)
TabsContainer.ZIndex = 5

TabsScroller.Name = "TabsScroller"
TabsScroller.Parent = TabsContainer
TabsScroller.Active = true
TabsScroller.BackgroundTransparency = 1
TabsScroller.BorderSizePixel = 0
TabsScroller.Size = UDim2.new(1, -24, 1, 0)
TabsScroller.Position = UDim2.new(0, 12, 0, 0)
TabsScroller.CanvasSize = UDim2.new(0, 0, 0, 0)
TabsScroller.ScrollBarThickness = 4
TabsScroller.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
TabsScroller.ScrollingDirection = Enum.ScrollingDirection.X
TabsScroller.AutomaticCanvasSize = Enum.AutomaticSize.X
TabsScroller.ZIndex = 6

TabsListLayout.Name = "TabsListLayout"
TabsListLayout.Parent = TabsScroller
TabsListLayout.FillDirection = Enum.FillDirection.Horizontal
TabsListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabsListLayout.Padding = UDim.new(0, 6)

TabButtonTemplate.Name = "TabButtonTemplate"
TabButtonTemplate.BackgroundColor3 = Color3.fromRGB(24, 28, 36)
TabButtonTemplate.BorderSizePixel = 0
TabButtonTemplate.Size = UDim2.new(0, 110, 0, 36)
TabButtonTemplate.BackgroundTransparency = 0
TabButtonTemplate.Font = Enum.Font.TitilliumWeb
TabButtonTemplate.Text = "Tab"
TabButtonTemplate.TextColor3 = Color3.fromRGB(220, 220, 220)
TabButtonTemplate.TextScaled = true
TabButtonTemplate.TextSize = 14
TabButtonTemplate.AutoButtonColor = false
TabButtonTemplate.ZIndex = 7

TabButtonUICorner.CornerRadius = UDim.new(0.35, 0)
TabButtonUICorner.Parent = TabButtonTemplate

-- underline indicator
local TabUnderline = Instance.new("Frame")
TabUnderline.Name = "TabUnderline"
TabUnderline.Size = UDim2.new(0, 0, 0, 4)
TabUnderline.AnchorPoint = Vector2.new(0, 1)
TabUnderline.Position = UDim2.new(0, 12, 1, -2)
TabUnderline.BackgroundColor3 = Color3.fromRGB(86, 160, 255)
TabUnderline.BorderSizePixel = 0
TabUnderline.ZIndex = 8
TabUnderline.Parent = TabsScroller
local underlineCorner = Instance.new("UICorner", TabUnderline)
underlineCorner.CornerRadius = UDim.new(1, 0)

-- Intro / Logo
Intro.Name = "Intro"
Intro.Parent = Main
Intro.BackgroundColor3 = Color3.fromRGB(28,30,34)
Intro.ClipsDescendants = true
Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.ZIndex = 4

UICorner_2.CornerRadius = UDim.new(0.035, 0)
UICorner_2.Parent = Intro

Logo.Parent = Intro
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0.755, 0, 0.755, 0)
Logo.ZIndex = 5
Logo.Image = "http://www.roblox.com/asset/?id=98057150035606"
Logo.ScaleType = Enum.ScaleType.Fit
Logo.Active = false

UIAspectRatioConstraint.Parent = Logo

-- Title
Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(0, 0)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.04, 0, 0.08, 0)
Title.Size = UDim2.new(0.6, 0, 0.12, 0)
Title.Font = Enum.Font.TitilliumWeb
Title.FontFace = Font.new("rbxasset://fonts/families/TitilliumWeb.json", Enum.FontWeight.Bold)
Title.RichText = true
Title.Text = Script_Title
Title.TextColor3 = Color3.fromRGB(230, 230, 230)
Title.TextScaled = true
Title.TextSize = 18
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Center
Title.ZIndex = 6

-- Main menu area
Menu.Name = "Menu"
Menu.Parent = Main
Menu.Active = true
Menu.AnchorPoint = Vector2.new(0.5, 1)
Menu.BackgroundTransparency = 1
Menu.AutomaticCanvasSize = Enum.AutomaticSize.Y
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.5, 0, 0.95, 0)
Menu.Size = UDim2.new(0.95, 0, 0.72, 0)
Menu.CanvasSize = UDim2.new(0, 0, 0, 0)
Menu.ScrollBarImageColor3 = Color3.fromRGB(150, 150, 150)
Menu.ScrollBarThickness = 6
Menu.ZIndex = 6

UIListLayout.Parent = Menu
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)

-- Template: Toggle (modern switch)
Toggle.Name = "Toggle"
Toggle.Visible = false
Toggle.BackgroundColor3 = Color3.fromRGB(42, 46, 52)
Toggle.Size = UDim2.new(0.95, 0, 0, 50)
Toggle.AutoButtonColor = false
Toggle.ZIndex = 6

UICorner_3.CornerRadius = UDim.new(0.25, 0)
UICorner_3.Parent = Toggle

Enabled.Name = "Enabled"
Enabled.Parent = Toggle
Enabled.AnchorPoint = Vector2.new(1, 0.5)
Enabled.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Enabled.Position = UDim2.new(0.95, 0, 0.5, 0)
Enabled.Size = UDim2.new(0.22, 0, 0.6, 0)
Enabled.ZIndex = 7

UIAspectRatioConstraint_2.Parent = Enabled

local EnabledCorner = Instance.new("UICorner", Enabled)
EnabledCorner.CornerRadius = UDim.new(1, 0)

Check.Name = "Check"
Check.Parent = Enabled
Check.AnchorPoint = Vector2.new(0.5, 0.5)
Check.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
Check.Position = UDim2.new(0.2, 0, 0.5, 0) -- left (off) default
Check.Size = UDim2.new(0.62, 0, 0.9, 0)
Check.ZIndex = 8

UIAspectRatioConstraint_3.Parent = Check

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = Check

Name.Name = "Name"
Name.Parent = Toggle
Name.AnchorPoint = Vector2.new(0, 0.5)
Name.BackgroundTransparency = 1
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.04, 0, 0.5, 0)
Name.Size = UDim2.new(0.7, 0, 0.9, 0)
Name.Font = Enum.Font.TitilliumWeb
Name.Text = "Script"
Name.TextColor3 = Color3.fromRGB(230, 230, 230)
Name.TextScaled = true
Name.TextSize = 16
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
Name.TextYAlignment = Enum.TextYAlignment.Center
Name.ZIndex = 6

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(190, 190, 190))
}
UIGradient.Transparency = NumberSequence.new(0.85)
UIGradient.Parent = Toggle

-- Button template (subtle elevated button)
Button.Name = "Button"
Button.BackgroundColor3 = Color3.fromRGB(44, 48, 54)
Button.Size = UDim2.new(0.95, 0, 0, 50)
Button.AutoButtonColor = false
UICorner_6.CornerRadius = UDim.new(0.25, 0)
UICorner_6.Parent = Button

local ButtonStroke = Instance.new("UIStroke", Button)
ButtonStroke.Color = Color3.fromRGB(30, 30, 30)
ButtonStroke.Transparency = 0.6
ButtonStroke.Thickness = 1

Name_2.Name = "Name"
Name_2.Parent = Button
Name_2.AnchorPoint = Vector2.new(0, 0.5)
Name_2.BackgroundTransparency = 1
Name_2.BorderSizePixel = 0
Name_2.Position = UDim2.new(0.04, 0, 0.5, 0)
Name_2.Size = UDim2.new(0.9, 0, 0.9, 0)
Name_2.Font = Enum.Font.TitilliumWeb
Name_2.Text = "Enabled"
Name_2.TextColor3 = Color3.fromRGB(230, 230, 230)
Name_2.TextScaled = true
Name_2.TextSize = 16
Name_2.TextWrapped = true
Name_2.TextXAlignment = Enum.TextXAlignment.Left
Name_2.TextYAlignment = Enum.TextYAlignment.Center

UIGradient_2.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 170))
}
UIGradient_2.Transparency = NumberSequence.new(0.9)
UIGradient_2.Parent = Button

-- spacer template
tab.Name = "Tab"
tab.Visible = false
tab.BackgroundTransparency = 1
tab.Size = UDim2.new(0.95, 0, 0.025, 0)

-- Close button
Close.Name = "Close"
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.94, 0, 0.02, 0)
Close.Size = UDim2.new(0.06, 0, 0.08, 0)
Close.Font = Enum.Font.FredokaOne
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 120, 120)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.TextXAlignment = Enum.TextXAlignment.Center
Close.Parent = Main
Close.ZIndex = 9

-- Combo element (dropdown item)
ComboElem.Name = "ComboElem"
ComboElem.BackgroundColor3 = Color3.fromRGB(44, 48, 54)
ComboElem.Size = UDim2.new(0.95, 0, 0, 46)
ComboElem.AutoButtonColor = false
UICorner_7.CornerRadius = UDim.new(0.25, 0)
UICorner_7.Parent = ComboElem

Name_3.Name = "Name"
Name_3.Parent = ComboElem
Name_3.AnchorPoint = Vector2.new(0, 0.5)
Name_3.BackgroundTransparency = 1
Name_3.BorderSizePixel = 0
Name_3.Position = UDim2.new(0.04, 0, 0.5, 0)
Name_3.Size = UDim2.new(0.75, 0, 0.9, 0)
Name_3.Font = Enum.Font.TitilliumWeb
Name_3.Text = "Enabled"
Name_3.TextColor3 = Color3.fromRGB(230, 230, 230)
Name_3.TextScaled = true
Name_3.TextSize = 14
Name_3.TextWrapped = true
Name_3.TextXAlignment = Enum.TextXAlignment.Left
Name_3.TextYAlignment = Enum.TextYAlignment.Center

UIGradient_3.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient_3.Rotation = 180
UIGradient_3.Parent = ComboElem

Img.Name = "Img"
Img.Parent = ComboElem
Img.AnchorPoint = Vector2.new(1, 0.5)
Img.BackgroundTransparency = 1
Img.Position = UDim2.new(0.96, 0, 0.5, 0)
Img.Rotation = 90
Img.Size = UDim2.new(0.12, 0, 0.5, 0)
Img.Font = Enum.Font.FredokaOne
Img.Text = "ᐅ"
Img.TextColor3 = Color3.fromRGB(200, 200, 200)
Img.TextScaled = true
Img.TextWrapped = true

UIAspectRatioConstraint_4.Parent = Img

-- ComboBox (dropdown opener)
ComboBox.Name = "ComboBox"
ComboBox.BackgroundColor3 = Color3.fromRGB(44, 48, 54)
ComboBox.Size = UDim2.new(0.95, 0, 0, 50)
ComboBox.AutoButtonColor = false
UICorner_8.CornerRadius = UDim.new(0.25, 0)
UICorner_8.Parent = ComboBox

Name_4.Name = "Name"
Name_4.Parent = ComboBox
Name_4.AnchorPoint = Vector2.new(0, 0.5)
Name_4.BackgroundTransparency = 1.000
Name_4.BorderSizePixel = 0
Name_4.Position = UDim2.new(0.04, 0, 0.5, 0)
Name_4.Size = UDim2.new(0.75, 0, 0.9, 0)
Name_4.Font = Enum.Font.TitilliumWeb
Name_4.Text = "Select"
Name_4.TextColor3 = Color3.fromRGB(230, 230, 230)
Name_4.TextScaled = true
Name_4.TextSize = 14
Name_4.TextWrapped = true
Name_4.TextXAlignment = Enum.TextXAlignment.Left
Name_4.TextYAlignment = Enum.TextYAlignment.Center

UIGradient_4.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))
}
UIGradient_4.Parent = ComboBox

Img_2.Name = "Img"
Img_2.Parent = ComboBox
Img_2.AnchorPoint = Vector2.new(1, 0.5)
Img_2.BackgroundTransparency = 1
Img_2.Rotation = 180
Img_2.Position = UDim2.new(0.96, 0, 0.5, 0)
Img_2.Size = UDim2.new(0.12, 0, 0.5, 0)
Img_2.Font = Enum.Font.FredokaOne
Img_2.Text = "▾"
Img_2.TextColor3 = Color3.fromRGB(180, 180, 180)
Img_2.TextScaled = true
Img_2.TextWrapped = true

UIAspectRatioConstraint_5.Parent = Img_2

-- Input Box Properties:
InputBox.Name = "InputBox"
InputBox.BackgroundColor3 = Color3.fromRGB(44, 48, 54)
InputBox.Size = UDim2.new(0.95, 0, 0, 48)
InputBox.AutoButtonColor = false
InputBox.ZIndex = 6

UICorner_9.CornerRadius = UDim.new(0.25, 0)
UICorner_9.Parent = InputBox

Name_5.Name = "Name"
Name_5.Parent = InputBox
Name_5.AnchorPoint = Vector2.new(0, 0.5)
Name_5.BackgroundTransparency = 1
Name_5.BorderSizePixel = 0
Name_5.Position = UDim2.new(0.04, 0, 0.5, 0)
Name_5.Size = UDim2.new(0.45, 0, 0.9, 0)
Name_5.Font = Enum.Font.TitilliumWeb
Name_5.Text = "Input Box"
Name_5.TextColor3 = Color3.fromRGB(230, 230, 230)
Name_5.TextScaled = true
Name_5.TextSize = 14
Name_5.TextWrapped = true
Name_5.TextXAlignment = Enum.TextXAlignment.Left
Name_5.TextYAlignment = Enum.TextYAlignment.Center

UIGradient_5.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 170))
}
UIGradient_5.Transparency = NumberSequence.new(0.9)
UIGradient_5.Parent = InputBox

TextBox.Name = "TextBox"
TextBox.Parent = InputBox
TextBox.AnchorPoint = Vector2.new(1, 0.5)
TextBox.BackgroundColor3 = Color3.fromRGB(36, 40, 44)
TextBox.BackgroundTransparency = 0
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.95, 0, 0.5, 0)
TextBox.Size = UDim2.new(0.5, 0, 0.72, 0)
TextBox.Font = Enum.Font.TitilliumWeb
TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
TextBox.PlaceholderText = "Enter text..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(230, 230, 230)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
TextBox.ClearTextOnFocus = false

UICorner_10.CornerRadius = UDim.new(0.2, 0)
UICorner_10.Parent = TextBox

-- Min and Max Labels for Input Box
MinLabel.Name = "MinLabel"
MinLabel.Parent = InputBox
MinLabel.AnchorPoint = Vector2.new(1, 0)
MinLabel.BackgroundTransparency = 1
MinLabel.BorderSizePixel = 0
MinLabel.Position = UDim2.new(0.82, 0, 0.08, 0)
MinLabel.Size = UDim2.new(0.14, 0, 0.26, 0)
MinLabel.Font = Enum.Font.TitilliumWeb
MinLabel.Text = "Min: 0"
MinLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
MinLabel.TextScaled = true
MinLabel.TextSize = 10
MinLabel.TextWrapped = true
MinLabel.TextXAlignment = Enum.TextXAlignment.Right
MinLabel.Visible = false

MaxLabel.Name = "MaxLabel"
MaxLabel.Parent = InputBox
MaxLabel.AnchorPoint = Vector2.new(1, 1)
MaxLabel.BackgroundTransparency = 1
MaxLabel.BorderSizePixel = 0
MaxLabel.Position = UDim2.new(0.82, 0, 0.92, 0)
MaxLabel.Size = UDim2.new(0.14, 0, 0.26, 0)
MaxLabel.Font = Enum.Font.TitilliumWeb
MaxLabel.Text = "Max: 100"
MaxLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
MaxLabel.TextScaled = true
MaxLabel.TextSize = 10
MaxLabel.TextWrapped = true
MaxLabel.TextXAlignment = Enum.TextXAlignment.Right
MaxLabel.Visible = false

-- SCRIPT BEHAVIOR

-- parent
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

-- initial tween to center
Main:TweenPosition(
    UDim2.fromScale(0.5, 0.5),
    Enum.EasingDirection.Out,
    Enum.EasingStyle.Quad,
    0.9, true, nil
)

task.spawn(function()
    task.wait(1.2)
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.175, 0.175),
        UDim2.fromScale(0.075, 0.15),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.9, true, nil
    )
    task.wait(1)
    TweenService:Create(Intro, TweenInfo.new(0.9, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
end)

-- Close and Logo interactions (kept but polished)
Close.MouseButton1Click:Connect(function()
    Logo.Active = true
    TweenService:Create(Intro, TweenInfo.new(0.22, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()

    task.wait(0.28)
    Logo:TweenSizeAndPosition(
        UDim2.fromScale(0.75, 0.75),
        UDim2.fromScale(0.5, 0.5),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.25, true, nil
    )

    task.wait(0.28)
    Main:TweenSize(
        UDim2.fromScale(0.09, 0.16),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.25, true, nil
    )

    task.wait(0.28)
    for _, obj in pairs(Main:GetChildren()) do
        if obj:IsA("GuiObject") and obj ~= Intro then
            obj.Visible = false
        end
    end

    TweenService:Create(Logo, TweenInfo.new(0.22, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0.8}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.22, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
    TweenService:Create(Main, TweenInfo.new(0.22, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0.8}):Play()
end)

Logo.MouseButton1Click:Connect(function()
    Logo.Active = false
    TweenService:Create(Logo, TweenInfo.new(0.22, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {ImageTransparency = 0}):Play()
    TweenService:Create(Intro, TweenInfo.new(0.22, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()
    TweenService:Create(Main, TweenInfo.new(0.22, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 0}):Play()

    task.wait(0.28)
    Main:TweenSize(
        UDim2.fromScale(0.34, 0.36),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Quad,
        0.25, true, nil
    )

    task.wait(0.28)
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

    task.wait(0.28)
    TweenService:Create(Intro, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundTransparency = 1}):Play()
end)

-- layout helpers
local element_height = 50
local elements = 0

local function AddSpace(parent)
    local space = tab:Clone()
    space.Parent = parent
    space.LayoutOrder = elements
    space.Visible = true
    elements += 1
end

-- Tab System
local currentTab = nil
local tabs = {}
local tabOrderCounter = 0

-- helper: runs after layout to position underline
local function moveUnderlineTo(button)
    if not button or not button:IsDescendantOf(TabsScroller) then
        return
    end

    -- wait until absolute sizes are available
    local ready = false
    local tries = 0
    while (TabsScroller.AbsoluteSize.X == 0 or button.AbsoluteSize.X == 0) and tries < 20 do
        tries = tries + 1
        RunService.Heartbeat:Wait()
    end

    local relX = (button.AbsolutePosition.X - TabsScroller.AbsolutePosition.X) / math.max(1, TabsScroller.AbsoluteSize.X)
    local relW = button.AbsoluteSize.X / math.max(1, TabsScroller.AbsoluteSize.X)

    local targetPos = UDim2.new(relX, 0, 1, -4)
    local targetSize = UDim2.new(relW, 0, 0, 4)

    TweenService:Create(TabUnderline, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = targetPos, Size = targetSize}):Play()
end

function lib:CreateTab(name)
    local newTabButton = TabButtonTemplate:Clone()
    newTabButton.Name = name .. "Tab"
    newTabButton.Text = name
    newTabButton.Parent = TabsScroller
    newTabButton.Visible = true
    newTabButton.LayoutOrder = tabOrderCounter

    -- hover/press effects
    newTabButton.MouseEnter:Connect(function()
        TweenService:Create(newTabButton, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(34,38,48), TextTransparency = 0}):Play()
        TweenService:Create(newTabButton, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = newTabButton.Size + UDim2.new(0, 6, 0, 3)}):Play()
    end)
    newTabButton.MouseLeave:Connect(function()
        TweenService:Create(newTabButton, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(24,28,36)}):Play()
        TweenService:Create(newTabButton, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 110, 0, 36)}):Play()
    end)

    -- Create content container
    local tabContent = Instance.new("ScrollingFrame")
    tabContent.Name = name .. "Content"
    tabContent.Parent = Menu
    tabContent.BackgroundTransparency = 1
    tabContent.BorderSizePixel = 0
    tabContent.Size = UDim2.new(1, 0, 1, 0)
    tabContent.CanvasSize = UDim2.new(0, 0, 0, 0)
    tabContent.ScrollBarImageColor3 = Color3.fromRGB(150, 150, 150)
    tabContent.ScrollBarThickness = Menu.ScrollBarThickness
    tabContent.AutomaticCanvasSize = Enum.AutomaticSize.Y
    tabContent.Visible = false
    tabContent.ZIndex = 6

    local tabContentLayout = Instance.new("UIListLayout")
    tabContentLayout.Name = "UIListLayout"
    tabContentLayout.Parent = tabContent
    tabContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabContentLayout.Padding = UDim.new(0, 8)

    local tabData = {
        button = newTabButton,
        content = tabContent,
        name = name,
        order = tabOrderCounter,
        elements = {}
    }

    tabs[name] = tabData
    tabOrderCounter += 1

    newTabButton.MouseButton1Click:Connect(function()
        lib:Tab(name)
    end)

    -- if first tab, activate
    if not currentTab then
        lib:Tab(name)
    end

    -- ensure underline updates when button moves/resizes
    newTabButton:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
        if currentTab == name then
            moveUnderlineTo(newTabButton)
        end
    end)
    newTabButton:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
        if currentTab == name then
            moveUnderlineTo(newTabButton)
        end
    end)

    return tabData
end

function lib:Tab(tabName)
    if tabs[tabName] then
        -- hide current
        if currentTab and tabs[currentTab] then
            tabs[currentTab].content.Visible = false
            tabs[currentTab].button.BackgroundColor3 = Color3.fromRGB(24,28,36)
            tabs[currentTab].button.TextColor3 = Color3.fromRGB(220,220,220)
        end

        -- show new
        tabs[tabName].content.Visible = true
        tabs[tabName].button.BackgroundColor3 = Color3.fromRGB(34,38,48)
        tabs[tabName].button.TextColor3 = Color3.fromRGB(255,255,255)

        currentTab = tabName

        -- move underline
        task.spawn(function()
            moveUnderlineTo(tabs[tabName].button)
        end)
    end
end

function lib:GetCurrentTabContent()
    if currentTab and tabs[currentTab] then
        return tabs[currentTab].content
    end
    return Menu
end

-- interactive helpers for templates (hover)
local function addHoverEffects(gui)
    if not gui then return end
    gui.MouseEnter:Connect(function()
        pcall(function()
            TweenService:Create(gui, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.0, BackgroundColor3 = gui.BackgroundColor3 + Color3.fromRGB(6,6,6)}):Play()
        end)
    end)
    gui.MouseLeave:Connect(function()
        pcall(function()
            TweenService:Create(gui, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0, BackgroundColor3 = gui.BackgroundColor3 - Color3.fromRGB(6,6,6)}):Play()
        end)
    end)
end

-- AddToggle
function lib:AddToggle(name, funct, enabled, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}

    local newTog = Toggle:Clone()
    newTog:WaitForChild("Name").Text = name
    newTog.Size = UDim2.new(0.95, 0, 0, element_height)
    newTog.Name = name
    newTog.Parent = tabContent
    newTog.Visible = true
    newTog.LayoutOrder = elements
    elements += 1

    -- apply hover
    addHoverEffects(newTog)

    local check = newTog:WaitForChild("Enabled"):WaitForChild("Check")
    local enabledFrame = newTog:WaitForChild("Enabled")
    -- initialize visual state
    local function updateVisual(state, instant)
        if state then
            TweenService:Create(check, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.8, 0, 0.5, 0), BackgroundColor3 = Color3.fromRGB(86,160,255)}):Play()
            TweenService:Create(enabledFrame, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(30, 40, 60)}):Play()
        else
            TweenService:Create(check, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.2, 0, 0.5, 0), BackgroundColor3 = Color3.fromRGB(220,220,220)}):Play()
            TweenService:Create(enabledFrame, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(70,70,70)}):Play()
        end
    end

    updateVisual(enabled, true)

    newTog.MouseButton1Click:Connect(function()
        enabled = not enabled
        updateVisual(enabled)
        pcall(function() funct(enabled, unpack(args)) end)
    end)

    -- store to current tab
    if currentTab then
        table.insert(tabs[currentTab].elements, newTog)
    end

    return newTog
end

-- AddButton
function lib:AddButton(name, funct, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}

    local newBut = Button:Clone()
    newBut:WaitForChild("Name").Text = name
    newBut.Size = UDim2.new(0.95, 0, 0, element_height)
    newBut.Name = name
    newBut.Parent = tabContent
    newBut.Visible = true
    newBut.LayoutOrder = elements
    elements += 1

    -- hover
    addHoverEffects(newBut)

    newBut.MouseButton1Click:Connect(function()
        pcall(function() funct(unpack(args)) end)
    end)

    if currentTab then
        table.insert(tabs[currentTab].elements, newBut)
    end

    return newBut
end

-- AddInputBox
function lib:AddInputBox(name, funct, placeholder, default, options, ...)
    local tabContent = lib:GetCurrentTabContent()
    local args = {...}

    local newInput = InputBox:Clone()

    local minValue = nil
    local maxValue = nil
    local isNumberOnly = false

    if options then
        if options.min ~= nil then minValue = options.min end
        if options.max ~= nil then maxValue = options.max end
        if options.isNumber ~= nil then isNumberOnly = options.isNumber end
    end

    newInput:WaitForChild("Name").Text = name
    if placeholder then newInput.TextBox.PlaceholderText = placeholder end
    if default then newInput.TextBox.Text = default end

    if minValue ~= nil or maxValue ~= nil then
        newInput.MinLabel.Visible = true
        newInput.MaxLabel.Visible = true
        if minValue ~= nil then newInput.MinLabel.Text = "Min: " .. tostring(minValue) end
        if maxValue ~= nil then newInput.MaxLabel.Text = "Max: " .. tostring(maxValue) end
    end

    local textBox = newInput.TextBox

    local function validateInput(inputText)
        if isNumberOnly then
            local numericText = inputText:gsub("[^%-%d%.]", "")
            local decimalCount = 0
            local cleanedText = ""
            for i = 1, #numericText do
                local char = numericText:sub(i, i)
                if char == "." then
                    decimalCount = decimalCount + 1
                    if decimalCount <= 1 then cleanedText = cleanedText .. char end
                elseif char == "-" then
                    if i == 1 then cleanedText = cleanedText .. char end
                else
                    cleanedText = cleanedText .. char
                end
            end
            inputText = cleanedText

            if inputText ~= "" and inputText ~= "-" and inputText ~= "." then
                local numValue = tonumber(inputText)
                if numValue then
                    if minValue ~= nil and numValue < minValue then inputText = tostring(minValue)
                    elseif maxValue ~= nil and numValue > maxValue then inputText = tostring(maxValue)
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
        pcall(function() funct(text, unpack(args)) end)
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
    newInput.LayoutOrder = elements
    elements += 1

    addHoverEffects(newInput)

    if currentTab then
        table.insert(tabs[currentTab].elements, newInput)
    end

    local inputObj = {
        Frame = newInput,
        TextBox = textBox,
        GetText = function() return textBox.Text end,
        SetText = function(newText) textBox.Text = newText or ""; handleTextChanged() end,
        Clear = function() textBox.Text = "" end,
        SetPlaceholder = function(placeholderText) textBox.PlaceholderText = placeholderText or "Enter text..." end,
        SetMinValue = function(minVal) minValue = minVal; newInput.MinLabel.Visible = minVal ~= nil; if minVal ~= nil then newInput.MinLabel.Text = "Min: "..tostring(minVal) end; handleTextChanged() end,
        SetMaxValue = function(maxVal) maxValue = maxVal; newInput.MaxLabel.Visible = maxVal ~= nil; if maxVal ~= nil then newInput.MaxLabel.Text = "Max: "..tostring(maxVal) end; handleTextChanged() end,
        SetNumberOnly = function(numberOnly) isNumberOnly = numberOnly; if numberOnly then handleTextChanged() end end,
        GetMinValue = function() return minValue end,
        GetMaxValue = function() return maxValue end,
        Submit = submitText
    }

    handleTextChanged()
    return inputObj
end

-- AddComboBox
function lib:AddComboBox(text, options, funct, ...)
    local tabContent = lib:GetCurrentTabContent()
    local enabled = false
    local elems = {}
    local args = {...}

    local newCombo = ComboBox:Clone()

    newCombo:WaitForChild("Name").Text = text .. ( #options > 0 and (": "..options[1]) or "" )
    newCombo.Size = UDim2.new(0.95, 0, 0, element_height)
    newCombo.Name = text
    newCombo.Parent = tabContent
    newCombo.Visible = true
    newCombo.LayoutOrder = elements
    elements += 1

    addHoverEffects(newCombo)

    local function setBoxState()
        newCombo:WaitForChild("Img").Rotation = enabled and 180 or 0
        for _, elem in ipairs(elems) do
            elem.Visible = enabled
        end
    end

    newCombo.MouseButton1Click:Connect(function()
        enabled = not enabled
        setBoxState()
    end)

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
            pcall(function() funct(name, unpack(args)) end)
        end)

        newElem:WaitForChild("Name").Text = name
        newElem.Size = UDim2.new(0.95, 0, 0, element_height)
        newElem.Name = name
        newElem.Parent = tabContent
        newElem.Visible = false
        newElem.LayoutOrder = elements
        elements += 1

        addHoverEffects(newElem)

        if currentTab then
            table.insert(tabs[currentTab].elements, newElem)
        end
    end

    return newCombo
end

-- color / theme setters (kept but updated to affect new UI)
function lib:SetTitle(txt)
    Title.Text = txt
end

function lib:SetIcon(img)
    Logo.Image = img
end

function lib:SetBackgroundColor(r, g ,b)
    Main.BackgroundColor3 = Color3.fromRGB(r, g, b)
    Intro.BackgroundColor3 = Color3.fromRGB(r, g, b)
    MainGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(math.clamp(r-6,0,255), math.clamp(g-6,0,255), math.clamp(b-6,0,255))),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(math.clamp(r-18,0,255), math.clamp(g-18,0,255), math.clamp(b-18,0,255)))
    }
end

function lib:SetTitleColor(r, g, b)
    Title.TextColor3 = Color3.fromRGB(r, g, b)
end

function lib:SetCloseBtnColor(r, g, b)
    Close.TextColor3 = Color3.fromRGB(r, g, b)
    Img_2.TextColor3 = Color3.fromRGB(r, g, b)
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
    TextBox.BackgroundColor3 = Color3.fromRGB(math.max(0, r-8), math.max(0, g-8), math.max(0, b-8))
end

function lib:SetTabButtonColor(r, g, b)
    for _, tabData in pairs(tabs) do
        tabData.button.BackgroundColor3 = Color3.fromRGB(r, g, b)
    end
end

function lib:SetActiveTabColor(r, g, b)
    if currentTab and tabs[currentTab] then
        tabs[currentTab].button.BackgroundColor3 = Color3.fromRGB(r, g, b)
        TabUnderline.BackgroundColor3 = Color3.fromRGB(r, g, b)
    end
end

function lib:SetTheme(theme)
    if theme == "Default" then
        lib:SetButtonsColor(44,48,54)
        lib:SetCloseBtnColor(255,120,120)
        lib:SetBackgroundColor(30,34,38)
        lib:SetTabButtonColor(24,28,36)
    elseif theme == "TomorrowNightBlue" then
        lib:SetButtonsColor(74, 208, 238)
        lib:SetCloseBtnColor(74, 208, 238)
        lib:SetBackgroundColor(5, 16, 58)
        lib:SetInputBoxColor(74, 208, 238)
        lib:SetTabButtonColor(50, 150, 200)
        lib:SetActiveTabColor(74, 208, 238)
    elseif theme == "HighContrast" then
        lib:SetBackgroundColor(0, 0, 0)
        lib:SetButtonsColor(0, 0, 0)
        lib:SetCloseBtnColor(255, 255, 0)
        lib:SetInputBoxColor(0, 0, 0)
        lib:SetTabButtonColor(30, 30, 30)
    elseif theme == "Aqua" then
        lib:SetBackgroundColor(44, 62, 82)
        lib:SetButtonsColor(52, 74, 95)
        lib:SetCloseBtnColor(26, 189, 158)
        lib:SetInputBoxColor(52, 74, 95)
        lib:SetTabButtonColor(40, 55, 70)
    elseif theme == "Ocean" then
        lib:SetBackgroundColor(26, 32, 58)
        lib:SetButtonsColor(38, 45, 71)
        lib:SetCloseBtnColor(86, 76, 251)
        lib:SetInputBoxColor(38, 45, 71)
        lib:SetTabButtonColor(30, 36, 60)
        lib:SetActiveTabColor(86,76,251)
    else
        error("Theme not found.")
    end
end

-- Tab management helpers
function lib:RemoveTab(tabName)
    if tabs[tabName] then
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
                lib:Tab(newTab)
            else
                currentTab = nil
                -- hide underline
                TweenService:Create(TabUnderline, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0,0,0,4)}):Play()
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

-- finalize
return lib
