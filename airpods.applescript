activate application "SystemUIServer"
tell application "System Events"
	tell process "SystemUIServer"

		set btMenu to (menu bar item 1 of menu bar 1 whose description contains "bluetooth")
		tell btMenu
			click
			tell (menu item "Derek's AirPods" of menu 1)
				click
				if exists menu item "Connect" of menu 1 then
					click menu item "Connect" of menu 1
					return "Connecting..."
				else
					click btMenu
					return "Connect menu was not found, are you already connected?"
				end if
			end tell
		end tell
	end tell
end tell