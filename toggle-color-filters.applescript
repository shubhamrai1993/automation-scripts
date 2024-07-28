#!/usr/bin/osascript

# @raycast.title Toggle Colour Filters
# @raycast.author Shubham Rai
# @raycast.authorURL https://github.com/shubhamrai1993
# @raycast.description Toggle your Colour Filters

# @raycast.mode silent
# @raycast.packageName toggle.color.filters
# @raycast.schemaVersion 1

# set this variable to the equivalent of "Control Center" in your system language

-- Open the Accessibility section in System Settings using a bash script
do shell script "open \"x-apple.systempreferences:com.apple.preference.universalaccess?Seeing_Display\""
delay 1

-- Use System Events to interact with the UI
tell application "System Events"
	tell process "System Settings"
		-- delay 1 -- Wait for System Settings to fully open
		
		-- Toggle the "Colour filters" checkbox
		set enableColorFiltersCheckbox to checkbox "Colour filters" of group 5 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Display"
		if value of enableColorFiltersCheckbox is 0 then
			click enableColorFiltersCheckbox
		else
			click enableColorFiltersCheckbox
		end if
	end tell
end tell

-- Quit System Settings
tell application "System Settings"
	quit
end tell
