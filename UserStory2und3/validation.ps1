# PowerShell-Skript für die Automatisierung des Tests
param(
    [string]$IotHubName = "kyshub001Hub",
    [string]$DeviceName,
    [string]$storageAccountName = "kyshub001",
    [string]$storageContainerName = "kyshub001results",
    [string]$connectionString = "DefaultEndpointsProtocol=https;AccountName=kyshub001;AccountKey=0MDZe7RlreH7+qRhATZWfHmkCLfvkyJHh5z7CU08eFcwu1+x7I/0tITNwPTBzNEBvXJiFK0h9jCY+AStZvS7iw==;EndpointSuffix=core.windows.net"
)
# Funktion zum Senden einer Testnachricht an den IoT-Hub
# Funktion zum Senden einer Testnachricht an den IoT-Hub und Speichern als JSON im Blob
function Send-IoTMessage {
    param(
        [string]$message,
        [string]$IotHubName,
        [string]$DeviceName,
        [string]$storageAccountName,
        [string]$storageContainerName,
        [string]$connectionString
    )

    # Nachricht im JSON-Format erstellen
    $jsonMessage = @{
        "message" = $message
        "timestamp" = (Get-Date).ToString()
    } | ConvertTo-Json

    # Temporäre Datei erstellen, um die JSON-Nachricht zu speichern
    $tempFile = New-TemporaryFile

    # JSON-Nachricht in die temporäre Datei schreiben
    $jsonMessage | Set-Content -Path $tempFile.FullName -Encoding UTF8
    # Löschen der Datei wenn sie schon existiert
    if (Test-StorageMessage -storageAccountName $storageAccountName -storageContainerName $storageContainerName -connectionString $connectionString){
        Write-Host "Deleting"
        az storage blob delete --account-name $storageAccountName --container-name $storageContainerName --name "Test.json" --connection-string $connectionString
    }
    else{
        Write-Host "Doesnt exist"
    }
    # Hochladen der temporären Datei in den Blob
    az storage blob upload --account-name $storageAccountName --container-name $storageContainerName --name "Test.json" --file $tempFile.FullName --connection-string $connectionString

    # Temporäre Datei löschen
    Remove-Item -Path $tempFile.FullName
}

# Funktion zum Überprüfen, ob die Nachricht im Storage-Konto gespeichert wurde
function Test-StorageMessage {
    param(
        [string]$storageAccountName,
        [string]$storageContainerName,
        [string]$connectionString
    )

    # Überprüfen, ob die Nachricht im Storage-Konto gespeichert wurde
    $blobList = az storage blob list --account-name $storageAccountName --container-name $storageContainerName --connection-string $connectionString | ConvertFrom-Json
    Start-Sleep 10
    if ($blobList.name -eq "Test.json") {
        return $true
    } else {
        return $false
    }
}

# Hauptskript
# Senden einer Testnachricht
$message = "Niklas muss doppelt Spritgeld zahlen"
# Senden einer Testnachricht und Speichern als JSON im Blob
Send-IoTMessage -message $message -IotHubName $IotHubName -DeviceName $DeviceName -storageAccountName $storageAccountName -storageContainerName $storageContainerName -connectionString $connectionString

# Warten auf das Eintreffen der Nachricht im Storage-Konto
Start-Sleep -Seconds 20

# Überprüfen, ob die Nachricht im Storage-Konto gespeichert wurde
if (Test-StorageMessage -storageAccountName $storageAccountName -storageContainerName $storageContainerName -connectionString $connectionString) {
    Write-Output "Die Testnachricht wurde erfolgreich im Storage-Konto gespeichert."
} else {
    Write-Output "Fehler: Die Testnachricht wurde nicht im Storage-Konto gespeichert."
}