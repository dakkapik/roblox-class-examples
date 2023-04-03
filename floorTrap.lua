local plate = game.Workspace.trap1.plate

local function createTrap()
	local trap = Instance.new("Part")
	
	trap.Anchored = true
	trap.Size = Vector3.new(8,1,8)
	trap.Position = Vector3.new(28,0.5,1)
	
	trap.Parent = game.Workspace.trap1
	
	return trap
end

local trap = createTrap()

local function steppedOnPlate(part)
	local Parent = part.parent
	if game.Players:GetPlayerFromCharacter(Parent) then
		trap.BrickColor = BrickColor.new("Mid gray")
		wait(0.3)
		trap.BrickColor = BrickColor.new("Quill grey")
		wait(0.3)
		trap.BrickColor = BrickColor.new("Lily white")
		wait(0.3)
		trap.BrickColor = BrickColor.new("Black")
		trap.Anchored = false
		wait(2)
		trap:Destroy()
		
		trap = createTrap()
	end
end

plate.Touched:Connect(steppedOnPlate)