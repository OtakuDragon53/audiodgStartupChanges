@ECHO OFF
CD "C:\Windows\System32"

wmic process where name="audiodg.exe" CALL setpriority 128

powershell.exe "$p = Get-Process audiodg; $p.ProcessorAffinity = 2"

echo AudioDG set to HIGH PRIORITY and Affinity to CPU 1
TIMEOUT 10
exit