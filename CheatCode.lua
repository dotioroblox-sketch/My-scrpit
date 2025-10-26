-- Loader + GUI toolkit (Delta / common exploits)
local RAW = "https://raw.githubusercontent.com/dotioroblox-sketch/My-scrpit/d3943b3265adf33d8e107af5665aa2c605fc3218/Robloxscript.lua"
pcall(function()
    local ok,body = pcall(function() return game:HttpGet(RAW) end)
    if ok and type(body)=="string" and #body>0 then
        _G.RemoteScriptText = body
    end
end)

-- خدمات
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local CoreGui = game:GetService("CoreGui")

-- إعداد GUI
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "Vexo440_GUI"
ScreenGui.ResetOnSpawn = false

local function makeFrame()
    local f = Instance.new("Frame")
    f.Size = UDim2.new(0,320,0,380)
    f.Position = UDim2.new(0.5,-160,0.3,-190)
    f.BackgroundTransparency = 0.12
    f.BorderSizePixel = 0
    f.ClipsDescendants = true
    f.Parent = ScreenGui
    return f
end

local function makeButton(parent, txt, pos, size)
    local b = Instance.new("TextButton")
    b.Text = txt
    b.Size = size or UDim2.new(0,140,0,36)
    b.Position = pos
    b.BackgroundTransparency = 0.15
    b.Parent = parent
    return b
end

local function makeLabel(parent, txt, pos)
    local l = Instance.new("TextLabel")
    l.Text = txt
    l.Size = UDim2.new(0,140,0,28)
    l.Position = pos
    l.BackgroundTransparency = 1
    l.Parent = parent
    return l
end

-- نافذة رئيسية
local main = makeFrame()
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1,0,0,32)
title.Text = "TikTok: Vexo440"
title.BackgroundTransparency = 1

-- زر فتح/اغلاق صغير
local toggleBtn = Instance.new("TextButton", main)
toggleBtn.Size = UDim2.new(0,36,0,36)
toggleBtn.Position = UDim2.new(1,-42,0,4)
toggleBtn.Text = "🦈"
toggleBtn.BackgroundTransparency = 0.2

-- زر التصغير/الإخفاء
local minimizeBtn = Instance.new("TextButton", main)
minimizeBtn.Size = UDim2.new(0,36,0,36)
minimizeBtn.Position = UDim2.new(1,-80,0,4)
minimizeBtn.Text = "-"
minimizeBtn.BackgroundTransparency = 0.2

local content = Instance.new("Frame", main)
content.Position = UDim2.new(0,8,0,40)
content.Size = UDim2.new(1,-16,1,-48)
content.BackgroundTransparency = 1

-- عناصر التحكم
local aimbotToggle = makeButton(content, "Aimbot: OFF", UDim2.new(0,8,0,4))
local speedLabel = makeLabel(content, "Speed: 6", UDim2.new(0,160,0,4))
local speedDown = makeButton(content, "-", UDim2.new(0,8,0,44), UDim2.new(0,64,0,32))
local speedUp = makeButton(content, "+", UDim2.new(0,78,0,44), UDim2.new(0,64,0,32))
local superToggle = makeButton(content, "SuperMod: OFF", UDim2.new(0,8,0,84))
local espToggle = makeButton(content, "ESP: OFF", UDim2.new(0,8,0,124))
local reachBtn = makeButton(content, "Reach 30m (Toggle)", UDim2.new(0,8,0,164))
local idBtn = makeButton(content, "قائمة تعريف", UDim2.new(0,8,0,204))

-- قابل للسحب
local dragging, dragInput, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
main.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = main.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
main.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

-- حالة الميزات
local state = {
    aimbot = false,
    speed = 6,
    super = false,
    esp = false,
    reach = false
}

