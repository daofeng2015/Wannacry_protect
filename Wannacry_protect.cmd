%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
@echo offAF_UNSPEC 
color 1f 
echo =============================
echo ����ROM�з��Ŷ�
echo =============================
title �ر�135,137,138,139,445 �˿�
echo. 
echo. 
echo. 
echo ���ڹر�135,137,138,139�˿� ���Ժ� 
netsh advfirewall firewall add rule name = "Disable port 135 - TCP" dir = in action = block protocol = TCP localport = 135,137,138,139
echo. 
netsh advfirewall firewall add rule name = "Disable port 135 - UDP" dir = in action = block protocol = UDP localport = 135,137,138,139
echo. 
echo ���ڹر�445�˿� ���Ժ� 
netsh advfirewall firewall add rule name = "Disable port 445 - TCP" dir = in action = block protocol = TCP localport = 445
echo. 
netsh advfirewall firewall add rule name = "Disable port 445 - UDP" dir = in action = block protocol = UDP localport = 445
echo.
echo ��������˳� 
pause>nul