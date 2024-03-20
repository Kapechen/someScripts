$item = Get-ItemProperty -Path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings'
$value = 1
if($item.ProxyEnable -eq $value){
    Write-Host "Proxy On"
    Set-ItemProperty -Path 'HKCU:\\Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings' -Name ProxyEnable -Value 0
}else{
    Write-Host "Proxy Off"
}

