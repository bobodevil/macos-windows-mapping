Menu, Tray, Icon, imageres.dll, 250, 1
Menu, Tray, Tip, Lets Hack the Keys

SetNumLockState, AlwaysOn
SetCapsLockState, AlwaysOff 

~LWin & t:: ; Show the active App
	Keywait, LWin
	Keywait, RWin
	MsgBox % "Your Program : " . GetActiveWindowProcessName()

return


GetActiveWindowProcessName() {
    WinGet, Active_ID, ID, A
    WinGet, Active_Process, ProcessName, ahk_id %Active_ID%
    return Active_Process
}



;
#IfWinActive ahk_exe devenv.exe
	LAlt & w::Send ^{f4}
	F17::Return
#IfWinActive


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



CheckGoogleMeet() {
	meetWindow := "Google Meet "
	WinGetTitle, title, A
	If InStr(title, meetWindow) {
		return true
	}
	return false
}


#If WinActive("ahk_exe brave.exe")
		LAlt & CapsLock::Send ^e
		~LWin & CapsLock::Send ^e
		~LWin & F17::Send ^e
		CapsLock::Send ^d
		LAlt & F17::
			If CheckGoogleMeet() {
				If GetKeyState("Shift","p") {
					Send ^!h
					return
				} else {
					Send ^e
				}
			}
			return
		F17::
			If CheckGoogleMeet() {
				Send ^d
			}			
		return
#If

#If WinActive("ahk_exe opera.exe")
		LAlt & CapsLock::Send ^e
		~LWin & CapsLock::Send ^e
		~LWin & F17::Send ^e
		CapsLock::Send ^d
		LAlt & F17::
			If CheckGoogleMeet() {
				If GetKeyState("Shift","p") {
					Send ^!h
					return
				} else {
					Send ^e
				}
			}
			return
		F17::
			If CheckGoogleMeet() {
				Send ^d
			}			
		return
#If



#IfWinActive ahk_exe brave.exe
	LAlt & LButton::Send ^{LButton}
	LAlt & w::Send ^w
	;F17::Return
#IfWinActive

#IfWinActive ahk_exe opera.exe
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

; Danny Scripts KeyBinding 

;For keyboards without ~ buttons (Required for linux command)
+esc::Send ~

;More comfortable to take screenshots.
LAlt & s::
If GetKeyState("Shift","p")
 run, ms-screenclip:
else
 Send ^s
Return


;Aligning the emoicon with mac
LAlt & Space::
If GetKeyState("LCtrl","p")
 Send #{.}
else
 ;Send #q 
 Send !{Space}
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
~LWin & c::Send ^c ; remove annoying cortanall
CapsLock::return


LAlt & q:: ; Quit with Delay
KeyWait, q, T0.18
    If ErrorLevel
        {
            Send !{F4}
            sleep 1000
        }
Return  

;For some reason the Windows key gets stuck - Recommended to add below to reset
Keywait, LWin
Keywait, RWin
