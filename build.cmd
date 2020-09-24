dotnet clean
dotnet build src\RollingMonthCallsManager.Common --configuration Release
dotnet build src\RollingMonthCallsManager.Services --configuration Release
dotnet build src\RollingMonthCallsManager.App --configuration Release

candle installer\RollingMonthCallsManager.Installer\RollingMonthCallsManager.Installer.wxs -o installer\RollingMonthCallsManager.Installer\
light installer\RollingMonthCallsManager.Installer\RollingMonthCallsManager.Installer.wixobj -o build\RollingMonthCallsManager.msi
pause