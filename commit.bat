@echo off
git add *
git commit -m "backup %time%" 
git push -u origin master