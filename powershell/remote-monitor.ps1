# Monitorea procesos y uso de CPU

Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 Name, CPU
