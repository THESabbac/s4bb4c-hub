-- s4bb4c hub com abas
-- Interface moderna e separada por jogos

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local TabButtons = Instance.new("Frame")
local BloxFruitsBtn = Instance.new("TextButton")
local OutrosJogosBtn = Instance.new("TextButton")
local Pages = Instance.new("Frame")
local BloxFruitsPage = Instance.new("ScrollingFrame")
local OutrosPage = Instance.new("ScrollingFrame")

local function CreateScriptButton(parent, name, url)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 40)
    btn.Text = name
    btn.Parent = parent
    btn.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 16
    btn.Position = UDim2.new(0, 10, 0, (#parent:GetChildren()-1) * 45)
    btn.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet(url))()
    end)
end

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "s4bb4cHub"

MainFrame.Size = UDim2.new(0, 500, 0, 400)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Parent = ScreenGui
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundTransparency = 0.1

Title.Size = UDim2.new(1, 0, 0, 50)
Title.Text = "s4bb4c Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Parent = MainFrame
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.BorderSizePixel = 0

CloseButton.Size = UDim2.new(0, 40, 0, 40)
CloseButton.Position = UDim2.new(1, -45, 0, 5)
CloseButton.Text = "X"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 20
CloseButton.BorderSizePixel = 0
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

TabButtons.Size = UDim2.new(1, 0, 0, 40)
TabButtons.Position = UDim2.new(0, 0, 0, 50)
TabButtons.BackgroundTransparency = 1
TabButtons.Parent = MainFrame

BloxFruitsBtn.Size = UDim2.new(0, 250, 0, 40)
BloxFruitsBtn.Text = "Blox Fruits"
BloxFruitsBtn.Parent = TabButtons
BloxFruitsBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
BloxFruitsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
BloxFruitsBtn.BorderSizePixel = 0

OutrosJogosBtn.Size = UDim2.new(0, 250, 0, 40)
OutrosJogosBtn.Position = UDim2.new(0, 250, 0, 0)
OutrosJogosBtn.Text = "Outros Jogos"
OutrosJogosBtn.Parent = TabButtons
OutrosJogosBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
OutrosJogosBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
OutrosJogosBtn.BorderSizePixel = 0

Pages.Size = UDim2.new(1, 0, 1, -90)
Pages.Position = UDim2.new(0, 0, 0, 90)
Pages.Parent = MainFrame
Pages.BackgroundTransparency = 1

BloxFruitsPage.Size = UDim2.new(1, 0, 1, 0)
BloxFruitsPage.CanvasSize = UDim2.new(0, 0, 0, 500)
BloxFruitsPage.ScrollBarThickness = 6
BloxFruitsPage.Parent = Pages
BloxFruitsPage.Visible = true
BloxFruitsPage.BackgroundTransparency = 1
BloxFruitsPage.BorderSizePixel = 0
BloxFruitsPage.AutomaticCanvasSize = Enum.AutomaticSize.Y
BloxFruitsPage.ClipsDescendants = true
BloxFruitsPage.ScrollBarImageColor3 = Color3.fromRGB(100,100,100)

OutrosPage.Size = UDim2.new(1, 0, 1, 0)
OutrosPage.CanvasSize = UDim2.new(0, 0, 0, 500)
OutrosPage.ScrollBarThickness = 6
OutrosPage.Parent = Pages
OutrosPage.Visible = false
OutrosPage.BackgroundTransparency = 1
OutrosPage.BorderSizePixel = 0
OutrosPage.AutomaticCanvasSize = Enum.AutomaticSize.Y
OutrosPage.ClipsDescendants = true
OutrosPage.ScrollBarImageColor3 = Color3.fromRGB(100,100,100)

frederico.Size = UDim2.new(1, 0, 1, 0)
frederico.CanvasSize = UDim2.new(0, 0, 0, 500)
frederico.ScrollBarThickness = 6
frederico.Parent = Pages
frederico.Visible = false
frederico.BackgroundTransparency = 1
frederico.BorderSizePixel = 0
frederico.AutomaticCanvasSize = Enum.AutomaticSize.Y
frederico.ClipsDescendants = true
frederico.ScrollBarImageColor3 = Color3.fromRGB(100,100,100)

-- Botões de scripts para Blox Fruits
CreateScriptButton(BloxFruitsPage, "Frederico", "https://raw.githubusercontent.com/OhhMyGehlee/y/refs/heads/main/hj")
CreateScriptButton(BloxFruitsPage, "O frederico", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(BloxFruitsPage, "the fred", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(BloxFruitsPage, "Script x3", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(BloxFruitsPage, "Script x3", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(BloxFruitsPage, "Script 34", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")

-- Botões de scripts para outros jogos (exemplo)
CreateScriptButton(OutrosPage, "MM2 Auto Farm", "https://raw.githubusercontent.com/username/repo/main/mm2.lua")
CreateScriptButton(OutrosPage, "Doors GUI", "https://raw.githubusercontent.com/username/repo/main/doorsgui.lua")

CreateScriptButton(frederico, "MM2 Auto Farm", "https://raw.githubusercontent.com/username/repo/main/mm2.lua")
CreateScriptButton(frederico, "Doors GUI", "https://raw.githubusercontent.com/username/repo/main/doorsgui.lua")

-- Alternar entre abas
BloxFruitsBtn.MouseButton1Click:Connect(function()
    BloxFruitsPage.Visible = true
    OutrosPage.Visible = false
    frederico.Visible = false
end)

OutrosJogosBtn.MouseButton1Click:Connect(function()
    BloxFruitsPage.Visible = false
    OutrosPage.Visible = true
    frederico.Visible = true
end)
