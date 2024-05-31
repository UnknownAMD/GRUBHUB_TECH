if shared.CG_CONFIG_LOADER then
    shared.CG_CONFIG_LOADER:Destroy()
    shared.CG_CONFIG_LOADER = nil
end

local configLoaderModule = {}
local CoreGui = game:GetService("CoreGui")

function configLoaderModule.new(callback)
    if shared.CG_CONFIG_LOADER then return end
    callback = type(callback) == "function" and callback or function()end
    
    local ConfigLoader = Instance.new("ScreenGui")
    local MAIN = Instance.new("Frame")
    local LOAD_BUTTON = Instance.new("TextButton")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local InputBox = Instance.new("TextBox")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local UIListLayout = Instance.new("UIListLayout")
    
    ConfigLoader.Name = "ConfigLoader"
    ConfigLoader.Parent = CoreGui
    ConfigLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    MAIN.Name = "MAIN"
    MAIN.Parent = ConfigLoader
    MAIN.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MAIN.BorderColor3 = Color3.fromRGB(50, 100, 255)
    MAIN.Position = UDim2.new(0.505583107, 0, 0.419354826, 0)
    MAIN.Size = UDim2.new(0.155086845, 0, 0.241935477, 0)
    
    LOAD_BUTTON.Name = "LOAD_BUTTON"
    LOAD_BUTTON.Parent = MAIN
    LOAD_BUTTON.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    LOAD_BUTTON.BorderColor3 = Color3.fromRGB(50, 50, 50)
    LOAD_BUTTON.Position = UDim2.new(0.0240000002, 0, 0.786666691, 0)
    LOAD_BUTTON.Size = UDim2.new(0.952000022, 0, 0.173333332, 0)
    LOAD_BUTTON.AutoButtonColor = false
    LOAD_BUTTON.Font = Enum.Font.SourceSans
    LOAD_BUTTON.Text = "Load Config"
    LOAD_BUTTON.TextColor3 = Color3.fromRGB(255, 255, 255)
    LOAD_BUTTON.TextScaled = true
    LOAD_BUTTON.TextSize = 14.000
    LOAD_BUTTON.TextStrokeTransparency = 0.000
    LOAD_BUTTON.TextWrapped = true
    
    UITextSizeConstraint.Parent = LOAD_BUTTON
    UITextSizeConstraint.MaxTextSize = 20
    
    UIAspectRatioConstraint.Parent = LOAD_BUTTON
    UIAspectRatioConstraint.AspectRatio = 9.154
    
    InputBox.Name = "InputBox"
    InputBox.Parent = MAIN
    InputBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    InputBox.BorderColor3 = Color3.fromRGB(50, 50, 50)
    InputBox.Position = UDim2.new(0.0240000002, 0, 0.0399999991, 0)
    InputBox.Size = UDim2.new(0.952000022, 0, 0.699999988, 0)
    InputBox.Font = Enum.Font.SourceSans
    InputBox.PlaceholderText = "CONFIG DATA HERE"
    InputBox.Text = ""
    InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    InputBox.TextSize = 14.000
    InputBox.TextStrokeTransparency = 0.000
    InputBox.TextWrapped = true
    InputBox.TextXAlignment = Enum.TextXAlignment.Left
    InputBox.TextYAlignment = Enum.TextYAlignment.Top
    
    UIAspectRatioConstraint_2.Parent = InputBox
    UIAspectRatioConstraint_2.AspectRatio = 2.267
    
    UIAspectRatioConstraint_3.Parent = MAIN
    UIAspectRatioConstraint_3.AspectRatio = 1.667
    
    UIListLayout.Parent = ConfigLoader
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    shared.CG_CONFIG_LOADER = ConfigLoader

    LOAD_BUTTON.MouseButton1Click:Connect(function()
        if #InputBox.Text <= 0 then
            shared.CG_CONFIG_LOADER:Destroy()
            shared.CG_CONFIG_LOADER = nil
            return callback(false)
        end

        shared.CG_CONFIG_LOADER:Destroy()
        shared.CG_CONFIG_LOADER = nil
        return callback(InputBox.Text)
    end)
end

return configLoaderModule
