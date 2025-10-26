-- Made by Vexo440 💙
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local cam = workspace.CurrentCamera

-- شاشة تحميل
local loadingGui = Instance.new("ScreenGui", game.CoreGui)
loadingGui.IgnoreGuiInset = true

local loadingFrame = Instance.new("Frame", loadingGui)
loadingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
loadingFrame.Size = UDim2.new(1, 0, 1, 0)

local loadingText = Instance.new("TextLabel", loadingFrame)
loadingText.Text = "Loading..."
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.Font = Enum.Font.GothamBold
loadingText.TextSize = 30
loadingText.Size = UDim2.new(1, 0, 0.1, 0)
loadingText.Position = UDim2.new(0, 0, 0.45, 0)
loadingText.BackgroundTransparency = 1

local creditText = Instance.new("TextLabel", loadingFrame)
creditText.Text = "By Vexo440"
creditText.TextColor3 = Color3.fromRGB(180, 180, 180)
creditText.Font = Enum.Font.Gotham
creditText.TextSize = 18
creditText.Size = UDim2.new(1, 0, 0.05, 0)
creditText.Position = UDim2.new(0, 0, 0.53, 0)
creditText.BackgroundTransparency = 1

wait(3)
loadingGui:Destroy()

-- بعد شاشة التحميل
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "VexoGUI"
gui.ResetOnSpawn = false

-- زر 🍩
local toggleButton = Instance.new("TextButton", gui)
toggleButton.Text = "🍩"
toggleButton.Size = UDim2.new(0, 40, 0, 40)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 200, 200)
toggleButton.Draggable = true
toggleButton.Active = true

-- GUI 2
local gui2 = Instance.new("Frame", gui)
gui2.Size = UDim2.new(0, 300, 0, 300)
gui2.Position = UDim2.new(0.5, -150, 0.5, -150)
gui2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
gui2.Visible = false
gui2.Draggable = true
gui2.Active = true

-- عنوان
local title = Instance.new("TextLabel", gui2)
title.Text = "🎯 Aimbot Control Panel"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 40)

-- زر تشغيل/إيقاف Aimbot
local aimbotEnabled = false
local aimbotBtn = Instance.new("TextButton", gui2)
aimbotBtn.Text = "Toggle Aimbot: OFF"
aimbotBtn.Position = UDim2.new(0, 10, 0, 50)
aimbotBtn.Size = UDim2.new(0, 280, 0, 30)
aimbotBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
aimbotBtn.TextColor3 = Color3.new(1,1,1)
aimbotBtn.MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled
    aimbotBtn.Text = "Toggle Aimbot: " .. (aimbotEnabled and "ON" or "OFF")
end)

-- سرعة Aimbot
local speed = 0.2
local speedLabel = Instance.new("TextLabel", gui2)
speedLabel.Text = "Speed: " .. tostring(speed)
speedLabel.Position = UDim2.new(0, 10, 0, 90)
speedLabel.Size = UDim2.new(0, 280, 0, 25)
speedLabel.BackgroundTransparency = 1
speedLabel.TextColor3 = Color3.new(1,1,1)

local increase = Instance.new("TextButton", gui2)
increase.Text = "➕"
increase.Position = UDim2.new(0, 10, 0, 120)
increase.Size = UDim2.new(0, 50, 0, 30)
increase.BackgroundColor3 = Color3.fromRGB(80,80,80)
increase.TextColor3 = Color3.new(1,1,1)
increase.MouseButton1Click:Connect(function()
    speed += 0.05
    speedLabel.Text = "Speed: " .. tostring(speed)
end)

local decrease = Instance.new("TextButton", gui2)
decrease.Text = "➖"
decrease.Position = UDim2.new(0, 70, 0, 120)
decrease.Size = UDim2.new(0, 50, 0, 30)
decrease.BackgroundColor3 = Color3.fromRGB(80,80,80)
decrease.TextColor3 = Color3.new(1,1,1)
decrease.MouseButton1Click:Connect(function()
    speed = math.max(0.01, speed - 0.05)
    speedLabel.Text = "Speed: " .. tostring(speed)
end)

-- Super Mod
local superMod = false
local superBtn = Instance.new("TextButton", gui2)
superBtn.Text = "🧠 Super Mod: OFF"
superBtn.Position = UDim2.new(0, 10, 0, 160)
superBtn.Size = UDim2.new(0, 280, 0, 30)
superBtn.BackgroundColor3 = Color3.fromRGB(90,90,90)
superBtn.TextColor3 = Color3.new(1,1,1)
superBtn.MouseButton1Click:Connect(function()
    superMod = not superMod
    superBtn.Text = "🧠 Super Mod: " .. (superMod and "ON" or "OFF")
end)

-- ESP
local espEnabled = false
local espBtn = Instance.new("TextButton", gui2)
espBtn.Text = "👀 Toggle ESP: OFF"
espBtn.Position = UDim2.new(0, 10, 0, 200)
espBtn.Size = UDim2.new(0, 280, 0, 30)
espBtn.BackgroundColor3 = Color3.fromRGB(100,100,100)
espBtn.TextColor3 = Color3.new(1,1,1)
espBtn.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    espBtn.Text = "👀 Toggle ESP: " .. (espEnabled and "ON" or "OFF")
end)

-- TikTok
local credit = Instance.new("TextLabel", gui2)
credit.Text = "TikTok: Vexo440"
credit.TextColor3 = Color3.fromRGB(255,255,255)
credit.Font = Enum.Font.Gotham
credit.TextSize = 14
credit.Size = UDim2.new(1, 0, 0, 20)
credit.Position = UDim2.new(0, 0, 1, -25)
credit.BackgroundTransparency = 1

-- Toggle الزر
toggleButton.MouseButton1Click:Connect(function()
    gui2.Visible = not gui2.Visible
end)

-- AIMBOT لحق الراس
game:GetService("RunService").RenderStepped:Connect(function()
    if aimbotEnabled or superMod then
        local closest, dist = nil, math.huge
        for _, p in pairs(game.Players:GetPlayers()) do
            if p ~= player and p.Character and p.Character:FindFirstChild("Head") then
                local pos = p.Character.Head.Position
                local screen, onScreen = cam:WorldToViewportPoint(pos)
                if (onScreen or superMod) and (player.Character and player.Character:FindFirstChild("Head")) then
                    local myHead = player.Character.Head.Position
                    local d = (myHead - pos).Magnitude
                    if d < dist then
                        dist = d
                        closest = p.Character.Head
                    end
                end
            end
        end
        if closest then
            cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, closest.Position), speed)
        end
    end
end)

-- ESP
local function createESP(char)
    if char:FindFirstChild("Head") and not char.Head:FindFirstChild("ESP") then
        local box = Instance.new("BillboardGui", char.Head)
        box.Name = "ESP"
        box.Size = UDim2.new(0, 100, 0, 20)
        box.AlwaysOnTop = true
        box.StudsOffset = Vector3.new(0, 2, 0)
        local name = Instance.new("TextLabel", box)
        name.Size = UDim2.new(1, 0, 1, 0)
        name.BackgroundTransparency = 1
        name.Text = char.Name
        name.TextColor3 = Color3.new(1,0,0)
        name.TextStrokeTransparency = 0.5
        name.Font = Enum.Font.GothamBold
        name.TextSize = 14
    end
end

game.Players.PlayerAdded:Connect(function(p)
    p.CharacterAdded:Connect(function(char)
        if espEnabled then
            wait(1)
            createESP(char)
        end
    end)
end)

for _, p in pairs(game.Players:GetPlayers()) do
    if p.Character and espEnabled then
        createESP(p.Character)
    end
end
