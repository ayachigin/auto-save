rm -rf お絵かき自動保存SAIバックアップbeta版
mkdir お絵かき自動保存SAIバックアップbeta版
"C:\Program Files\AutoHotkey\Compiler\ahk2exe.exe" /in main.ahk /out .\お絵かき自動保存SAIバックアップbeta版\お絵かき自動保存SAIバックアップbeta版.exe /icon icon.ico /cp 932
"C:\Program Files\AutoHotkey\Compiler\ahk2exe.exe" /in register.ahk /out .\お絵かき自動保存SAIバックアップbeta版\スタートアップに登録.exe /icon icon.ico /cp 932
"C:\Program Files\AutoHotkey\Compiler\ahk2exe.exe" /in unregist.ahk /out .\お絵かき自動保存SAIバックアップbeta版\スタートアップから削除.exe /icon icon.ico /cp 932
copy config.ini .\お絵かき自動保存SAIバックアップbeta版\
copy 使い方.txt .\お絵かき自動保存SAIバックアップbeta版\
copy ライセンス.txt .\お絵かき自動保存SAIバックアップbeta版\
mkdir .\お絵かき自動保存SAIバックアップbeta版\backup
zip -r .\お絵かき自動保存SAIバックアップbeta版.zip .\お絵かき自動保存SAIバックアップbeta版\
copy .\お絵かき自動保存SAIバックアップbeta版.zip C:\home\projects\html\hakyll\ayachi\programs\
