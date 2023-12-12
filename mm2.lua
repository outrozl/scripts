----------------------------- MM2 ------------------------------------------

function LoadMe(link)
    loadstring(game:HttpGet(link))()
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local pl = game.Players.LocalPlayer.Name

local Window = Rayfield:CreateWindow({
    Name = "Nev MM2 Scripts",
    LoadingTitle = "Cargando",
    LoadingSubtitle = "by nev_zc",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = true, -- Create a custom folder for your hub/game
       FileName = "Nevsoftwares"
    },
    Discord = {
       Enabled = true,
       Invite = "saYwJbFapj", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Nev Scripts",
       Subtitle = "Key System",
       Note = "unete al servidor de discord https://discord.gg/saYwJbFapj",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"3943849183213213w5655dffhgy"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

Rayfield:Notify({
    Title = "Welcome, "..pl,
    Content = "Bienvenido "..pl.." a Nev Scripts",
    Duration = 6.5,
    Image = 4483362458,
    Actions = { -- Notification Buttons
       Ignore = {
          Name = "Skip",
          Callback = function()
          print("skipped")
       end
    },
},
})

local hubs = Window:CreateTab("Hubs", 6034275800) -- Title, Image

local Section = hubs:CreateSection("hubs")

local Button = Hubs:CreateButton({
    Name = "Furky Hub",
    Callback = function()
        LoadMe(https://raw.githubusercontent.com/UltraStuff/scripts2/main/mm2)
    end,
})

local main = Window:CreateTab("Scripts", 6034275725) -- Title, Image

local Section = main:CreateSection("Scripts")

local Button = main:CreateButton({
    Name = "#1 Eclipse Hub",
    Callback = function()
        getgenv().mainKey = "nil"

        local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https\58//api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
    end,
})

local Button = main:CreateButton({
    Name = "OP Space Hub",
    Callback = function()
        LoadMe('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/SpaceHubLoader')
    end,
})

local Button = main:CreateButton({
    Name = "Drifter's UI",
    Callback = function()
        LoadMe('https://raw.githubusercontent.com/Drifter0507/GUIS/main/MURDER%20MYSTERY%202')
    end,
})

local Button = main:CreateButton({
    Name = "Jens Hub",
    Callback = function()
        getgenv().Key = "f15aa574362f44fa928ca43ab00952f4";
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\106\101\110\115\100\101\118\101\108\111\112\101\114\47\74\101\110\115\72\117\98\47\109\97\105\110\47\83\99\114\105\112\116\34\41\41\40\41\10")()
		end
    end,
})

local Button = main:CreateButton({
    Name = "Vinixus Hub",
    Callback = function()
        LoadMe('loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()')
    end,
})

local settings = Window:CreateTab("Configuraciones", 6035181868) -- Title, Image

local Section = settings:CreateSection("Informacion")

local Label = settings:CreateLabel("Script hecho en 3 segundos")

local Label = settings:CreateLabel("Desarollado por Nev")

local Label = settings:CreateLabel("UI Library: Rayfield")

local Button = settings:CreateButton({
    Name = "Discord",
    Callback = function()
        setclipboard("https://discord.gg/saYwJbFapj")
        Rayfield:Notify({
            Title = "Link de discord copiado",
            Content = "Tambien encontraras la clave :>",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Skip",
                  Callback = function()
                  print("skipped")
               end
            },
        },
        })
    end,
})

local Button = settings:CreateButton({
    Name = "Matar Interfaz (Nev Scripts)",
    Callback = function()
        Rayfield:Notify({
            Title = "¿Estas seguro de matar la interfaz?",
            Content = "¡ESTA NOTIFICIACION DURA 30 SEGUNDOS!",
            Duration = 30,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Matar interfaz (Instantaneo)",
                  Callback = function()
                    Rayfield:Destroy()
               end
            },
        },
        })
    end,
})
