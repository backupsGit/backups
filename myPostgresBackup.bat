@echo off
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
 set dow=%%i
 set month=%%j
 set day=%%k
 set year=%%l
)
set base=%~dp0
set pathPostgres="C:\Program Files\PostgreSQL\9.5\bin\pg_dumpall.exe"
set datestr=%month%_%day%_%year%
echo datestr is %datestr%

::set BACKUP_FILE=%base%backupfiles/BackupPostgres_%datestr%.sql
set BACKUP_FILE=C:\Users\1073669040\Documents\backupfiles\BackupPostgres_%datestr%.sql
echo backup file name is %BACKUP_FILE%
SET PGUSER=postgres
SET PGPASSWORD=Andres0430


%pathPostgres% -h localhost -p 5432 -U %PGUSER% -f %BACKUP_FILE%

set runCommit="%base%backupfiles/commit.bat";
%runCommit%