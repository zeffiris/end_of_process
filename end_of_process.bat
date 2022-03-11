@echo off
@cd /d %~dp0

rem 最小化状態で実行する
if not "%~0"=="%~dp0.\%~nx0" (
     start /min cmd /c,"%~dp0.\%~nx0" %*
     exit
)

rem プロセスを終了させるPowershellを実行
@powershell -NoProfile -ExecutionPolicy RemoteSigned -File .\end_of_process.ps1 %*
