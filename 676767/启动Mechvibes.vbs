Set WshShell = CreateObject("WScript.Shell")
nodeDir = WshShell.ExpandEnvironmentStrings("%USERPROFILE%") & "\Desktop\676767\node\node-v20.11.0-win-x64"
srcDir = WshShell.ExpandEnvironmentStrings("%USERPROFILE%") & "\Downloads\mechvibes-master"

' Set PATH
Set env = WshShell.Environment("PROCESS")
env("PATH") = nodeDir & ";" & env("PATH")

' Run electron
WshShell.CurrentDirectory = srcDir
WshShell.Run nodeDir & "\node.exe " & srcDir & "\node_modules\electron\cli.js " & srcDir, 0, False
