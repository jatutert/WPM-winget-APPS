# Voer het winget update commando uit en sla de output op in een variabele
$output = winget update -s winget | Out-String

# Converteer de string naar een array van lijnen
$lines = $output -split "`n"

# Filter de lijnen die de kolomheaders bevatten en de lijnen die niet de benodigde data bevatten
$dataLines = $lines | Where-Object { $_ -match '^\S+\s+\S+\s+\S+\s+\S+$' } | Select-Object -Skip 2

# Haal de ID's uit de data lijnen
$ids = $dataLines | ForEach-Object {
    $splitLine = $_ -split '\s+', 0, 'SimpleMatch'
    $splitLine[1] # De tweede kolom bevat de ID
}

# Toon de ID's
$ids | ForEach-Object { Write-Output $_ }
