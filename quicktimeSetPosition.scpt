tell application "QuickTime Player"
    activate
    
    -- Wait for QuickTime Player to become active
    repeat until frontmost
        delay 0.1
    end repeat
    
    -- Open a new screen recording
    set newScreenRecording to new screen recording
    
    -- Wait for the screen recording window to appear
    repeat until exists window 1
        delay 0.1
    end repeat
    
    tell application "System Events"
        tell process "QuickTime Player"
            -- Click the dropdown menu
            click pop up button 1 of window 1
            
            -- Force select "Custom" from the menu
            key code 125 -- Down arrow
            key code 125 -- Down arrow
            key code 125 -- Down arrow
            key code 36 -- Return key
            
            -- Wait for the custom size dialog
            repeat until exists sheet 1 of window 1
                delay 0.1
            end repeat
            
            -- Set width to 1920
            set value of text field 1 of sheet 1 of window 1 to "1920"
            keystroke tab
            
            -- Set height to 1080
            set value of text field 2 of sheet 1 of window 1 to "1080"
            
            -- Confirm the custom size
            click button "OK" of sheet 1 of window 1
            
            -- Extra step: Click the record button to apply settings
            click button 1 of window 1
            
            -- Wait briefly
            delay 1
            
            -- Stop the recording
            key code 53 -- Escape key
        end tell
    end tell
end tell