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
IfWinExist ahk_class mintty
{
	WinGet, WinList, List, ahk_class mintty
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

;VS CODE

!k::
IfWinExist ahk_class Chrome_WidgetWin_1
{
	WinGet, WinList, List, ahk_class Chrome_WidgetWin_1
	Loop, % WinList
		winactivate, % "ahk_id " WinList%A_Index%
}
else
{
	run, "C:\Users\Simin\AppData\Local\Programs\Microsoft VS Code\Code.exe"
}
return

!+k::
run, "C:\Users\Simin\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

;FIREFOX

!f::
IfWinExist ahk_class MozillaWindowClass
{
	WinGet, WinList, List, ahk_class MozillaWindowClass
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
IfWinExist ahk_class Notepad
{
	WinGet, WinList, List, ahk_class Notepad
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
IfWinExist ahk_class WeChatMainWndForPC
	winactivate ahk_class WeChatMainWndForPC
else
	run, wechat
return

!t::
IfWinExist ahk_class ApplicationFrameWindow
	winactivate ahk_class ApplicationFrameWindow
else
	run, todo
return

!s::
IfWinExist ahk_class Chrome_WidgetWin_0
	winactivate ahk_class Chrome_WidgetWin_0
else
	run, "C:\Users\Simin\AppData\Roaming\Spotify\Spotify.exe"
return

;HELPER FUNCTIONS

!g::
WinGetClass, class, A
clipboard := class