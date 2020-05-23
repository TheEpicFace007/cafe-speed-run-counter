set_thread_context(6)
local Roact = getrenv().require(game:GetService("CorePackages")["Packages"]["_Index"]["roblox_roact"]["roact"])

function create_bg(props)
    local height = props.height

    return Roact.createElement("Frame", {
        BackgroundColor3 = Color3.fromRGB(40, 53, 147);
        BorderSizePixel = 2;
        BorderColor3 = Color3.fromRGB(83, 109, 254);
        Size = UDim2.fromScale(0.1,height);
        Position = UDim2.fromScale(0.8,0.3);
        AnchorPoint = Vector2.new(0.8,0.3)
    }, {
    Title = Roact.createElement("TextLabel", {
        AnchorPoint = Vector2.new(0.5,1);
        Position = UDim2.fromScale(0.5,0.15);
        BackgroundTransparency = 0;
        BackgroundColor3 = Color3.fromRGB(83, 109, 254);
        -- text part
        Text = "cafe speedrun time-meter";
        Font = Enum.Font.GothamBold;
        TextColor3 = Color3.new(1,1,1);
        TextSize = 15;
    }),
    Container = Roact.createElement("Frame",{
        Size  = UDim2.fromScale(1,1);
        Position = UDim2.fromScale(0.5,0.5);
        AnchorPoint = Vector2.new(0.5,0.5);
        BackgroundTransparency = 1;
    }, props[Roact.Children])
})
end

function button(props)
    local text = props.text
    
    local main_color = props.main_color
    local secondary_color = props.secondary_color

    local x = props.x; -- 0.5;
    local y = props.y; -- 0.6;

    return Roact.createElement("TextButton",{
        Text = text;
        BackgroundColor3 = main_color;
        BorderSizePixel = 2;
        BorderColor3 = secondary_color;

        Size = UDim2.fromScale(0.4,0.2);
        Position = UDim2.fromScale(x,y);
        AnchorPoint = Vector2.new(0.5,0.5)
    })
end



main = Roact.createElement("ScreenGui",{},{
    Roact.createElement(create_bg,{
        height = 0.2
    },{
        Roact.createElement(button,{
            text = "Hello, world!";

            main_color = Color3.fromRGB(203, 212, 231);
            secondary_color = Color3.fromRGB(128, 128, 128);

            x = 0.5;
            y = 0.6;
        })
    })
})

handle = Roact.mount(main,game.Players.LocalPlayer.PlayerGui)