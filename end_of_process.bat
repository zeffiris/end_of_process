@echo off
@cd /d %~dp0

rem �ŏ�����ԂŎ��s����
if not "%~0"=="%~dp0.\%~nx0" (
     start /min cmd /c,"%~dp0.\%~nx0" %*
     exit
)

rem �v���Z�X���I��������Powershell�����s
@powershell -NoProfile -ExecutionPolicy RemoteSigned -File .\end_of_process.ps1 %*
