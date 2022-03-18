#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;#o::
;WinGetActiveTitle, Title
;Send %Title%
;Return

#Esc::
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

#f::
Run, firefox
return

#Enter::
Run, C:\Program Files\Git\git-bash.exe
return

#n::
Run, notepad
return