-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by Amin Zeina
-- Created on Mar 2018
--
-- Tells if number is positive or negative
-----------------------------------------------------------------------------------------



local instruction = display.newText( 'Enter A Number:', 560, 200, native.systemFont, 128 )
instruction.id = " Instructions "
local numberTextField = native.newTextField( 1600, 205, 800, 128 )
numberEnteredTextField = "Number text field"
local enterButton = display.newImageRect( './assets/sprites/clickButton.png', 700, 275)
enterButton.x = display.contentCenterX
enterButton.y = 500
enterButton.id = 'Enter Button'

local function onEnterClicked( event )
	-- shows if negative or positive on enter clicked 
	local numberEntered = tonumber( numberTextField.text )
	print( numberEntered )
	if numberEntered == 0 then 
		local invalidText = display.newText( '"0" is an ivalid number.', display.contentCenterX, 800, native.systemFont, 128)
	else 
		if numberEntered <= 0 then 
			local negativeText = display.newText( 'The Number is Negative.', display.contentCenterX, 800, native.systemFont, 128)	
		else 
			local positiveText = display.newText( 'The Number is Postive.', display.contentCenterX, 800, native.systemFont, 128)
		end	
	end	
end

enterButton:addEventListener( 'touch', onEnterClicked )