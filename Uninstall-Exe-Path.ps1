# Array for Apps 
$Apps = @()

# Loop through each App, get fullpath and uninstall App Silent
# $Path Parameter is Mandatory
function Uninstall-Apps {
    param (
        [parameter(Mandatory=$true)]
        [string]$Path
    )
    
    foreach ($App in $Apps) {

        Get-ChildItem $Path -Filter $App -Recurse | % {$_.FullName}

        # Arguments depend on the Program
        # Common Argument is /S
        Start-Process $Path -ArgumentList "uninstall /q" -Wait
        
    }

}