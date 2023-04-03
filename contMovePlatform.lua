local platform = game.Workspace.ObbyStructure.moving

wait(5)

while true do
	
	for i = 1, 20 do
		platform.Position = Vector3.new(platform.Position.x - 1, platform.Position.y, platform.Position.z)
		wait(0.01)
	end

	for i = 1, 20 do
		platform.Position = Vector3.new(platform.Position.x + 1, platform.Position.y, platform.Position.z)
		wait(0.01)
	end
	
end
