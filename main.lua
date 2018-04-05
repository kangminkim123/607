-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- created on: kangmin
-- created by: April 5
-----------------------------------------------------------------------------------------

local oldText = display.newText( "old?", 500, 200, systemFont, 85)
oldText:setFillColor( 1, 0, 0)

local oldTextField = native.newTextField(display.contentCenterX, display.contentCenterY - 550, 400, 150)
oldTextField.id = "old TextField"

local comspeak = display.newText( "what is my guess?", display.contentCenterX, display.contentCenterY + 250, 700, 150)

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png",  400, 157 )
calculateButton.x = ( display.contentCenterX - 0)
calculateButton.y = (display.contentCenterY - 50)
calculateButton.id = "calculate button"

local function calculateButtonFunction( event )
	-- body
	local old = 17
	local answer = 17

	local old = tonumber(oldTextField.text) 
	
    if old == answer then
    	comspeak.text = "You got it right! Do you want to play again?"
    elseif answer < old then
      	comspeak.text = "You guessed too big. Please try again."
    elseif answer > old then
        comspeak.text = "You guessed too small. Please try again."
    else 
        comspeak.text = "Invalid answer. Please try again"
    end

    return nil    
end

calculateButton:addEventListener( "touch", calculateButtonFunction)