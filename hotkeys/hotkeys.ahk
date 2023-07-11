#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

;CLOSE WINDOWS

!Esc::
WinClose A
return

;MULTI INSTANCE APPS

;GIT BASH

!j::
IfWinExist ahk_exe mintty.exe
{
	WinGet, WinList, List, ahk_exe mintty.exe
	Loop, % WinList
		winactivate, % "ahk_id " WinList%A_Index%
}
else
{
	run, "C:\Program Files\Git\git-bash.exe"
}
return

!+j::
run, "C:\Program Files\Git\git-bash.exe"
return

;WSL ;C:\Program Files\WindowsApps\Microsoft.PowerShell_7.3.3.0_x64__8wekyb3d8bbwe\pwsh.exe

!h::
IfWinExist ahk_exe WindowsTerminal.exe
{
	WinGet, WinList, List, ahk_exe WindowsTerminal.exe
	Loop, % WinList
		winactivate, % "ahk_id " WinList%A_Index%
}
else
{
	run, wsl
}
return

!+h::
run, wsl
return

;VS CODE

!k::
IfWinExist ahk_exe Code.exe
{
	WinGet, WinList, List, ahk_exe Code.exe
	Loop, % WinList
		winactivate, % "ahk_id " WinList%A_Index%
}
else
{
	run, "C:\Users\Sim\AppData\Local\Programs\Microsoft VS Code\Code.exe"
}
return

!+k::
run, "C:\Users\Sim\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

;FIREFOX

!f::
IfWinExist ahk_exe firefox.exe
{
	WinGet, WinList, List, ahk_exe firefox.exe
	Loop, % WinList
		winactivate, % "ahk_id " WinList%A_Index%
}
else
{
	run, firefox
}
return

!+f::
run, firefox
return

;EXPLORER

!e::
IfWinExist ahk_class CabinetWClass
{
	WinGet, WinList, List, ahk_class CabinetWClass
	Loop, % WinList
		winactivate, % "ahk_id " WinList%A_Index%
}
else
{
	run, explorer
}
return

!+e::
run, explorer
return

;NOTEPAD

!n::
IfWinExist ahk_exe Notepad.exe
{
	WinGet, WinList, List, ahk_exe Notepad.exe
	Loop, % WinList
		winactivate, % "ahk_id " WinList%A_Index%
}
else
{
	run, notepad
}
return

!+n::
run, notepad
return

;SINGLE INSTANCE APPS

!w::
IfWinExist ahk_exe WeChat.exe
	winactivate ahk_exe WeChat.exe
else
	run, "C:\Program Files (x86)\Tencent\WeChat\WeChat.exe"
return

!d::
IfWinExist ahk_exe Discord.exe
	winactivate ahk_exe Discord.exe
else
	run, "C:\Users\Sim\AppData\Local\Discord\app-1.0.9013\Discord.exe"
return

!t::
IfWinExist ahk_exe ApplicationFrameHost.exe
	winactivate ahk_exe ApplicationFrameHost.exe
else
	run, todo
return

!s::
IfWinExist ahk_exe Spotify.exe
	winactivate ahk_exe Spotify.exe
else
	run, "C:\Users\Sim\AppData\Roaming\Spotify\Spotify.exe"
return

!v::
IfWinExist ahk_exe OKZTWO.exe
	winactivate ahk_exe OKZTWO.exe
else
	run, "C:\Program Files\OKZTWO\OKZTWO.exe"
return