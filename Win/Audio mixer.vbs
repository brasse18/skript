Set oShell = WScript.CreateObject ("WScript.Shell")
oShell.run "ms-settings:sound"
WScript.Sleep 1000
oShell.SendKeys "{TAB 7}"
oShell.SendKeys " "