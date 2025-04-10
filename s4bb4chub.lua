-- s4bb4c hub - Hub de Scripts para Blox Fruits com Scroll e Botão de Fechar

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- GUI principal
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "s4bb4cHub"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Frame principal
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 12)

-- Título
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, -40, 0, 40)
Title.Position = UDim2.new(0, 20, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "🌟 s4bb4c hub 🌟"
Title.TextColor3 = Color3.fromRGB(170, 130, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22

-- Botão de fechar
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundColor3 = Color3.fromRGB(50, 20, 60)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 16
CloseBtn.Parent = Frame

local closeCorner = Instance.new("UICorner", CloseBtn)
closeCorner.CornerRadius = UDim.new(0, 6)

CloseBtn.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

-- ScrollHolder
local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Size = UDim2.new(1, -40, 1, -60)
ScrollFrame.Position = UDim2.new(0, 20, 0, 50)
ScrollFrame.BackgroundTransparency = 1
ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollFrame.ScrollBarThickness = 6
ScrollFrame.Parent = Frame

-- Layout para botões
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ScrollFrame

-- Atualiza o tamanho do scroll automaticamente
UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
end)

-- Função para criar botões
local function createButton(text, url)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, 0, 0, 40)
	button.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Text = text
	button.Font = Enum.Font.Gotham
	button.TextSize = 16
	button.BorderSizePixel = 0
	button.Parent = ScrollFrame

	local btnCorner = Instance.new("UICorner", button)
	btnCorner.CornerRadius = UDim.new(0, 10)

	button.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet(url))()
	end)
end

-- Botões de exemplo
createButton("🔮 Script Arise", "https://raw.githubusercontent.com/OhhMyGehlee/y/refs/heads/main/hj")
createButton("⚡ Speed Hub X", "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua")
createButton("🌀 Script Zhang", "https://raw.githubusercontent.com/ZhangJunZ84/twvz/refs/heads/main/arisecrossover.lua")
