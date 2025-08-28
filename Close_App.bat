# Create folder name, such as "CMD_Scripts"
# Create bat file
# If you run it into tash schedule on Window in "Program/script:" fill full path, such as C:\CMD_Scripts\Close_App.bat, in "Start in:" fill "C:\CMD_Scripts"
@echo off
echo %DATE% %TIME% >> C:\CMD_Scripts\task_log.txt
taskkill /F /T /IM app.exe >> C:\CMD_Scripts\task_log.txt 2>&1
exit
