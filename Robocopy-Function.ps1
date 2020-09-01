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

<# Examples

Copy cmd.exe to $InstallPath: 
Copy-Files -Path "C:\Windows\System32\" -File "cmd.exe"

Copy (Mirror) C:\Users Directory to $InstallPath\UserData: 
Copy-Files -Path "C:\Users\" -Destination "$InstallPath\UserData" -Arg "/MIR"

#>

