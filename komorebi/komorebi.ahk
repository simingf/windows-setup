#SingleInstance Force

; Enable focus follows mouse
Run, komorebic.exe focus-follows-mouse enable, , Hide

; Ensure there are 5 workspaces created on monitor 0
Run, komorebic.exe ensure-workspaces 0 5, , Hide

; Give the workspaces some optional names
Run, komorebic.exe workspace-name 0 0 one, , Hide
Run, komorebic.exe workspace-name 0 1 two, , Hide
Run, komorebic.exe workspace-name 0 2 three, , Hide
Run, komorebic.exe workspace-name 0 3 four, , Hide
Run, komorebic.exe workspace-name 0 4 five, , Hide

; Set the padding of the different workspaces
Run, komorebic.exe workspace-padding 0 0 5, , Hide
Run, komorebic.exe container-padding 0 0 5, , Hide
Run, komorebic.exe workspace-padding 0 1 5, , Hide
Run, komorebic.exe container-padding 0 1 5, , Hide
Run, komorebic.exe workspace-padding 0 2 5, , Hide
Run, komorebic.exe container-padding 0 2 5, , Hide
Run, komorebic.exe workspace-padding 0 3 5, , Hide
Run, komorebic.exe container-padding 0 3 5, , Hide
Run, komorebic.exe workspace-padding 0 4 5, , Hide
Run, komorebic.exe container-padding 0 4 5, , Hide

; Always show chat apps on the second workspace
Run, komorebic.exe workspace-rule exe Discord.exe 0 1, , Hide

; Always float IntelliJ popups, matching on class
Run, komorebic.exe float-rule class SunAwtDialog, , Hide
; Always float Control Panel, matching on title
Run, komorebic.exe float-rule title "Control Panel", , Hide
; Always float Task Manager, matching on class
Run, komorebic.exe float-rule class TaskManagerWindow, , Hide
; Always float Wally, matching on executable name

; Always manage forcibly these applications that don't automatically get picked up by komorebi
Run, komorebic.exe manage-rule exe git-bash.exe, , Hide

; Identify applications that close to the tray
Run, komorebic.exe identify-tray-application exe Discord.exe, , Hide

; Identify applications that have overflowing borders
Run, komorebic.exe identify-border-overflow exe Discord.exe, , Hide

; Change the focused window, Alt + Vim direction keys
!Left::
Run, komorebic.exe focus left, , Hide
return

!Down::
Run, komorebic.exe focus down, , Hide
return

!Up::
Run, komorebic.exe focus up, , Hide
return

!Right::
Run, komorebic.exe focus right, , Hide
return

; Move the focused window in a given direction, Alt + Shift + Vim direction keys
!+Left::
Run, komorebic.exe move left, , Hide
return

!+Down::
Run, komorebic.exe move down, , Hide
return

!+Up::
Run, komorebic.exe move up, , Hide
return

!+Right::
Run, komorebic.exe move right, , Hide
return

; Increase Width Left
!h::
Run, komorebic.exe resize-edge left increase, , Hide
return

; Increase Height Down
!j::
Run, komorebic.exe resize-edge down increase, , Hide
return

; Increase Height Up
!k::
Run, komorebic.exe resize-edge up increase, , Hide
return

; Increase Width Right
!l::
Run, komorebic.exe resize-edge right increase, , Hide
return

; Flip horizontally, Alt + Z
!z::
Run, komorebic.exe flip-layout horizontal, , Hide
return

; Flip vertically, Alt + X
!x::
Run, komorebic.exe flip-layout vertical, , Hide
return

; Promote the focused window to the top of the tree, Alt + Shift + Enter
!+Enter::
Run, komorebic.exe promote, , Hide
return

; Toggle the Monocle layout for the focused window, Alt + Shift + F
!+f::
Run, komorebic.exe toggle-monocle, , Hide
return

; Toggle native maximize for the focused window, Alt + Shift + =
!+=::
Run, komorebic.exe toggle-maximize, , Hide
return

; Float the focused window, Alt + T
!t::
Run, komorebic.exe toggle-float, , Hide
return

; Force a retile if things get janky, Alt + Shift + R
!+r::
Run, komorebic.exe retile, , Hide
return

; Switch to workspace
!1::
Send !
Run, komorebic.exe focus-workspace 0, , Hide
return

!2::
Send !
Run, komorebic.exe focus-workspace 1, , Hide
return

!3::
Send !
Run, komorebic.exe focus-workspace 2, , Hide
return

!4::
Send !
Run, komorebic.exe focus-workspace 3, , Hide
return

!5::
Send !
Run, komorebic.exe focus-workspace 4, , Hide
return

; Move window to workspace
!+1::
Run, komorebic.exe move-to-workspace 0, , Hide
return

!+2::
Run, komorebic.exe move-to-workspace 1, , Hide
return

!+3::
Run, komorebic.exe move-to-workspace 2, , Hide
return

!+4::
Run, komorebic.exe move-to-workspace 3, , Hide
return

!+5::
Run, komorebic.exe move-to-workspace 4, , Hide
return
