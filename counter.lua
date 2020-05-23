set_thread_context(6)
local Roact = getrenv().require(game:GetService("CorePackages")["Packages"]["_Index"]["roblox_roact"]["roact"])

function create_bg(props)
    local height = proops.height

    return Roact.createElement("Frame", {
        BackgroundColor3 = Color3.fromRGB(40, 53, 147);
        BorderSizePixel = 2;
        BorderColor3 = Color.fromRGB(83, 109, 254;
        Size = UDim2.fromScale(0.3,height);
        Position = UDim2.fromScale(0.6,0.3);
        AnchorPoint = Vector2.new(0.8,0.3)
    }, {
    Title = Roact.createElement("TextLabel", {
        AnchorPoint = Vector2.new(0.5,1);
        Position = UDim2.fromScale(0.5,0.15);
        BackgroundTransparency = 0;
        BackgroundColor3 = Color3.fromRGB(83, 109, 254);
        -- text part
        Text = "cafe speedrun";
        Font = Enum.Font.GothamBold;
        TextSize = 36;
    }),
    Container = Roact.createElement("Frame",{
        Size  = UDim2.fromScale(1,1);
        Position = UDim2.fromScale(0.5,0.5);
        AnchorPoint = Vector2.new(0.5,0.5);
        BackgroundTransparency = 1;
    }, props[Roact.Children])
})
end
