@"
   _____ _____  __________ _   _ ________  __   __   _______        
  / ____|_   _|/ ___|_   _| \ | |__   __| /  \_/  \_/___   /        
 | (___   | | / / __  | | |  \| |  | |   | /\ | /\ |   /  /         
  \___ \  | || | |_ | | | | . ` |  | |   | || | || |  /  /          
  ____) |_| |_\ \_| |_| |_| |\  |  | |   | \/ | \/ | /  /           
 |_____/|_____|\____|_____|_| \_|  |_|    \__/ \__/ /_ /        

"@ | Write-Host "🧹 Limpiando archivos temporales..."
Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "✅ Limpieza completada."
