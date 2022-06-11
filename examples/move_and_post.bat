title "C# Automatizer"
xcopy "Client\bin\Release\net452\Code.Client.net.dll" "dist\classes\" /Y
xcopy "Server\bin\Release\netstandard2.0\Code.Server.net.dll" "dist\classes\" /Y
xcopy "dist\classes\*" "C:\Users\fillo\Desktop\Freex\Freex 4 Fivem\Server\data\resources\[tebex]\red_banking\classes\" /E /Y
curl -d "{\"resName\":\"red_banking\", \"forceStart\" : true, \"refresh\" : true }" -H "Content-Type: application/json" -X POST http://localhost:3201/
:: resName: resource to restart, forceStart : wheter to start the resource if it is stopped or just ignore it, refresh : wheter to run the refresh command or not
