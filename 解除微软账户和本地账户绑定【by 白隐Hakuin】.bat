@echo off
title 解除微软账户和本地账户绑定  by 白隐Hakuin

::管理员权限运行检测
reg query HKU\S-1-5-19 1>nul 2>nul || goto :Admin

echo ==============================================
echo Win10/11解除微软账户和本地账户绑定  by 白隐Hakuin
echo ==============================================
echo.
echo 此工具将会删除注册表内账户有关信息以达到解绑效果
echo 故请在下一步前做好备份，以便于出现未知问题时恢复
echo 另外，此脚本需以管理员身份运行，否则可能拒绝访问
pause
reg delete HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL /va /f
reg delete HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL /va /f
echo 修改已完成。即将自动注销本地账户登录，如果不需要可直接关闭命令提示符
echo 手动重新登录后，在设置-账户-电子邮件和应用下，单击微软账户xxx@xx.com，点击“删除”即可
pause
shutdown -l

::管理员权限运行检测-后半部分
:Admin
echo 请以管理员身份运行
echo.
pause >nul
