@echo off
:: This build the project and put it in the danh955 NuGet repository.
set versionSuffix=
if not "%~1" == "" set versionSuffix=--version-suffix %1
:: Testing
dotnet pack Testing --configuration Release %versionSuffix%
dotnet nuget push Testing\bin\Release\*.nupkg --source "danh955" --skip-duplicate
:: Testing two
:: dotnet pack TestingTwo --configuration Release %versionSuffix%
:: dotnet nuget push TestingTwo\bin\Release\*.nupkg --source "danh955" --skip-duplicate
