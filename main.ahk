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
return

; Ž©“®•Û‘¶ŠÔŠu(•b)
autosaveInterval = 600
delay := 0

autosave:
        if delay > 0
        {
                delay := delay - 1
                return
        }

        If A_TimeIdlePhysical>3000
        {
                IfWinActive, ahk_group autosaveahk
                {
                        send,^s
                        ; ŽŸ‚É•Û‘¶‚ðŽŽ‚Ý‚é‚Ü‚Å‚ÌŽžŠÔ(•b)
                        delay=autosaveInterval
                        return
                }
        }
        return 
