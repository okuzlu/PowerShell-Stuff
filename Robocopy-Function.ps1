$InstallPath = "C:\InstallScript\"

function Copy-Files {
    param (
        [parameter(Mandatory=$true)]
        [String]$Path,
        [String]$Destination = $InstallPath,
        [String]$File,
        [String]$Arg
    )
    Robocopy.exe $Path $Destination $File $Arg
}