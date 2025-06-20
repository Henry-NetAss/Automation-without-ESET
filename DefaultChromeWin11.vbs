Set WshShell = WScript.CreateObject("WScript.Shell")

' Open the default settings window
WshShell.Run "%windir%\system32\control.exe /name Microsoft.DefaultPrograms /page pageDefaultProgram\pageAdvancedSettings?pszAppName=google%20chrome"
WScript.Sleep 15000 ' Wait until open (adjust if necessary)


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
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{ENTER}"
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys " "
WScript.Sleep 1500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{DOWN}"
WScript.Sleep 1500
WshShell.SendKeys "{ENTER}"
WScript.Sleep 1500
WshShell.SendKeys "{ENTER}"
WScript.Sleep 1500
WshShell.SendKeys "%{F4}" 
WScript.Quit								  	