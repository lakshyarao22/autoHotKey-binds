#Requires AutoHotkey v2.0

cDown := 0

*CapsLock::
{
    global cDown
    Send "{Blind}{Ctrl Down}"
    cDown := A_TickCount
}

*CapsLock Up::
{
    global cDown
    if (A_TickCount - cDown) < 150
        Send "{Blind}{Ctrl Up}{Esc}"
    else
        Send "{Blind}{Ctrl Up}"
}

PgDn::Send "{Media_Play_Pause}"


^+t:: {
    WinSetAlwaysOnTop -1, "A"
}