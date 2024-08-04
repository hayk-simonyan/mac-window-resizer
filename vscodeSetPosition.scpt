tell application "System Events"
    tell application process "Code"
        set frontmost to true
        tell window 1
            set size to {1920, 1080}
            set position to {1236, 114} -- Optional: Set the top-left corner position
        end tell
    end tell
end tell