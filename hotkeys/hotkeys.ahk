#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

!Esc::
WinClose A
return

!f::
IfWinExist ahk_class MozillaWindowClass
	winactivate ahk_class MozillaWindowClass
else
	run, firefox
return

!t::
IfWinExist ahk_class ApplicationFrameWindow
	winactivate ahk_class ApplicationFrameWindow
else
	run, todo
return

!e::
IfWinExist ahk_class CabinetWClass
	winactivate ahk_class CabinetWClass
else
	run, explorer
return

!j::
IfWinExist ahk_class mintty
	winactivate ahk_class mintty
else
	run, "C:\Program Files\Git\git-bash.exe"
return

!k::
IfWinExist ahk_class Chrome_WidgetWin_1
	winactivate ahk_class Chrome_WidgetWin_1
else
	run, "C:\Users\Simin\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

!n::
IfWinExist ahk_class Notepad
	winactivate ahk_class Notepad
else
	run, notepad
return

!m::
IfWinExist ahk_class WeChatMainWndForPC
	winactivate ahk_class WeChatMainWndForPC
else
	run, wechat
return

!w::
IfWinExist ahk_class WeChatMainWndForPC
	winactivate ahk_class WeChatMainWndForPC
else
	run, wechat
return

;!d:: TODO: discord (same class as vscode)

!z::
IfWinExist ahk_class ZPContentViewWndClass
	winactivate ahk_class ZPContentViewWndClass
else
	run, "C:\Users\Simin\AppData\Roaming\Zoom\bin\Zoom.exe"
return

!v::
IfWinExist ahk_class UnrealWindow
	winactivate ahk_class UnrealWindow
else
	run, valorant
return



!c::
WinGetClass, class, A
clipboard := class