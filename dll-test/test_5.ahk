#Requires AutoHotkey v2.0
#include "CLR.ahk"



c :=
(
    '
	using System.Xml;
	using System.Xml.XPath;

	class XPathNav
	{
		XPathNavigator nav;
		XPathDocument docNav;

		public void Open(string xmlPath)
		{
			docNav = new XPathDocument(@xmlPath);
			nav = docNav.CreateNavigator();
		}

		public XPathNavigator sNode(string xpath)
		{
			return nav.SelectSingleNode(xpath);
		}

		public XPathNodeIterator sNodes(string xpath)
		{
			return nav.Select(xpath);
		}

		public string GetAttrVal(XPathNavigator node, string attrName)
		{
			return node.GetAttribute(attrName, "");
		}
	}
    '
)
asm := CLR_CompileCS(c, "System.xml.dll" )
obj := CLR_CreateObject( asm, "XPathNav" )
obj.Open( "path to xml" )
node := obj.sNode( "//node" )
msgbox obj.GetAttrVal( node, "name" )