local trapFolder = script.Parent

local R1 = trapFolder.R1
local R2 = trapFolder.R2
local R3 = trapFolder.R3
local R4 = trapFolder.R4

local L1 = trapFolder.L1
local L2 = trapFolder.L2
local L3 = trapFolder.L3
local L4 = trapFolder.L4

local function trapPanel(block)
	local broken = false
	block.CanCollide = false
	
	block.Touched:Connect(function(hitPart)
		local player = hitPart.parent
		if game.Players:GetPlayerFromCharacter(player) and not broken then
			broken = true
			block.Anchored = false
		end
	end)
end


if(math.random() > 0.5) then
	trapPanel(R1)
else
	trapPanel(L1)
end

if(math.random() > 0.5) then
	trapPanel(R2)
else
	trapPanel(L2)
end

if(math.random() > 0.5) then
	trapPanel(R3)
else
	trapPanel(L3)
end

if(math.random() > 0.5) then
	trapPanel(R4)
else
	trapPanel(L4)
end
