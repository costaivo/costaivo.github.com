You can quickly delete the non-essential files that concern testing and QuickStart repository maintenance (including all git-related artifacts such as the .git folder and .gitignore!).

for /f %i in (non-essential-files.txt) do del %i /F /S /Q
rd .git /s /q
rd e2e /s /q