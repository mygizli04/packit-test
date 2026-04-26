copy build_w32.bat make-%PACKIT_PACKAGE_VERSION%
cd make-%PACKIT_PACKAGE_VERSION%

call build_w32.bat --without-guile

mkdir "%PACKIT_PACKAGE_PATH%\bin\"

copy WinRel\gnumake.exe "%PACKIT_PACKAGE_PATH%\bin\make.exe"
