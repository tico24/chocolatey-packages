$packageArgs = @{
  PackageName         = "vault"
  Url                 = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_386.zip"
  UnzipLocation       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Url64               = "https://releases.hashicorp.com/vault/$($version)/vault_$($version)_windows_amd64.zip"
  Checksum            = 'bc15df0f1b5bf704e02b97e0bcc276c2ae5e0ae0a03ca232dc7007ff45755328'
  ChecksumType        = 'sha256'
  Checksum64          = 'a57d005cf3c494e7dc78f841d802f1b8cd39f23bb08743f5e488d0344998395e'
  version             = '1.2.0'  
}

Install-ChocolateyZipPackage @packageArgs