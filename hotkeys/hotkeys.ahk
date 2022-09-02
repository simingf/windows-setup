#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

!Enter::
Run, C:\Program Files\Git\git-bash.exe
Return

!+Enter::
Run, firefox
return

!t::
Run, todo
Return

!e::
Run, explorer
Return

!w::
;Run, C:\Program Files (x86)\Tencent\WeChat\WeChat.exe
Run, wechat
Return

!n::
Run, notepad
Return

;!z::
;WinGetClass, class, A
;MsgBox, The active window's class is "%class%".