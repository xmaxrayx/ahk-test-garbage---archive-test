#Requires AutoHotkey v2.0
#Include "CLR.ahk"
; Result := DllCall("ClassLibrary2.dll" ,"Str" , "Method" , )
; MsgBox Result
CLR_Start()
s := CLR_LoadLibrary("ClassLibrary2.dll")
MsgBox(s.Hi())