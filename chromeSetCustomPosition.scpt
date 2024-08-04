-- This Apple script will resize any program window to an exact size and the window is then moved to the center of your screen. Specify the program name, height and width below and run the script.

set theApp to "Google Chrome"
set appHeight to 1173
set appWidth to 709

tell application "Finder"
	set screenResolution to bounds of window of desktop
end tell

set screenWidth to item 3 of screenResolution
set screenHeight to item 4 of screenResolution

tell application theApp
	activate
	reopen
	set yAxis to 25
	set xAxis to 2446
	set the bounds of the first window to {xAxis, yAxis, appWidth + xAxis, appHeight + yAxis}
end tell
