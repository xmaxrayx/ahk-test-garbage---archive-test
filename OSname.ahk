#Requires AutoHotkey v2.0
;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 15:44:42  on 17/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}

;[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 15:44:42  on 17/4/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}



MsgBox(ComObject("WScript.Shell").Exec('cmd.exe /c systeminfo | findstr /b /c:"OS Name"').StdOut.ReadAll())
