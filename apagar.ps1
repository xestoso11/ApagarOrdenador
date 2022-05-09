
#Se indica el tiempo para que se apague el ordednador
Write-Output "Este programa apaga el ordenador despues del tiempo que tu quieras"
Write-Output "Introduce las horas"
[int]$var1 = Read-Host
Write-Output "Introduce los minutos"
[int]$var2 = Read-Host
Write-Output "Introduce los segundos"
[int]$var3 = Read-Host

#Cuenta para calcular en los segundos para apagar el ordenador
$horaSegundos = $var1 * 3600 
$minutosSegundos = $var2 * 60 
[int]$totalDeSegundos = $horaSegundos + $minutosSegundos + $var3

#Apaga el ordenador despues del tiempo indicado
Write-Host "El ordenador se apagara en un total" $totalDeSegundos "segundos"

shutdown -s -t $totalDeSegundos

#cancela el apagado 
Write-Host "Si desea cancelar el apagado programado presiona la tecla y, si no presione cualquier tecla"
$apagado = Read-Host

if ($apagado -eq "y"){

    shutdown -a
}

#Write-Output "Se necesita Poder ejecutar scrips"
#Set-ExecutionPolicy Unrestricted -Confirm