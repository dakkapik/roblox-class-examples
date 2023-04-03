local pressurePlate = game.Workspace.PressurePlate

local function createRock (position)
	local rock = Instance.new("Part")
	rock.Size = Vector3.new(5,5,5)
	rock.Position = Vector3.new(position.x, position.y + 20, position.z)
	
	rock.Parent = game.Workspace
	wait(3)
	rock:Destroy()
end


local function steppedOnPlate(plate)
	local player = plate.parent
	local platePosition = plate.Position
	
	if game.Players:GetPlayerFromCharacter(player) then
		createRock(platePosition)
	end
end


pressurePlate.Touched:Connect(steppedOnPlate)