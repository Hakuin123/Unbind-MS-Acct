@echo off
echo ==============================================
echo Win10/11���΢���˻��ͱ����˻���  by ����Hakuin
echo ==============================================
echo.
echo �˹��߽���ɾ��ע������˻��й���Ϣ�Դﵽ���Ч��
echo ��������һ��ǰ���ñ��ݣ��Ա�����ܴ��ڵ�δ֪����
echo ���⣬�˽ű����Թ���Ա������У�������ܾܾ�����
pause
reg delete HKEY_CURRENT_USER\Software\Microsoft\IdentityCRL /va /f
reg delete HKEY_USERS\.DEFAULT\Software\Microsoft\IdentityCRL /va /f
echo ���µ�¼��������-�˻�-�����ʼ���Ӧ���˻��£�����΢���˻�xxx@xx.com�������ɾ�������ɡ�
pause