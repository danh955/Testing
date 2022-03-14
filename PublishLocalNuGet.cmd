@echo off
:: This build the project and put it in the local NuGet repository.
set versionSuffix=
if not "%~1" == "" set versionSuffix=--version-suffix %1
dotnet pack Testing --configuration Release %versionSuffix%
dotnet nuget push Testing\bin\Release\*.nupkg --source "Local"
