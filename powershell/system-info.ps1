@"
   _____ _____  __________ _   _ ________  __   __   _______        
  / ____|_   _|/ ___|_   _| \ | |__   __| /  \_/  \_/___   /        
 | (___   | | / / __  | | |  \| |  | |   | /\ | /\ |   /  /         
  \___ \  | || | |_ | | | | . ` |  | |   | || | || |  /  /          
  ____) |_| |_\ \_| |_| |_| |\  |  | |   | \/ | \/ | /  /           
 |_____/|_____|\____|_____|_| \_|  |_|    \__/ \__/ /_ /        

"@ | Write-Host "📋 Información del sistema:"
Get-ComputerInfo | Select-Object CsName, WindowsVersion, OsArchitecture, BiosVersion, TotalPhysicalMemory
