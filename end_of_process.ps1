#�I�����������v���Z�X��EXE�t�@�C���p�X�̎w��
#��
$End_Process="D:\Test\hoge.exe"

#�I��
Get-Process | Where-Object {$_.Path -like $End_Process} | Stop-Process -Force
