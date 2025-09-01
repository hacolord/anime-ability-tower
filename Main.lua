local k="\110\111\111\98\95\104\97\99\111\108\111\114\100\53\48\49"
local s=Instance.new("ScreenGui",game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
s.Name="\66\114\105\110\103\75\101\121"
local f=Instance.new("Frame",s)
f.Size=UDim2.new(0,300,0,150)
f.Position=UDim2.new(0.5,-150,0.5,-75)
f.BackgroundColor3=Color3.fromRGB(50,50,80)
f.Active=true
f.Draggable=true
Instance.new("UICorner",f).CornerRadius=UDim.new(0,12)
local t=Instance.new("TextBox",f)
t.Size=UDim2.new(0.8,0,0,30)
t.Position=UDim2.new(0.1,0,0.3,0)
t.PlaceholderText="Nhập key..."
t.TextColor3=Color3.new(1,1,1)
t.BackgroundColor3=Color3.fromRGB(60,60,90)
Instance.new("UICorner",t).CornerRadius=UDim.new(0,8)
local b=Instance.new("TextButton",f)
b.Size=UDim2.new(0.4,0,0,35)
b.Position=UDim2.new(0.3,0,0.6,0)
b.Text="Xác nhận"
b.TextColor3=Color3.new(1,1,1)
b.BackgroundColor3=Color3.fromRGB(100,80,150)
Instance.new("UICorner",b).CornerRadius=UDim.new(0,10)
local l=Instance.new("TextLabel",f)
l.Size=UDim2.new(0.8,0,0,25)
l.Position=UDim2.new(0.1,0,0.1,0)
l.TextColor3=Color3.fromRGB(255,0,0)
l.BackgroundTransparency=1
l.TextScaled=true
l.Font=Enum.Font.GothamBold
l.Text="Key"
b.MouseButton1Click:Connect(function()
    if t.Text==k then
        f:Destroy()
        spawn(function()
            local p=game:GetService("Players")
            local rs=game:GetService("ReplicatedStorage")
            local lp=p.LocalPlayer
            local pg=lp:WaitForChild("PlayerGui")
            local sg=Instance.new("ScreenGui",pg)
            sg.Name="\66\114\105\110\103\71\117\105"
            local fr=Instance.new("Frame",sg)
            fr.Size=UDim2.new(0,300,0,400)
            fr.Position=UDim2.new(0.5,-150,0.4,0)
            fr.BackgroundColor3=Color3.fromRGB(50,50,80)
            fr.Active=true
            fr.Draggable=true
            Instance.new("UICorner",fr).CornerRadius=UDim.new(0,12)
            local h=Instance.new("TextLabel",fr)
            h.Size=UDim2.new(1,0,0,40)
            h.BackgroundTransparency=1
            h.Text="anime ability tower X khudandensl"
            h.TextColor3=Color3.new(1,1,1)
            h.TextScaled=true
            h.Font=Enum.Font.GothamBold
            local cb=Instance.new("TextButton",fr)
            cb.Size=UDim2.new(0,25,0,25)
            cb.Position=UDim2.new(1,-30,0,5)
            cb.Text="X"
            cb.Font=Enum.Font.GothamBold
            cb.TextScaled=true
            cb.TextColor3=Color3.new(1,1,1)
            cb.BackgroundColor3=Color3.fromRGB(180,30,30)
            Instance.new("UICorner",cb).CornerRadius=UDim.new(0,8)
            cb.MouseButton1Click:Connect(function() sg:Destroy() end)
            local mb=Instance.new("TextButton",fr)
            mb.Size=UDim2.new(0,25,0,25)
            mb.Position=UDim2.new(1,-60,0,5)
            mb.Text="_"
            mb.Font=Enum.Font.GothamBold
            mb.TextScaled=true
            mb.TextColor3=Color3.new(1,1,1)
            mb.BackgroundColor3=Color3.fromRGB(180,30,30)
            Instance.new("UICorner",mb).CornerRadius=UDim.new(0,8)
            local orb=nil
            mb.MouseButton1Click:Connect(function()
                fr.Visible=false
                if orb then orb:Destroy() end
                orb=Instance.new("TextButton",sg)
                orb.Size=UDim2.new(0,70,0,70)
                orb.Position=UDim2.new(1,-80,0,20)
                orb.BackgroundColor3=Color3.fromRGB(40,40,90)
                orb.Text="BRING"
                orb.Font=Enum.Font.Arcade
                orb.TextScaled=true
                orb.TextColor3=Color3.new(1,1,1)
                orb.Active=true
                orb.Draggable=true
                Instance.new("UICorner",orb).CornerRadius=UDim.new(1,0)
                orb.MouseButton1Click:Connect(function()
                    fr.Visible=true
                    orb:Destroy()
                end)
            end)
            local sp=nil
            local list=Instance.new("ScrollingFrame",fr)
            list.Size=UDim2.new(1,-20,0,180)
            list.Position=UDim2.new(0,10,0,50)
            list.BackgroundTransparency=1
            list.ScrollBarThickness=6
            local bring=Instance.new("TextButton",fr)
            bring.Size=UDim2.new(0.4,0,0,35)
            bring.Position=UDim2.new(0.3,0,0,240)
            bring.Text="Bring"
            bring.Font=Enum.Font.GothamBold
            bring.TextScaled=true
            bring.BackgroundColor3=Color3.fromRGB(100,80,150)
            bring.TextColor3=Color3.new(1,1,1)
            Instance.new("UICorner",bring).CornerRadius=UDim.new(0,10)
            local skillBox=Instance.new("TextBox",fr)
            skillBox.Size=UDim2.new(0.6,0,0,30)
            skillBox.Position=UDim2.new(0.2,0,0,290)
            skillBox.PlaceholderText="Nhập tên nhân vật"
            skillBox.TextColor3=Color3.new(1,1,1)
            skillBox.BackgroundColor3=Color3.fromRGB(60,60,90)
            Instance.new("UICorner",skillBox).CornerRadius=UDim.new(0,8)
            local useSkill=Instance.new("TextButton",fr)
            useSkill.Size=UDim2.new(0.4,0,0,35)
            useSkill.Position=UDim2.new(0.3,0,0,330)
            useSkill.Text="Use Skill"
            useSkill.Font=Enum.Font.GothamBold
            useSkill.TextScaled=true
            useSkill.BackgroundColor3=Color3.fromRGB(120,50,180)
            useSkill.TextColor3=Color3.new(1,1,1)
            Instance.new("UICorner",useSkill).CornerRadius=UDim.new(0,10)
            local function refList()
                list:ClearAllChildren()
                local y=0
                for _,plr in ipairs(p:GetPlayers()) do
                    if plr~=lp then
                        local btn=Instance.new("TextButton",list)
                        btn.Size=UDim2.new(1,-10,0,30)
                        btn.Position=UDim2.new(0,5,0,y)
                        btn.BackgroundColor3=Color3.fromRGB(70,70,120)
                        btn.TextColor3=Color3.new(1,1,1)
                        btn.Font=Enum.Font.Gotham
                        btn.TextScaled=true
                        btn.Text=plr.DisplayName
                        y+=35
                        btn.MouseButton1Click:Connect(function()
                            sp=plr
                            for _,c in ipairs(list:GetChildren()) do
                                if c:IsA("TextButton") then c.BackgroundColor3=Color3.fromRGB(70,70,120) end
                            end
                            btn.BackgroundColor3=Color3.fromRGB(120,120,200)
                        end)
                    end
                end
                list.CanvasSize=UDim2.new(0,0,0,y)
            end
            refList()
            p.PlayerAdded:Connect(refList)
            p.PlayerRemoving:Connect(refList)
            bring.MouseButton1Click:Connect(function()
                if sp then rs:WaitForChild("SkillEvent"):FireServer("Pain",sp) end
            end)
            useSkill.MouseButton1Click:Connect(function()
                if sp and skillBox.Text~="" then
                    rs:WaitForChild("SkillEvent"):FireServer(skillBox.Text,sp)
                end
            end)
        end)
    else
        l.Text="Key không hợp lệ!"
    end
end)
