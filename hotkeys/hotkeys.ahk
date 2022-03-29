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
Send !{Backspace}
Send exit
Send {Enter}
}
Else
{
Send !{F4}
}
Return

!Enter::
Run, C:\Program Files\Git\git-bash.exe
Return

!+Enter::
Run, C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe
Return

!e::
Run, explorer
Return

!w::
Run, C:\Program Files (x86)\Tencent\WeChat\WeChat.exe
Return

!n::
Run, notepad
Return

!t::
Send !{Space}
Sleep 100
Send todo
Sleep 100
Send {Enter}
Return