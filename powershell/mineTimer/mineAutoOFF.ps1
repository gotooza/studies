$minePro = Get-Process -Name Minecraft.Windows
$minePro.Length
Start-Sleep -s 5

# 起動していたら
if($minePro.Length -eq 1) {
  # Minecraftを前面にもってくる
  add-type -assembly microsoft.visualbasic
  [microsoft.visualbasic.interaction]::AppActivate("Minecraft")

  Start-Sleep -s 5

  #Alt+F4キーを押す
  Add-Type -AssemblyName System.Windows.Forms
  [System.Windows.Forms.SendKeys]::SendWait("%{F4}")
}

