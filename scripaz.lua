local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Crear ventana principal
local Window = Fluent:CreateWindow({
    Title = "Axel Hub | Slap Tower 😈",
    SubTitle = "By Axel 😎",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Tab Principal
local MainTab = Window:AddTab({ Title = "Principal", Icon = "home" })

MainTab:AddButton({
    Title = "🚀 Ir al Botón Troll",
    Description = "Te lleva al botón secreto",
    Callback = function()
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            char.HumanoidRootPart.CFrame = CFrame.new(32, 171, 99)
        end
    end
})

MainTab:AddButton({
    Title = "🏁 Ir al Final del Juego",
    Description = "Ganale a todos volando 😈",
    Callback = function()
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            char.HumanoidRootPart.CFrame = CFrame.new(-174, 771, 54)
        end
    end
})

-- Tab Scripts
local ScriptsTab = Window:AddTab({ Title = "Scripts", Icon = "file-box" })

ScriptsTab:AddButton({
    Title = "🌟 Activar Infinite Jump",
    Description = "Salta infinitamente",
    Callback = function()
        game:GetService("UserInputService").JumpRequest:Connect(function()
            local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if hum then hum:ChangeState("Jumping") end
        end)
    end
})

ScriptsTab:AddButton({
    Title = "⚡ Activar Speed",
    Description = "Correr más rápido",
    Callback = function()
        local hum = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if hum then hum.WalkSpeed = 100 end
    end
})

-- Tab Info
local InfoTab = Window:AddTab({ Title = "Info", Icon = "info" })

InfoTab:AddParagraph({
    Title = "📦 Granito de arena",
    Content = "Gracias por usar Axel Hub 😎"
})

InfoTab:AddInput({
    Title = "GitHub:",
    Default = "https://github.com/axelzScripts",
    Placeholder = "Link de GitHub",
    ButtonText = "Copiar",
    Callback = function(text)
        setclipboard(text)
        Fluent:Notify({
            Title = "📋 Copiado",
            Content = "¡GitHub copiado al portapapeles!",
            Duration = 3
        })
    end
})

InfoTab:AddInput({
    Title = "YouTube:",
    Default = "https://www.youtube.com/@AxellVisualST",
    Placeholder = "Canal de YouTube",
    ButtonText = "Copiar",
    Callback = function(text)
        setclipboard(text)
        Fluent:Notify({
            Title = "📋 Copiado",
            Content = "¡YouTube copiado al portapapeles!",
            Duration = 3
        })
    end
})

-- Notificación
Fluent:Notify({
    Title = "Axel Hub",
    Content = "El script se ha cargado correctamente",
    Duration = 5
})
