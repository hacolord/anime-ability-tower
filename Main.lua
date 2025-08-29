local Xj1 = game:GetService("Players")
local Yq2 = game:GetService("TweenService")
local Zp3 = game:GetService("ReplicatedStorage")
local Qw4 = Xj1.LocalPlayer
local Er5 = Qw4:WaitForChild("PlayerGui")

local UiG = Instance.new("ScreenGui")
UiG.Name = "BringGui"
UiG.ResetOnSpawn = false
UiG.IgnoreGuiInset = true
UiG.Parent = Er5

local Fr6 = Instance.new("Frame")
Fr6.Size = UDim2.new(0,300,0,400)
Fr6.Position = UDim2.new(0.5,-150,0.4,0)
Fr6.BackgroundColor3 = Color3.fromRGB(50,50,80)
Fr6.Active = true
Fr6.Draggable = true
Fr6.Parent = UiG
Instance.new("UICorner", Fr6).CornerRadius = UDim.new(0,12)

local Hd7 = Instance.new("TextLabel")
Hd7.Size = UDim2.new(1,0,0,40)
Hd7.BackgroundTransparency = 1
Hd7.Text = "anime ability tower X khudandensl"
Hd7.TextColor3 = Color3.new(1,1,1)
Hd7.TextScaled = true
Hd7.Font = Enum.Font.GothamBold
Hd7.Parent = Fr6

local Cl8 = Instance.new("TextButton")
Cl8.Size = UDim2.new(0,25,0,25)
Cl8.Position = UDim2.new(1,-30,0,5)
Cl8.Text = "X"
Cl8.Font = Enum.Font.GothamBold
Cl8.TextScaled = true
Cl8.TextColor3 = Color3.new(1,1,1)
Cl8.BackgroundColor3 = Color3.fromRGB(180,30,30)
Cl8.Parent = Fr6
Instance.new("UICorner", Cl8).CornerRadius = UDim.new(0,8)
Cl8.MouseButton1Click:Connect(function() UiG:Destroy() end)

local Mn9 = Instance.new("TextButton")
Mn9.Size = UDim2.new(0,25,0,25)
Mn9.Position = UDim2.new(1,-60,0,5)
Mn9.Text = "–"
Mn9.Font = Enum.Font.GothamBold
Mn9.TextScaled = true
Mn9.TextColor3 = Color3.new(1,1,1)
Mn9.BackgroundColor3 = Color3.fromRGB(180,30,30)
Mn9.Parent = Fr6
Instance.new("UICorner", Mn9).CornerRadius = UDim.new(0,8)

local Sc10 = Instance.new("ScrollingFrame")
Sc10.Size = UDim2.new(1,-20,0,180)
Sc10.Position = UDim2.new(0,10,0,50)
Sc10.BackgroundTransparency = 1
Sc10.ScrollBarThickness = 6
Sc10.Parent = Fr6

local Br11 = Instance.new("TextButton")
Br11.Size = UDim2.new(0.4,0,0,35)
Br11.Position = UDim2.new(0.3,0,0,240)
Br11.Text = "Bring"
Br11.Font = Enum.Font.GothamBold
Br11.TextScaled = true
Br11.BackgroundColor3 = Color3.fromRGB(100,80,150)
Br11.TextColor3 = Color3.fromRGB(1,1,1)
Br11.Parent = Fr6
Instance.new("UICorner", Br11).CornerRadius = UDim.new(0,10)

local Sk12 = Instance.new("TextBox")
Sk12.Size = UDim2.new(0.6,0,0,30)
Sk12.Position = UDim2.new(0.2,0,0,290)
Sk12.PlaceholderText = "Nhập tên skill..."
Sk12.TextColor3 = Color3.new(1,1,1)
Sk12.BackgroundColor3 = Color3.fromRGB(60,60,90)
Sk12.ClearTextOnFocus = false
Sk12.Parent = Fr6
Instance.new("UICorner", Sk12).CornerRadius = UDim.new(0,8)

