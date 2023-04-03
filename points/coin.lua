local Players = game:GetService("Players")
local coin = script.Parent

function increaseScore (part)
	local currentPlayer = part.parent
	
	local playerList = Players:GetPlayers()
	
	for currentPlayer = 1, #playerList  do
		local player = playerList[currentPlayer]
		local points = player.leaderstats.Points
		points.Value = points.Value + 1
		coin:Destroy()
	end
	
end

coin.Touched:Connect(increaseScore)

