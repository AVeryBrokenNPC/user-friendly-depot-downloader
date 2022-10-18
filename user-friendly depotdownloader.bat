@echo off

if not exist "%ProgramFiles%\dotnet\dotnet.exe" (
	echo dotnet.exe was not found. You need to have .NET installed to run this utility. 
	echo Download and install .NET Desktop Runtime 3.1.7 then launch this utility again. 
	echo .NET Desktop Runtime 3.1.7: https://bit.ly/3h04vGY
	pause
	exit
)
 
echo user-friendly depot downloader
SET /P _username= steam username:
SET /P _password= steam password:
SET /P _app= app id:
SET /P _depot= depot id:
SET /P _manifest= manifest id:
 
@echo on

call dotnet DepotDownloader.dll -app %_app% -depot %_depot% -manifest %_manifest% -username %_username% -password %_password% -remember-password
echo done, go into your downloaded files and make a txt document called "steam_appid.txt" with only the app id inside of it, this will make it actually run the depot version and not the latest one