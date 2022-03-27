#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;#o::
;WinGetActiveTitle, Title
;Send %Title%
;Return

!Esc::
WinGetActiveTitle, Title
IfInString, Title, /usr/bin/bash
{
Send exit
SendInput {Enter}
}
Else
{
Send !{F4}
}
Return

!Enter::
Run, C:\Program Files\Git\git-bash.exe
return

!+Enter::
Run, C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe
return

!e::
Run, explorer
return

!w::
Run, C:\Program Files (x86)\Tencent\WeChat\WeChat.exe
return

!n::
Run, notepad
return