#Requires AutoHotkey v2.0+
#SingleInstance Force


;  s:=""
;  Run("cmd.exe /c ipconfig | clip", , "Hide" ,&s)
;  MsgBox s



;  k := 'pop'


MsgBox(ComObject("WScript.Shell").Exec("cmd.exe /q /c ipconfig").StdOut.ReadAll())