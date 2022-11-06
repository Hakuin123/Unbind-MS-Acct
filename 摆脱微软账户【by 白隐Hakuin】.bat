chcp 65001
@echo off
title 去你的微软账户  by 白隐Hakuin

::管理员权限运行检测
reg query HKU\S-1-5-19 1>nul 2>nul || goto :Admin

echo ==============================================
echo            去你的微软帐户  by 白隐Hakuin
echo ==============================================
echo.
echo 此工具将删除注册表内帐户有关信息以达到解绑效果
echo 故请在下一步前做好备份，以便出现未知问题时恢复
echo 若退出登陆失败，请在关闭相应程序后，再次尝试
pause
goto :CHOICE MENU

::选择菜单
:CHOICE MENU
cls
set "choice="
echo.
echo 0 - 备份注册表（即将上线）
echo 1 - 解除微软帐户与本地帐户绑定
echo 2 - 退出 Microsoft Store 登录
echo 3 - 退出 Office 登录
echo 4 - 退出 Outlook 登录
echo 5 - 退出 XboxLive 登录
echo.
set /p choice="请选择："
echo.
if /I "%choice%"=="1" goto :UNBIND
if /I "%choice%"=="2" goto :Store
if /I "%choice%"=="3" goto :Office
if /I "%choice%"=="4" goto :Outlook
if /I "%choice%"=="5" goto :XboxLive
goto :CHOICE MENU

:UNBIND
reg delete HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL /va /f
reg delete HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL /va /f
echo 执行完毕，即将自动注销当前账户。如果无需自动注销，可直接关闭命令提示符
echo 手动重新登录后，在 设置-账户-电子邮件和应用 下，单击微软账户xxx@xx.com，点击“删除”即可
pause
shutdown -l

:Office
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\Office\16.0\Common\Identity /va /f
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\Office\16.0\Common\LanguageResources\LocalCache /v RegionalAndLanguageSettingsAccount /f
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\Office\16.0\Common\LanguageResources\LocalCache\HK256@qq.com /va /f
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\Office\16.0\Common\Licensing\LicensingNext\LicenseIdToEmailMapping
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\Office\16.0\Common\Licensing\OlsToken\Identity\O365HomePremRetail /v emailAddress /f
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\Office\16.0\Common\ServicesManagerCache\Identities /va /f
goto :Done

:Outlook
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\Office\Outlook\Settings /va /f
goto :Done

:XboxLive
reg delete HKEY_USERS\S-1-5-21-118145474-1456580743-46744753-1001\Software\Microsoft\XboxLive /va /f
goto :Done

:Done
echo 执行完毕！
echo P.S. 若退出登陆失败，请在关闭相应程序后，再次尝试
pause
goto :EOF


::管理员权限运行检测-后半部分
:Admin
echo 此工具需以管理员身份运行，否则可能拒绝访问。请以管理员权限运行
echo.
pause >nul