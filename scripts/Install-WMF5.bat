@echo off
set hotfix="C:\Windows\Temp\Win8.1AndW2K12R2-KB3134758-x64.msu'"
if not exist %hotfix% goto :eof
@echo on
start /wait wusa "%hotfix%" /quiet /norestart