@echo off
where gradle >nul 2>nul || (echo Install Gradle 8.12+ and add it to PATH & exit /b 1)
gradle %*
