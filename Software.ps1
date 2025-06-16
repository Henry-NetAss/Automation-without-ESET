
$path = "C:\Na\Installation"
If(!(test-path -PathType container $path))
{
      New-Item -ItemType Directory -Path $path
}
echo y | powershell install-module -name POSHNOTIFY -Scope CurrentUser -Force
$workdir = "c:\na\installation\"
set-location C:\NA\Installation
Clear-Host
send-osnotification -body 'AnyDesk' -Title 'Network Associates'
echo y|winget install --name AnyDesk --silent
$NewPassword = 'Supp0rt@NA123'
Invoke-Command -ScriptBlock {
    Param($NewPassword)
    $Expression = 'echo {0} | "C:\Program Files (x86)\AnyDesk\AnyDesk.exe" --set-password' -f $NewPassword
    Start-Process cmd.exe -ArgumentList "/c $Expression"
} -ArgumentList $NewPassword
send-osnotification -body 'Downloading TeamViewer' -Title 'Network Associates'
echo y|winget install --id TeamViewer.TeamViewer --silent
start-sleep -seconds 5
.\anydesksilent.ps1
Clear-Host
$source = "https://files3.codecguide.com/K-Lite_Codec_Pack_1725_Basic.exe"
$destination = "$workdir\Klite.exe"
Invoke-WebRequest $source -OutFile $destination
Clear-Host
send-osnotification -body 'Downloading JDK8' -Title 'Network Associates'
echo y|winget install --id EclipseAdoptium.Temurin.8.JDK --silent
start-sleep -seconds 15
Clear-Host
send-osnotification -body 'Downloading JDK11' -Title 'Network Associates'
echo y|winget install --id EclipseAdoptium.Temurin.11.JDK --silent
start-sleep -seconds 15
Clear-Host
send-osnotification -body 'Downloading Google Chrome' -Title 'Network Associates'
echo y|winget install --id Google.Chrome.EXE --location "C:\Program Files\Google" --silent
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading TS Print' -Title 'Network Associates'
$source = "https://www.terminalworks.com/downloads/tsprint/TSPrint_client.exe"
$destination = "$workdir\TSprint.exe"
Invoke-WebRequest $source -OutFile $destination
send-osnotification -body 'Installing TS Print' -Title 'Network Associates'
.\tsprint.exe /silent
start-sleep -seconds 5
Clear-Host
send-osnotification -body 'Downloading NetTime' -Title 'Network Associates'
echo y|winget install --name NetTime --silent
Clear-Host
send-osnotification -body 'Downloading Adobe' -Title 'Network Associates'
echo y|winget install --id Adobe.Acrobat.Reader.32-bit --silent
send-osnotification -body 'Windows Scan' -Title 'Network Associates'
echo y|winget install --id 9WZDNCRFJ3PV --silent
send-osnotification -body 'Whatsapp' -Title 'Network Associates'
#Install whatsapp
echo y|winget install --id 9NKSQGP7F2NH --silent
send-osnotification -body 'Microsoft Office' -Title 'Network Associates'
echo y|winget install --id Microsoft.Office --silent
start-sleep -seconds 4
