Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Reg_Run = WSHShell.RegRead("HKLM\SOFTWARE\AutoRoScript")
WSHShell.Run Reg_Run&"\Office\setup.exe"
WScript.Sleep(50000)
WSHShell.AppActivate("Microsoft Office 2000")
WshShell.SendKeys("RedOct")
WScript.Sleep(1000)
WshShell.SendKeys("{TAB}")
WScript.Sleep(1000)
WshShell.SendKeys("{TAB}")
WScript.Sleep(1000)
WshShell.SendKeys("RedOct")
WScript.Sleep(1000)
WshShell.SendKeys("{TAB}")
WScript.Sleep(1000)
WshShell.SendKeys("*****")
WScript.Sleep(500)
WshShell.SendKeys("*****")
WScript.Sleep(500)
WshShell.SendKeys("*****")
WScript.Sleep(500)
WshShell.SendKeys("*****")
WScript.Sleep(500)
WshShell.SendKeys("*****")
WScript.Sleep(1000)
WshShell.SendKeys("{ENTER}")
WScript.Sleep(1000)
WshShell.SendKeys("{TAB}")
WScript.Sleep(1000)
WshShell.SendKeys("{RIGHT}")
WScript.Sleep(1000)
WshShell.SendKeys("{ENTER}")
WScript.Sleep(1000)
WshShell.SendKeys("{TAB}")
WScript.Sleep(1000)
WshShell.SendKeys("{ENTER}")
WScript.Sleep(1000)
WshShell.SendKeys("{ENTER}")
WScript.Sleep(1000)
WshShell.SendKeys("+{TAB}")
WScript.Sleep(1000)
WshShell.SendKeys("{ }")
WScript.Sleep(1000)
WshShell.SendKeys("+{DOWN}")
WScript.Sleep(1000)
WshShell.SendKeys("+{DOWN}")
WScript.Sleep(1000)
WshShell.SendKeys("{ENTER}")
WScript.Sleep(15000)
WshShell.SendKeys("{ENTER}")
WScript.Sleep(950000)
WshShell.SendKeys("{ENTER}")
WSHShell.Run Reg_Run&"\restart.vbs"