local Us13 = Instance.new("TextButton")
Us13.Size = UDim2.new(0.4,0,0,35)
Us13.Position = UDim2.new(0.3,0,0,330)
Us13.Text = "Use Skill"
Us13.Font = Enum.Font.GothamBold
Us13.TextScaled = true
Us13.BackgroundColor3 = Color3.fromRGB(120,50,180)
Us13.TextColor3 = Color3.new(1,1,1)
Us13.Parent = Fr6
Instance.new("UICorner", Us13).CornerRadius = UDim.new(0,10)

local selPl = nil
local mini = false
local origPos = Fr6.Position
local orb = nil

local function updateList()
    Sc10:ClearAllChildren()
    local y = 0
    for _, pl in ipairs(Xj1:GetPlayers()) do
        if pl ~= Qw4 then
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(1,-10,0,30)
            btn.Position = UDim2.new(0,5,0,y)
            btn.BackgroundColor3 = Color3.fromRGB(70,70,120)
            btn.TextColor3 = Color3.new(1,1,1)
            btn.Font = Enum.Font.Gotham
            btn.TextScaled = true
            btn.Text = pl.DisplayName
            btn.Parent = Sc10
            y += 35
            btn.MouseButton1Click:Connect(function()
                selPl = pl
                for _, ch in ipairs(Sc10:GetChildren()) do
                    if ch:IsA("TextButton") then
                        ch.BackgroundColor3 = Color3.fromRGB(70,70,120)
                    end
                end
                btn.BackgroundColor3 = Color3.fromRGB(120,120,200)
            end)
        end
    end
    Sc10.CanvasSize = UDim2.new(0,0,0,y)
end

updateList()
Xj1.PlayerAdded:Connect(updateList)
Xj1.PlayerRemoving:Connect(updateList)

Br11.MouseButton1Click:Connect(function()
    if not selPl then return end
    Zp3:WaitForChild("SkillEvent"):FireServer("Pain", selPl)
end)

Us13.MouseButton1Click:Connect(function()
    if not selPl then return end
    local skillName = Sk12.Text
    if skillName == "" then return end
    Zp3:WaitForChild("SkillEvent"):FireServer(skillName, selPl)
end)

Mn9.MouseButton1Click:Connect(function()
    if mini then return end
    mini = true
    origPos = Fr6.Position
    Yq2:Create(Fr6,TweenInfo.new(0.4),{
        Position = UDim2.new(1,10,0,-500),
        Size = UDim2.new(0,0,0,0),
        BackgroundTransparency = 1
    }):Play()
    task.wait(0.4)
    Fr6.Visible=false
    if orb then orb:Destroy() end
    orb = Instance.new("TextButton")
    orb.Size = UDim2.new(0,70,0,70)
    orb.Position = UDim2.new(1,-80,0,20)
    orb.BackgroundColor3 = Color3.fromRGB(40,40,90)
    orb.Text = "BRING"
    orb.Font = Enum.Font.Arcade
    orb.TextScaled = true
    orb.TextColor3 = Color3.new(1,1,1)
    orb.Active = true
    orb.Draggable = true
    orb.Parent = UiG
    Instance.new("UICorner", orb).CornerRadius = UDim.new(1,0)
    orb.MouseButton1Click:Connect(function()
        if not mini then return end
        Fr6.Visible = true
        Yq2:Create(Fr6,TweenInfo.new(0.4),{Position = origPos, Size = UDim2.new(0,300,0,400), BackgroundTransparency = 0}):Play()
        orb:Destroy()
        mini = false
    end)
end)

local Nt14 = Instance.new("TextLabel")
Nt14.Size = UDim2.new(0,220,0,25)
Nt14.Position = UDim2.new(0.5,-110,0,5)
Nt14.BackgroundTransparency = 1
Nt14.TextColor3 = Color3.fromRGB(255,255,255)
Nt14.Font = Enum.Font.GothamBold
Nt14.TextScaled = true
Nt14.Text = "Say ;tpend to go to the end!"
Nt14.Parent = UiG
