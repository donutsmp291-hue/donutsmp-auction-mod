@echo off
REM Needs JDK 21 and Gradle (https://gradle.org/install) on PATH.
gradle wrapper --gradle-version 8.12
call gradlew.bat build
echo.
echo Your jar: build\libs\donutauction-1.0.0.jar
pause
