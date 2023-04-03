local platform = game.Workspace.moving

wait(5)

for i = 1, 100 do
	platform.Position = Vector3.new(platform.Position.x - 1, platform.Position.y, platform.Position.z)
	wait(0.1)
end
