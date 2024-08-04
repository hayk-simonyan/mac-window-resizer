tell application "System Events"
    tell application process "Code"
        set frontmost to true
        tell window 1
            set winSize to size
            set winPosition to position
        end tell
    end tell
end tell

-- Return the size and position
return {winSize, winPosition}