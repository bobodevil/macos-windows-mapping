SetNumLockState, AlwaysOn
SetCapsLockState, AlwaysOff 


#IfWinActive ahk_exe Acrobat.exe
	LAlt & w::Send ^{f4}
	F17::Return
#IfWinActive


#IfWinActive ahk_exe POWERPNT.exe
	LAlt & c::
	If GetKeyState("Shift","p")
		Send +^c
	else
		Send ^c
	Return

	LAlt & v::
	If GetKeyState("Shift","p")
		Send +^v
	else
		Send ^v
	Return

#IfWinActive



SetTitleMatchMode, 2
meetWindow := "Meet –"
#If WinActive("ahk_exe brave.exe") && WinActive(meetWindow)
	LAlt & CapsLock::Send ^e
	~LWin & CapsLock::Send ^e
	LAlt & F17::Send ^e
	~LWin & F17::Send ^e
	CapsLock::Send ^d
	F17::Send ^d
#If


#IfWinActive ahk_exe brave.exe
	LAlt & LButton::Send ^{LButton}
	LAlt & w::Send ^w
	;F17::Return
#IfWinActive

#IfWinActive ahk_exe chrome.exe
	LAlt & LButton::Send ^{LButton}
	LAlt & w::Send ^w
#IfWinActive

#IfWinActive ahk_exe msedge.exe
	LAlt & LButton::Send ^{LButton}
	LAlt & w::Send ^w
#IfWinActive

#IfWinActive ahk_exe firefox.exe
	LAlt & LButton::Send ^{LButton}
	LAlt & w::Send ^w
#IfWinActive

#IfWinActive ahk_exe Teams.exe
	LAlt & CapsLock::Send ^+o
	~LWin & CapsLock::Send ^+o
	LAlt & F17::Send ^+o
	~LWin & F17::Send ^+o
	CapsLock::Send ^+m
	F17::Send ^+m
	LAlt & LButton::Send ^{LButton}
#IfWinActive

#IfWinActive ahk_exe Zoom.exe
	LAlt & CapsLock::Send !v
	~LWin & CapsLock::Send !v
	LAlt & F17::Send !v
	~LWin & F17::Send !v
	CapsLock::Send !a
	F17::Send !a
#IfWinActive

#IfWinActive ahk_exe Code.exe
	LAlt & w::Send ^{f4}
	LAlt & n::Send ^n

	LAlt & f::
	If GetKeyState("Shift","p")
		Send +^f
	else
		Send ^f
	Return
#IfWinActive

#IfWinActive ahk_exe Explorer.exe
	LAlt & n::Send ^n
	LAlt & w::Send !{F4}
#IfWinActive


#IfWinActive ahk_exe OUTLOOK.exe
	LAlt & w::Send {Esc}
	LAlt & LButton::Send ^{LButton}
#IfWinActive

;For keyboards without ~ buttons (Required for linux command)
+esc::Send ~

;More comfortable to take screenshots.
LAlt & s::
If GetKeyState("Shift","p")
 run, ms-screenclip:
else
 Send ^s
Return

;For keyboards without Delete buttons
Shift & Backspace::Send {Delete}

LAlt & f::Send ^f
LAlt & x::Send ^x
LAlt & c::Send ^c
LAlt & v::Send ^v
LAlt & t::Send ^t
LAlt & z::Send ^z
LAlt & y::Send ^y
LAlt & r::Send ^r
LAlt & a::Send ^a
LAlt & g::Send ^g
LAlt & =::Send ^{=}
LAlt & -::Send ^{-}
LAlt & 0::Send ^{0}


;formatting
LAlt & b::Send ^b
LAlt & i::Send ^i
LAlt & u::Send ^u

LAlt & `::Send !`t
LAlt & Space::Send #q
~LWin & c::Send ^c ; remove annoying cortanall
CapsLock::return



