echo %cd%

REM Windows moment. Apparently this is the best way of waiting 5 seconds because both the builtin timeout and pause utilities suck.
ping -n 5 -w 1000 localhost > nul

cd make-%PACKIT_PACKAGE_VERSION%

call build_w32.bat --without-guile

mkdir "%PACKIT_PACKAGE_PATH%\bin\"

copy WinRel\gnumake.exe "%PACKIT_PACKAGE_PATH%\bin\make.exe"
