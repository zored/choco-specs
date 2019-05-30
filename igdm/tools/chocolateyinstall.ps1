$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'igdm'
    softwareName   = 'IG:dm'
    fileType       = 'exe'
    url            = 'https://github.com/ifedapoolarewaju/igdm/releases/download/v2.6.5/IGdm-Setup-2.6.5.exe'
    silentArgs     = '--silent'
    checksum       = '64C2AC578EF81FCCAF9BA955E0724E47B48C8D696F545CCACA3005DB18D4B766'
    checksumType   = 'sha256'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs