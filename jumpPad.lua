--[[
    requires a jumpPads Folder that contains all 
    the jump pad blocks
]]
local folder = game.Workspace.jumpPads
local jumpPads = folder:GetChildren()


for i = 1, #jumpPads do
	local pad = jumpPads[i]
	
	pad.Touched:Connect(function(part)
		local player = part.Parent
		if(game.Players:GetPlayerFromCharacter(player)) then
			player.Humanoid.JumpHeight = 50
			player.Humanoid.WalkSpeed = 50
			player.Humanoid.JumpPower = 50
			wait(5)
			player.Humanoid.JumpPower = 10       
			player.Humanoid.JumpHeight = 15
			player.Humanoid.WalkSpeed = 15
		end
	end)
end