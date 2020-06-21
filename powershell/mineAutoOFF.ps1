# Minecraftを前面にもってくる
add-type -assembly microsoft.visualbasic
[microsoft.visualbasic.interaction]::AppActivate("Minecraft")

Start-Sleep -s 5

#Alt+F4キーを押す
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.SendKeys]::SendWait("%{F4}")


