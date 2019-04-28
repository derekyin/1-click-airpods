activate application "SystemUIServer"
tell application "System Events"
	tell process "SystemUIServer"
		set bluetooth to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		tell bluetooth
			click
			tell (menu item "AIRPODS_NAME" of menu 1)
				click
				if exists menu item "Connect" of menu 1 then
					click menu item "Connect" of menu 1
					return "Connecting..."
				else
					click bluetooth
				end if
			end tell
		end tell
	end tell
end tell