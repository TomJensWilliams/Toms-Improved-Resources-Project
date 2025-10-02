for ($index = 0; $index -lt 2; $index++){
    $FullFilePath = Get-ChildItem "C:\Users\tomje\OneDrive\Desktop\GitProjects\Public\Toms-Improved-Resources-Project\Data\Wallpaper" -File | Select-Object -ExpandProperty FullName
    # Write-Host $FullFilePath
    Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name 'WallPaper' -Value "$FullFilePath"
    rundll32.exe user32.dll, UpdatePerUserSystemParameters 1, True
}