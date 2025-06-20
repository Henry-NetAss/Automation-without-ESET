Set WshShell = WScript.CreateObject("WScript.Shell")

' Open the default settings window
WshShell.Run "%windir%\system32\control.exe /name Microsoft.DefaultPrograms /page pageDefaultProgram\pageAdvancedSettings?pszAppName=google%20chrome"
WScript.Sleep 15000 ' Wait until open (adjust if necessary)

' Adjust number of tabs until you reach the browser choice setting
WshShell.SendKeys "{TAB}" 
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500

' Open the browser choice menu
WshShell.SendKeys " " 
WScript.Sleep 1500 ' Wait until open

WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
.WScript.Sleep 1500
WshShell.SendKeys "{TAB}" 
WScript.Sleep 1500

WScript.Sleep 1500 ' Wait until open
' Uncomment the line below to outomatically close the settings window
WshShell.SendKeys "%{F4}" 
WScript.Quit