set logFile to POSIX path of (path to documents folder) & "app_usage_log.txt"
set timeStamp to do shell script "date '+%Y-%m-%d %H:%M:%S'"
do shell script "echo 'Screen disabled via disablescreen.scpt at " & timeStamp & "' >> " & quoted form of logFile
do shell script "pmset displaysleepnow"
