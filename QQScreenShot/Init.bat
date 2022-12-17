@echo off
echo 正在创建桌面快捷方式

set Program=%cd%\Bin\QQScreenShot.exe

set LnkName=QQ截图

set WorkDir=%cd%

set Desc=QQScreenShot
 
if not defined WorkDir call:GetWorkDir "%Program%"
(echo Set WshShell=CreateObject("WScript.Shell"^)
echo strDesKtop=WshShell.SpecialFolders("DesKtop"^)
echo Set oShellLink=WshShell.CreateShortcut(strDesKtop^&"\%LnkName%.lnk"^)
echo oShellLink.TargetPath="%Program%"
echo oShellLink.WorkingDirectory="%WorkDir%\Bin"
echo oShellLink.WindowStyle=1
echo oShellLink.Description="%Desc%"
echo oShellLink.Save)>makelnk.vbs
echo 桌面快捷方式创建成功！ 
makelnk.vbs
del /f /q makelnk.vbs
echo 请以兼容模式运行程序!
pause
goto :eof
:GetWorkDir
set WorkDir=%~dp1
set WorkDir=%WorkDir:~,-1%
goto :eof

