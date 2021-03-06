$propertiesExist = Test-Path localDevDeploy.properties

if ($propertiesExist -eq $true) {
    Write-Host ""
    Write-Host "Reading localDevDeploy.properties"
    Write-Host ""

    # Build the settings we will work with
    $properties = Get-Content localDevDeploy.properties
    $settings = @{""=""};
    foreach ($line in $properties) {
        $items = $line.Split("=")
        $settings.Add($items[0], $items[1])
    }

    # Ensure we know what things to operate on
    if($settings.ContainsKey("arma3Install") -eq $true -and $settings.ContainsKey("pboManagerInstall") -eq $true) {
        $oldExists = Test-Path DUWS-R_dev.Altis.pbo
        if($oldExists -eq $true) {
            Remove-Item DUWS-R_dev.Altis.pbo
        }

        # Pack the folder
        $command = """" + $settings["pboManagerInstall"] + "\PBOConsole.exe"" -pack .\source .\DUWS-R_dev.Altis.pbo"
        Invoke-Expression "& $command"

        # Ensure the SP destination is clear
        $oldPath = $settings["arma3Install"] + "\Missions\DUWS-R_dev.Altis.pbo"
        $oldExists = Test-Path $oldPath
        if($oldExists -eq $true) {
            Remove-Item $oldPath
        }
        # Pull other 'real' release out by renaming them to .bak
        $tmp = $settings["arma3Install"] + "\Missions\"
        $otherFiles = Get-ChildItem $tmp -filter "DUWS-R_*.pbo"
        foreach ($file in $otherFiles){
            Rename-Item "$tmp$file" "$tmp$file.bak"
        }
        Copy-Item DUWS-R_dev.Altis.pbo $oldPath

        # Ensure the SP destination is clear
        $oldPath = $settings["arma3Install"] + "\MPMissions\DUWS-R_dev.Altis.pbo"
        $oldExists = Test-Path $oldPath
        if($oldExists -eq $true) {
            Remove-Item $oldPath
        }
        # Pull other 'real' release out by renaming them to .bak
        $tmp = $settings["arma3Install"] + "\MPMissions\"
        $otherFiles = Get-ChildItem $tmp -filter "DUWS-R_*.pbo"
        foreach ($file in $otherFiles){
            Rename-Item "$tmp$file" "$tmp$file.bak"
        }
        Copy-Item DUWS-R_dev.Altis.pbo $oldPath
        Remove-Item DUWS-R_dev.Altis.pbo
    } else {
        Write-Host "could not find arma3Install and pboManagerInstall keys in properties file"
    }

    Write-Host ""
} else {
    Write-Host ""
    Write-Host "Cannot find localDevDeploy.properties. Please create and configure the file then try again."
    Write-Host ""
}