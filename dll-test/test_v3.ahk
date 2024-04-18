#Requires AutoHotkey v2.0
#include "CLR.ahk"


; this C# code to compile test secsuss



code :=
(
'
using System.Windows.Forms;
class Foo {
    public void Test() {
        MessageBox.Show("Hello, world, from C#!");
    }
}
'
)



asm := CLR_CompileCS(code, "System.dll | System.Windows.Forms.dll")
obj := CLR_CreateObject(asm, "Foo")
obj.Test()