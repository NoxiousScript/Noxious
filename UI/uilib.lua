local libbb = {}

function libbb:win()
    local NOXIOUS = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Topbar = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local Tabs = Instance.new("Frame")
    local TabsContainer = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local btnsBG = Instance.new("Frame")

    NOXIOUS.Name = "NOXIOUS'"
    NOXIOUS.Parent = game:GetService("CoreGui")
    NOXIOUS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = NOXIOUS
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0, 517, 0, 361)

    Topbar.Name = "Topbar"
    Topbar.Parent = Frame
    Topbar.AnchorPoint = Vector2.new(0.5, 0.5)
    Topbar.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
    Topbar.BorderSizePixel = 0
    Topbar.Position = UDim2.new(0.499032885, 0, 0.0831024945, 0)
    Topbar.Size = UDim2.new(0, 498, 0, 40)

    TextLabel.Parent = Topbar
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0.0281124506, 0, 0.174999997, 0)
    TextLabel.Size = UDim2.new(0, 222, 0, 25)
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.Text = "Noxious"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    Tabs.Name = "Tabs"
    Tabs.Parent = Frame
    Tabs.AnchorPoint = Vector2.new(0.5, 0.5)
    Tabs.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
    Tabs.BorderSizePixel = 0
    Tabs.Position = UDim2.new(0.16827853, 0, 0.570637107, 0)
    Tabs.Size = UDim2.new(0, 156, 0, 296)

    TabsContainer.Name = "TabsContainer"
    TabsContainer.Parent = Tabs
    TabsContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    TabsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabsContainer.BackgroundTransparency = 1.000
    TabsContainer.BorderSizePixel = 0
    TabsContainer.Position = UDim2.new(0.5, 0, 0.5, 0)
    TabsContainer.Size = UDim2.new(0, 128, 0, 275)

    UIListLayout.Parent = TabsContainer
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)

    btnsBG.Name = "btnsBG"
    btnsBG.Parent = Frame
    btnsBG.AnchorPoint = Vector2.new(0.5, 0.5)
    btnsBG.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
    btnsBG.BorderSizePixel = 0
    btnsBG.Position = UDim2.new(0.659574449, 0, 0.570637107, 0)
    btnsBG.Size = UDim2.new(0, 332, 0, 296)

    local tabs = {}
    function tabs:tab(nme)
        local TextButton = Instance.new("TextButton")
        local Container = Instance.new("ScrollingFrame")
        local layputt = Instance.new("UIListLayout")

        TextButton.Parent = TabsContainer
        TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.5, 0, 0.0309090912, 0)
        TextButton.Size = UDim2.new(0, 120, 0, 17)
        TextButton.Font = Enum.Font.Gotham
        TextButton.Text = nme
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextScaled = true
        TextButton.TextSize = 14.000
        TextButton.TextWrapped = true

        Container.Name = "Container"
        Container.Parent = btnsBG
        Container.Active = true
        Container.AnchorPoint = Vector2.new(0.5, 0.5)
        Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Container.BackgroundTransparency = 1.000
        Container.BorderColor3 = Color3.fromRGB(27, 42, 53)
        Container.BorderSizePixel = 0
        Container.Position = UDim2.new(0.5, 0, 0.5, 0)
        Container.Size = UDim2.new(0, 314, 0, 277)
        Container.ScrollBarThickness = 6

        layputt.Parent = Container
        layputt.Padding = UDim.new(0, 6)
        
        TextButton.MouseButton1Click:Connect(function()
            for i, ta11b in pairs(btnsBG:GetChildren()) do
                if ta11b:isA("ScrollingFrame") then
                    ta11b.Visible = false
                end
            end
            Container.Visible = true
        end)

        local btns = {}

        function btns:label(txt)
            local Label = Instance.new("TextLabel")

            Label.Name = "Label"
            Label.Parent = Container
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.BorderSizePixel = 0
            Label.Position = UDim2.new(0.479299366, 0, 0.0324909762, 0)
            Label.Size = UDim2.new(0, 301, 0, 18)
            Label.Font = Enum.Font.Gotham
            Label.Text = txt
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextScaled = true
            Label.TextSize = 14.000
            Label.TextWrapped = true
            Label.TextXAlignment = Enum.TextXAlignment.Left
        end

        function btns:button(txt, cb)
            local Button = Instance.new("ImageButton")
            local Label = Instance.new("TextLabel")

            Button.Name = "Button"
            Button.Parent = Container
            Button.Active = false
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            Button.BorderSizePixel = 0
            Button.Position = UDim2.new(0.479299366, 0, 0.137184113, 0)
            Button.Selectable = false
            Button.Size = UDim2.new(0, 301, 0, 28)

            Label.Name = "Label"
            Label.Parent = Button
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.BorderSizePixel = 0
            Label.Position = UDim2.new(0.5, 0, 0.5, 0)
            Label.Size = UDim2.new(0, 283, 0, 18)
            Label.Font = Enum.Font.Gotham
            Label.Text = txt
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextScaled = true
            Label.TextSize = 14.000
            Label.TextWrapped = true
            Label.TextXAlignment = Enum.TextXAlignment.Left

            Button.MouseButton1Click:Connect(function()
                pcall(function()
                    cb()
                end)
            end)
        end

        function btns:toggle(txt, state, cb)
            local Toggle = Instance.new("ImageButton")
            local Label = Instance.new("TextLabel")
            local col = Instance.new("Frame")

            Toggle.Name = "Toggle"
            Toggle.Parent = Container
            Toggle.Active = false
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            Toggle.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0.479299366, 0, 0.137184113, 0)
            Toggle.Selectable = false
            Toggle.Size = UDim2.new(0, 301, 0, 28)

            Label.Name = "Label"
            Label.Parent = Toggle
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Label.BackgroundTransparency = 1.000
            Label.BorderSizePixel = 0
            Label.Position = UDim2.new(0.509966791, 0, 0.5, 0)
            Label.Size = UDim2.new(0, 277, 0, 18)
            Label.Font = Enum.Font.Gotham
            Label.Text = txt
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Label.TextScaled = true
            Label.TextSize = 14.000
            Label.TextWrapped = true
            Label.TextXAlignment = Enum.TextXAlignment.Left

            col.Parent = Toggle
            col.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            col.BorderSizePixel = 0
            col.Size = UDim2.new(0, 6, 1, 0)

            if state then
                col.BackgroundColor3 = Color3.fromRGB(0,255,0)
            else
                col.BackgroundColor3 = Color3.fromRGB(255,0,0)
            end

            Toggle.MouseButton1Click:Connect(function()
                if state then
                    state = false
                    col.BackgroundColor3 = Color3.fromRGB(255,0,0)
                else
                    state = true
                    col.BackgroundColor3 = Color3.fromRGB(0,255,0)
                end

                pcall(function()
                    cb()
                end)
            end)

            return state
        end

        function btns:textbox(txt, input, cb)
            local Textbox = Instance.new("ImageButton")
            local Input = Instance.new("TextBox")

            Textbox.Name = "Textbox"
            Textbox.Parent = Container
            Textbox.Active = false
            Textbox.AnchorPoint = Vector2.new(0.5, 0.5)
            Textbox.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
            Textbox.BorderSizePixel = 0
            Textbox.Position = UDim2.new(0.479299366, 0, 0.137184113, 0)
            Textbox.Selectable = false
            Textbox.Size = UDim2.new(0, 301, 0, 28)

            Input.Name = "Input"
            Input.Parent = Textbox
            Input.Active = false
            Input.AnchorPoint = Vector2.new(0.5, 0.5)
            Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Input.BackgroundTransparency = 1.000
            Input.BorderSizePixel = 0
            Input.Position = UDim2.new(0.5, 0, 0.5, 0)
            Input.Selectable = false
            Input.Size = UDim2.new(0, 283, 0, 18)
            Input.Font = Enum.Font.Gotham
            Input.PlaceholderText = txt
            Input.Text = ""
            Input.TextColor3 = Color3.fromRGB(255, 255, 255)
            Input.TextScaled = true
            Input.TextSize = 14.000
            Input.TextWrapped = true
            Input.TextXAlignment = Enum.TextXAlignment.Left

            Input:GetPropertyChangedSignal("Text"):Connect(function()
                pcall(function()
                    cb()
                end)
            end)
        end

        return btns
    end

    return tabs
end

return libbb
