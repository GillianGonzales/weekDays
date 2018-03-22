-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On March 22 2018	
--
-----------------------------------------------------------------------------------------

-- Making vairbles
local day
local userInput
local computerOutput
local Monday
local Tuesday
local Wednesday
local Thursday
local Friday
local Saturday
local Sunday


 -- Changing Background
 display.setDefault("background", 1, 1, 1 )

-- Adding Text]
local instructions = display.newText("Type In the day of the week", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 100 )
instructions:setFillColor (0,0,0)

local whatDay = display.newText("The day is a", display.contentCenterX, display.contentCenterY + 400, native.systemFont, 75)
whatDay:setFillColor ( 0, 0, 0 )

-- Adding Text Field
local weekDayField = native.newTextField(display.contentCenterX, display.contentCenterY, 1000, 125)

--Adding Button
local button = display.newImageRect("./assets/sprites/Button.png",406,157)
button.x = display.contentCenterX
button.y = display.contentCenterY + 200

-- Making Function
local function showDay( event )
	-- This funtion will tell the user what day it is 

	day = weekDayField.text

	Monday = "Monday"
	Tuesday = "Tuesday"
	Wednesday = "Wednesday"
	Thursday = "Thursday"
	Friday = "Friday"
	Saturday = "Saturday"
	Sunday = "Sunday"

	if day == Monday then
		whatDay.text = "The day is a weekday"
	elseif day == Tuesday then
		whatDay.text = "The day is a weekday"
	elseif day == Wednesday then
		whatDay.text = "The day is a weekday"
	elseif day == Thursday then
		whatDay.text = "The day is a weekday"
	elseif day == Friday then
		whatDay.text = "The day is a weekday"
	elseif day == Saturday then
		whatDay.text = "The day is a weekend day"
	elseif day == Sunday then
		whatDay.text = "The day is a weekend day"
	else 
		whatDay.text = "Use a capital letter for the first letter"

	end

end

button:addEventListener("touch", showDay)