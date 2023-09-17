; === AUTOSTART ON LOGIN ===
; Enables startup with windows by adding a link in the startup directory to this script in it's current location
; This allows you to keep your AHK scripts anywhere, but still have them launch with windows. If you move them,
; just run them in the new location to update the links.
; Check if the script is in the startup directory and create a shortcut if not
startupDir := "C:\Users\" . A_UserName . "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
scriptPath := A_ScriptFullPath
FileCreateShortcut, %scriptPath%, %startupDir%\\%A_ScriptName%.lnk
