on run
	set logFile to POSIX path of (path to documents folder) & "app_usage_log.txt"
	set timeStamp to do shell script "date '+%Y-%m-%d %H:%M:%S'"
	
	do shell script "echo 'Guard started " & timeStamp & "' >> " & quoted form of logFile
	
	display dialog "Sophos guard version 2.7182 active" buttons {"OK"} default button "OK"
end run
