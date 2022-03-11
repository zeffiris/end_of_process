#終了させたいプロセスのEXEファイルパスの指定
#例
$End_Process="D:\Test\hoge.exe"

#終了
Get-Process | Where-Object {$_.Path -like $End_Process} | Stop-Process -Force
