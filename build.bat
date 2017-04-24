rm -rf お絵かき自動保存
mkdir お絵かき自動保存
"C:\Program Files\AutoHotkey\Compiler\ahk2exe.exe" /in main.ahk /out .\お絵かき自動保存\お絵かき自動保存.exe /icon icon.ico /cp 932
"C:\Program Files\AutoHotkey\Compiler\ahk2exe.exe" /in register.ahk /out .\お絵かき自動保存\スタートアップに登録.exe /icon icon.ico /cp 932
"C:\Program Files\AutoHotkey\Compiler\ahk2exe.exe" /in unregist.ahk /out .\お絵かき自動保存\スタートアップから削除.exe /icon icon.ico /cp 932
copy config.ini .\お絵かき自動保存\
copy 使い方.txt .\お絵かき自動保存\
copy ライセンス.txt .\お絵かき自動保存\
zip -r .\お絵かき自動保存.zip .\お絵かき自動保存\
copy .\お絵かき自動保存.zip C:\home\projects\html\hakyll\ayachi\programs\
