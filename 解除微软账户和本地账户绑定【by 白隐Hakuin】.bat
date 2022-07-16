@echo off
echo ==============================================
echo Win10/11解除微软账户和本地账户绑定  by 白隐Hakuin
echo ==============================================
echo.
echo 此工具将会删除注册表内账户有关信息以达到解绑效果
echo 故请在下一步前做好备份，以避免可能存在的未知问题
echo 另外，此脚本需以管理员身份运行，否则可能拒绝访问
pause
reg delete HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL /va /f
reg delete HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL /va /f
echo 重新登录后，在设置-账户-电子邮件和应用账户下，单击微软账户xxx@xx.com，点击“删除”即可。
pause