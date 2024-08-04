-- Open QuickTime Player
tell application "QuickTime Player"
    activate
end tell

-- Wait for the app to be in the foreground
delay 1

-- Trigger a new screen recording
tell application "System Events"
    tell process "QuickTime Player"
        click menu item "New Screen Recording" of menu "File" of menu bar 1
    end tell
end tell

-- Wait for the screen recording options to appear
delay 3

-- Position the screen recording tool on the right side of the screen
set screenWidth to 2560 -- Adjust this value according to your screen width
set screenHeight to 1440 -- Adjust this value according to your screen height

-- Calculate the top-left corner of the recording area (right side of the screen)
set recordX to screenWidth - 1920
set recordY to (screenHeight - 1080) / 2

-- Show instructions to manually resize the recording area
-- display dialog "Position the recording area to the top-left corner at {" & recordX & ", " & recordY & "} and set the size to 1920x1080 manually. Then start the recording."

-- Note: AppleScript cannot directly set the recording area size. You need to manually adjust it.
