param (
    [Parameter(Mandatory = $true)]
    [string]$UrlFilePath,

    [Parameter(Mandatory = $true)]
    [string]$TargetFolder
)

# Check if the folder exists, if not, create it
if (-not (Test-Path -Path $TargetFolder)) {
    New-Item -ItemType Directory -Path $TargetFolder
}

# Read the URLs from the text file
$Urls = Get-Content -Path $UrlFilePath

# Download each image
foreach ($Url in $Urls) {
    try {
        # Extract the file name from the URL
        $FileName = [System.IO.Path]::GetFileName($Url)
        $TargetPath = Join-Path -Path $TargetFolder -ChildPath $FileName

        # Download the image
        Invoke-WebRequest -Uri $Url -OutFile $TargetPath -ErrorAction Stop
        Write-Host "Downloaded: $Url" -ForegroundColor Green
    } catch {
        Write-Host "Failed to download: $Url" -ForegroundColor Red
    }
}
