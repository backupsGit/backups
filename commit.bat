@echo off
set base=%~dp0
cd %base%
git add *
git commit -m "backup %date% %time%" 
git push -u origin master