-- أزرار التحكم
aimbotToggle.MouseButton1Click:Connect(function()
    state.aimbot = not state.aimbot
    aimbotToggle.Text = "Aimbot: " .. (state.aimbot and "ON" or "OFF")
end)
speedDown.MouseButton1Click:Connect(function()
    state.speed = math.max(1, state.speed - 1)
    speedLabel.Text = "Speed: " .. state.speed
end)
speedUp.MouseButton1Click:Connect(function()
    state.speed = state.speed + 1
    speedLabel.Text = "Speed: " .. state.speed
end)
superToggle.MouseButton1Click:Connect(function()
    state.super = not state.super
    superToggle.Text = "SuperMod: " .. (state.super and "ON" or "OFF")
end)
espToggle.MouseButton1Click:Connect(function()
    state.esp = not state.esp
    espToggle.Text = "ESP: " .. (state.esp and "ON" or "OFF")
end)
reachBtn.MouseButton1Click:Connect(function()
    state.reach = not state.reach
    reachBtn.Text = state.reach and "Reach 30m: ON" or "Reach 30m (Toggle)"
end)
idBtn.MouseButton1Click:Connect(function()
    local popup = Instance.new("Frame", ScreenGui)
    popup.Size = UDim2.new(0,260,0,100)
    popup.Position = UDim2.new(0.5,-130,0.15,0)
    local t = Instance.new("TextLabel", popup)
    t.Size = UDim2.new(1,0,1,0)
    t.Text = "TikTok: Vexo440"
    t.BackgroundTransparency = 0.15
    delay(3, function() popup:Destroy() end)
end)
toggleBtn.MouseButton1Click:Connect(function()
    ScreenGui.Enabled = not ScreenGui.Enabled
end)

-- زر التصغير/الإخفاء
local minimized = false
minimizeBtn.MouseButton1Click:Connect(function()
    if minimized then
        content.Size = UDim2.new(1,-16,1,-48)
        minimized = false
    else
        content.Size = UDim2.new(0,0,0,0)
        minimized = true
    end
end)

-- أقرب لاعب
local function getClosest()
    local best, bestDist = nil, math.huge
    for _,plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer and plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("HumanoidRootPart") then
            local head = plr.Character:FindFirstChild("Head")
            if head then
                local dist = (Camera.CFrame.Position - head.Position).Magnitude
                if dist < bestDist then
                    bestDist = dist
                    best = plr
                end
            end
        end
    end
    return best, bestDist
end

-- Aimbot
RunService.RenderStepped:Connect(function(dt)
    if state.aimbot then
        local target = getClosest()
        if target and target.Character and target.Character:FindFirstChild("Head") then
            local head = target.Character.Head
            local targetCFrame = CFrame.new(Camera.CFrame.Position, head.Position)
            local lerpSpeed = state.speed * (state.super and 6 or 1)
            Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, math.clamp(lerpSpeed * dt * 0.6,0,1))
        end
    end
end)

-- ESP
local highlights = {}
local function updateESP()
    for _,p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("Humanoid") then
            if state.esp then
                if not highlights[p] then
                    local hl = Instance.new("Highlight")
                    hl.Parent = p.Character
                    hl.Adornee = p.Character
                    hl.FillTransparency = 0.7
                    hl.OutlineTransparency = 0
                    hl.Name = "VexESP"
                    hl.OutlineColor = Color3.fromRGB(255,0,0)
                    highlights[p] = hl

                    local bill = Instance.new("BillboardGui", p.Character.Head)
                    bill.Size = UDim2.new(0,100,0,40)
                    bill.AlwaysOnTop = true
                    local lbl = Instance.new("TextLabel", bill)
                    lbl.Size = UDim2.new(1,0,1,0)
                    lbl.BackgroundTransparency = 1
                    lbl.Text = p.Name
                    lbl.TextScaled = true
                    lbl.TextStrokeTransparency = 0
                    lbl.TextColor3 = Color3.new(1,1,1)
                end
            else
                if highlights[p] then
                    pcall(function() highlights[p]:Destroy() end)
                    highlights[p] = nil
                end
                if p.Character and p.Character:FindFirstChild("Head") then
                    for _,c in pairs(p.Character.Head:GetChildren()) do
                        if c:IsA("BillboardGui") then pcall(function() c:Destroy() end) end
                    end
                end
            end
        end
    end
end
RunService.Heartbeat:Connect(updateESP)

-- Reach
local function doReach()
    if not state.reach then return end
    local origin = Camera.CFrame.Position
    local dir = Camera.CFrame.LookVector * 30
    local ray = Ray.new(origin, dir)
    local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, {LocalPlayer.Character or {}})
    if hit then
        local humanoid = hit.Parent:FindFirstChildWhichIsA("Humanoid") or hit.Parent.Parent and hit.Parent.Parent:FindFirstChildWhichIsA("Humanoid")
        if humanoid then
            pcall(function() humanoid:TakeDamage(10) end)
        end
    end
end
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.E then
        doReach()
    end
end)

-- تشغيل الواجهة
ScreenGui.Enabled = true
