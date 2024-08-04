tell application "System Events"
    tell application process "Code"
        set frontmost to true
        tell window 1
            set size to {1212, 1091}
            set position to {1233, 107} -- Optional: Set the top-left corner position
        end tell
    end tell
end tell