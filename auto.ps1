Clear-Host

# Obtenir la liste des périphériques audio d'entrée
$audioDevicesIn = Get-AudioDevice -list | Where-Object {$_.Type -eq "Recording"} | Select-Object Index, Default, Type, Name | Format-Table -AutoSize

# Afficher les périphériques audio disponibles pour l'entrée
Write-Host "Périphériques audio disponibles pour l'entrée :"
$audioDevicesIn 

# Demander à l'utilisateur de choisir l'entrée audio par défaut
$inputDevice = Read-Host "Entrez l'Index du périphérique audio pour l'entrée"
# Changer l'entrée audio par défaut
Set-AudioDevice -Index $inputDevice -Verbose

# Obtenir la liste des périphériques audio de sortie
$audioDevicesOut = Get-AudioDevice -list | Where-Object {$_.Type -eq "Playback"} | Select-Object Index, Default, Type, Name | Format-Table -AutoSize

# Afficher les périphériques audio disponibles pour la sortie
Write-Host "Périphériques audio disponibles pour la sortie :"
$audioDevicesOut

# Demander à l'utilisateur de choisir la sortie audio par défaut
$outputDevice = Read-Host "Entrez l'Index du périphérique audio pour la sortie"
# Changer l'entrée audio par défaut
Set-AudioDevice -Index $outputDevice
