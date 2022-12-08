-- This script is for exploit to execute!
local plr = game:GetService('Players').LocalPlayer
local mouse = plr:GetMouse()

mouse.Button1Down:Connect(function()
    if mouse.Target then
        local plr = game:GetService('Players'):GetPlayerFromCharacter(mouse.Target.Parent)

        if plr then setclipboard(tostring(plr.UserId)); end
    end
end)
game:GetService('RunService').RenderStepped:Connect(function()
    if mouse.Target then
        local plr = game:GetService('Players'):GetPlayerFromCharacter(mouse.Target.Parent)
        if plr then
			Drawing.clear()
            local Text = Drawing.new("Text")
			Text.Visible = true
			Text.Transparency = 1
			Text.Color = Color3.fromRGB(255,255,255)
			Text.Text = plr.Name
			Text.Size = 18
			Text.Position = Vector2.new(mouse.X,mouse.Y - 10)
			Text.Font = Drawing.Fonts.Monospace
        else
			selected = false
			Drawing.clear()
		end
	end
end)