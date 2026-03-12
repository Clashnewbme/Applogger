set logFile to POSIX path of (path to documents folder) & "app_usage_log.txt"

set timeStamp to do shell script "date '+%Y-%m-%d %H:%M:%S'"

do shell script "echo 'Kill Switch was activated at " & timeStamp & "' >> " & quoted form of logFile

tell application "System Events"
	set appList to name of every application process whose background only is false
end tell

repeat with appName in appList
	if appName is not "Finder" then
		try
			do shell script "killall " & quoted form of appName
		end try
	end if
end repeat
