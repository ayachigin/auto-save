;ƒXƒ^[ƒgƒAƒbƒv‚É“o˜^
;FileCreateShortcut, %A_ScriptName%, %A_Startup%\‚¨ŠG‚©‚«Ž©“®•Û‘¶.lnk

;Clip Studio
GroupAdd autosaveahk, ahk_class 742DEA58-ED6B-4402-BC11-20DFC6D08040

;SAI
GroupAdd autosaveahk, ahk_class sfl_window_class

;AZPainter2
GroupAdd autosaveahk, ahk_exe AzPainter2.exe

;neko paint
GroupAdd autosaveahk, ahk_class TNekoPaintForm

; FireAlpaca
GroupAdd autosaveahk, ahk_exe FireAlpaca.exe
;GroupAdd autosaveahk, 

#Persistent
SetTimer,autosave,1000

; Ž©“®•Û‘¶ŠÔŠu(•b)
;IniRead, OutputVar, Filename[, Section, Key , Default]
IniRead, autosaveInterval, config.ini, config, interval , 600
IniRead, threshold, config.ini, config, threshold , 3
autosaveInterval:=autosaveInterval*60
threshold := threshold * 1000
delay := 0
;Gui, Submit  ; Save the input from the user to each control's associated variable.
;MsgBox %autosaveInterval%•ªŠÔŠu‚Å%threshold%•bˆÈãŽè‚ªŽ~‚Ü‚Á‚½‚çŽ©“®“I‚É•Û‘¶‚µ‚Ü‚·.
return

autosave:
        if delay > 0
        {
                delay := delay - 1
                return
        }

        If (threshold == 0) || (A_TimeIdlePhysical > %threshold%)
        {
                IfWinActive, ahk_group autosaveahk
                {
                        send,^s
                        ; ŽŸ‚É•Û‘¶‚ðŽŽ‚Ý‚é‚Ü‚Å‚ÌŽžŠÔ(•b)
                        delay:=autosaveInterval
                        return
                }
        }
        return 
