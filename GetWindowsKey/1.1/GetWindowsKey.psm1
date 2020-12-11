<#
.Synopsis
Displays the Windows License Key

.Description
  Displays the Windows License Key. No Parameters are required.
#>
function Get-WindowsKey {

  $windowsEdition = (Get-WmiObject Win32_OperatingSystem).Caption
  $windowsKey = powershell "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"
  Write-Host "Windows Edition:        " $windowsEdition
  Write-Host "Windows License Key:    " $windowsKey

}
