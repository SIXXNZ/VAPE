local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Vape Admin by Sixx",
    Style = 3,
    SizeX = 500,
    SizeY = 350,
    Theme = "Dark",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(35,35,35)
    }
})

local Y = X.New({
    Title = "VAPE MAIN"
})

local A = Y.Button({
    Text = "DUPE V2",
    Callback = function()
        if Type == "Start Dataloss" then
                    local args = {
                        [1] = "\0" .. string.rep("B", 4200000)
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("SetTutorialDone"):FireServer(unpack(args))
                    game:GetService("ReplicatedStorage").Remote.SaveTeam:FireServer(unpack(args))
            TextField:SetText("Started")
        elseif Type == "Undo Dataloss" then
            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.MainGui.Pets.TeamsList.Main.Scroll:GetDescendants()) do
                if v.Name == "TeamName" and v.Text == "AFS_Is_Dogshit" then
                    local args = {
                        [1] = v.Parent.LayoutOrder
                    }

                    game:GetService("ReplicatedStorage").Remote.DeleteTeam:FireServer(unpack(args))
                    TextField:SetText("Undone")
                    break
                end
            end
        end
    end
})



local D = Y.Dropdown({
    Text = "Dupar",
    Callback = function(Value)
        getgenv().Type = Value
    end,
    Options = {
        "Start Dataloss",
        "Undo Dataloss"
    }
})

getgenv().TextField = Y.TextField({
    Text = "Status",
    Type = "Default"
})

local D2 = Y.Button({
    Text = "PLATINIUM",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZaRdoOx/Loader/main/PlatiniumLoader"))()
    end
})

local D3 = Y.Button({
    Text = "AFK",
    Callback = function()
        wait(0.5)local ba=Instance.new("ScreenGui")
        local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
        local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
        ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
        ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
        ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
        ca.Font=Enum.Font.SourceSansSemibold;ca.Text="VAPE AFK"ca.TextColor3=Color3.new(0,1,1)
        ca.TextSize=22;da.Parent=ca
        da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
        da.Size=UDim2.new(0,370,0,107)_b.Parent=da
        _b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
        _b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="by Sixx"
        _b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
        ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
        ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
        ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
        game:service'Players'.LocalPlayer.Idled:connect(function()
        bb:CaptureController()bb:ClickButton2(Vector2.new())
        ab.Text="VAPE"wait(2)ab.Text="Status : Active"end)
    end
})

while task.wait() do
    if Type then
        A:SetText(Type)
    end
end


