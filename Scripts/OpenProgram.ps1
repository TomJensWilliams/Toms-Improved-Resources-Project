# Load the assembly containing SendKeys
Add-Type -AssemblyName System.Windows.Forms

# Simulate typing "Hello World!"
# The caret (^) symbol represents the Control key
# The ~ symbol represents the enter key
<#
[System.Windows.Forms.SendKeys]::SendWait("Hello World!")
[System.Windows.Forms.SendKeys]::SendWait("^c")
[System.Windows.Forms.SendKeys]::SendWait("~")
[System.Windows.Forms.SendKeys]::SendWait('{ESC}')
#>

[System.Windows.Forms.SendKeys]::SendWait("^{ESC}")
Start-Sleep -Seconds 1 # Pauses the script for 1 seconds
[System.Windows.Forms.SendKeys]::SendWait("Paint~")