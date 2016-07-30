
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

; Ž©“®•Û‘¶ŠÔŠu(•b)
;IniRead, OutputVar, Filename[, Section, Key , Default]
IniRead, autosaveInterval, config.ini, config, interval , 10
IniRead, threshold, config.ini, config, threshold , 1

MsgBox,,‚¨ŠG‚©‚«Ž©“®•Û‘¶, %autosaveInterval%•ªŠÔŠu‚Å%threshold%•bˆÈãŽè‚ªŽ~‚Ü‚Á‚½‚çŽ©“®“I‚É•Û‘¶‚µ‚Ü‚·,5

;•Ï”‰Šú‰»
autosaveInterval:=autosaveInterval*60
threshold := threshold * 1000
delay := 0
;Gui, Submit  ; Save the input from the user to each control's associated variable.

SetTimer,autosave,1000


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
