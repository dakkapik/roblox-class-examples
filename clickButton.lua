--[[
	for this example we use the block named 
	bridge that will become transparent
	and we set CanCollide atribute to false

	NOTE:
		the button just activates a function that could do anything.
		just change the whenClicked function.
		
			Ex: 
			- Change player speed whenClicked
			- Open a door whenClicked
			- Increase score whenClicked
]]

--[[
	this script should be placed inside a click detector
	and that click detector should be inside a block ]]
    local clickDetector = script.Parent
    local button = clickDetector.Parent
    
    --target will should call for the block that we want to influence
    local target = game.Workspace.bridge
    
    function disableBridge(time)
    --[[
        whatever call this function will disable the bridge for some time
            NOTE:
            this function has nothing to do with the button
            it is only activated by the button on this case.
    ]]
        target.Transparency = 0.6
        target.CanCollide = false
        wait(time)
        target.Transparency = 0
        target.CanCollide = true
    end
    
    
    function whenClicked ()
        --we will turn the button red so we know we have clicked it
        button.Color = Color3.fromRGB(255, 0, 0)
        
    --[[
        we call the disableBridge() function
        to make the bridge do anything else
        we just change the function to a different one
    ]]
        disableBridge(5)
    end
    
    
    clickDetector.MouseClick:Connect(whenClicked)