#!/usr/bin/osascript

on run argv
	set q to item 1 of argv
	tell application "Google Chrome"
		tell window 1
			set mark to tab 1 execute javascript "window.___ytm___"
			if mark is missing value then
				set activeIndex to get active tab index
				set ytTab to make new tab with properties {URL:q} at the beginning
				set active tab index to activeIndex + 1
			else
				set ytTab to tab 1
				set URL of ytTab to q
			end if
			repeat while loading of ytTab
				delay 0.1
			end repeat
			ytTab execute javascript "window.___ytm___ = 1"
		end tell
	end tell
end run
