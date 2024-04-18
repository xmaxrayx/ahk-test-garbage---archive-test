
;http://stackoverflow.com/questions/7119806/c-sharp-reading-data-from-xml

#include clr.ahk

c# =
(
    using System;
    using System.Windows.Forms;
    using System.Xml.Linq;
    class Foo {
        public void Test() {
            MessageBox.Show("Ready for XML from C# via Autohotkey?");
        }

		public void ahkxml(){
			XDocument doc = XDocument.Load( "polycom-test-cfg.cfg" );
			var info = doc.Descendants( "reg" );
			foreach ( var thisinfo in info ){
				MessageBox.Show(thisinfo.Value);
			}     
		}
		
    }
)
asm := CLR_CompileC#(c#, "System.dll | System.Windows.Forms.dll | System.Xml.Linq")
obj := CLR_CreateObject(asm, "Foo")
obj.Test()
obj.ahkxml()