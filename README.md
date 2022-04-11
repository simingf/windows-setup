# Windows-Setup

Instructions for setting up Windows desktop. Clone this repository into Documents.

# Windows Programs:

-Firefox
-Git & Git Bash
-VSCode
-Intellij Ultimate
-Wechat
-Discord
-Zoom
-Microsoft Todo (MS Store)
-Microsoft Office (Brown)
-Surfshark VPN

# Utilites:

-AutoHotKey
-FancyWM (MS Store)
-PowerToys Run
-Rainmeter (Ultra Calendar)

# Theming:

-UX Theme Patcher
-7tsp GUI
-OldNewExplorer
-Winaero Tweaker
-Fira Code (font)

# Drivers:

-Nvidia Geforce Drivers
-Dell Display Manager
-Intel Driver & Support Assistant

# Games:

-Battle.net & Overwatch
-Valorant
-Steam
-Epic Games

# Coding:

-Python
-Java Development Kit
-Maven
-NodeJS
-Typescript
-React
-Selenium

# Theme Setup:

-Refer to this guide: https://www.deviantart.com/niivu/art/Installing-Windows-Themes-UPDATED-708835586
-UXPatcher to force Windows to accept external themes
-7tsp to install system icons
-OldNewExplorer to modify explorer appearance
-Winaero Tweaker for system tweaks (font / title bar size)
-Search for themes on Deviant Art (niivu has many good themes)
-For niivu themes, NA refers to displaying path in explorer

-current theme: GruvBox (https://www.deviantart.com/niivu/art/Gruvbox-for-Windows-10-877449995)

# Firefox Setup:

-go to 'about:config' and set 'toolkit.legacyUserProfileCustomizations.stylesheets' to 'true'
-go to 'about:support' and click on 'Open Folder' in the 'Profile Folder' row
-copy the 'chrome' folder from the 'Firefox Theme' folder into the opened directory
-or search for a new theme in firefox css reddit / other sites

-current theme: GruvFox (https://github.com/FirefoxCSSThemers/GruvFox)

# Git Bash Setup:

-copy the .bashrc and .minttyrc files from the 'Git Bash' folder into Home directory
-use cpbash to update the bashrc file in 'Git Bash' with the bashrc file in Home
-use cpmintty to update the minttyrc file in 'Git Bash' with the minttyrc file in Home

# HotKeys Setup:

-copy 'hotkeys.ahk' from Win-Setup into Documents
-press Win + R and enter 'shell:startup'
-make an alias of 'hotkeys.ahk' in the startup folder
-use cphotkeys in bash to update the hotkeys file in win-setup with the hotkeys file in Documents

# Creating Application Shortcuts:

-press win + r, and type shell:appsfolder
-find the app you want to make shortcut for, and make an alias for it in desktop
-move the app from desktop to documents and rename it to something simple
-git bash: alias app='doc && start app && exit'
-autohotkey: Run, app /newline/ Return

# VSCode Setup: (extensions)

-auto comment blocks
-auto import
-auto rename tag
-ESLint
-GitLens
-gruvbox theme
-highlight matching tag
-HTML CSS support
-HTML snippets
-material icon theme
-npm intellisense
-open in browser
-path intellisense
-prettier
-rainbow csv
-simple react snippets
-tabout
-TODO highlight
-visual studio intellicode

# Intellij Setup: (extensions)

-atom material icons
-checkstyle
-git tool box
-gruvbox theme
-javadoc
-save actions
-selenium UI testing
