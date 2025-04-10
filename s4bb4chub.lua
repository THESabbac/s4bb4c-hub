-- s4bb4c hub com abas
-- Interface moderna e separada por jogos

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local Pages = Instance.new("Frame")
local ScriptsPage = Instance.new("ScrollingFrame")

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

Pages.Size = UDim2.new(1, 0, 1, -60)
Pages.Position = UDim2.new(0, 0, 0, 60)
Pages.Parent = MainFrame
Pages.BackgroundTransparency = 1

ScriptsPage.Size = UDim2.new(1, 0, 1, 0)
ScriptsPage.CanvasSize = UDim2.new(0, 0, 0, 500)
ScriptsPage.ScrollBarThickness = 6
ScriptsPage.Parent = Pages
ScriptsPage.Visible = true
ScriptsPage.BackgroundTransparency = 1
ScriptsPage.BorderSizePixel = 0
ScriptsPage.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScriptsPage.ClipsDescendants = true
ScriptsPage.ScrollBarImageColor3 = Color3.fromRGB(100,100,100)

-- Botões de scripts unificados
CreateScriptButton(ScriptsPage, "jorgin", "https://raw.githubusercontent.com/OhhMyGehlee/y/refs/heads/main/hj")
CreateScriptButton(ScriptsPage, "O frederico", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(ScriptsPage, "the fred", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(ScriptsPage, "Script x3", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(ScriptsPage, "Script x3", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(ScriptsPage, "Script 34", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
CreateScriptButton(ScriptsPage, "MM2 Auto Farm", "https://raw.githubusercontent.com/username/repo/main/mm2.lua")
CreateScriptButton(ScriptsPage, "Doors GUI", "https://raw.githubusercontent.com/username/repo/main/doorsgui.lua")
