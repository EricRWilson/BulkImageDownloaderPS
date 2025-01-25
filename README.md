# Download Images from URL List with PowerShell

This PowerShell script downloads images from a list of URLs provided in a text file and saves them into a specified folder. If the folder does not exist, it will be created automatically.

## Features

- Downloads images from URLs listed in a text file.
- Automatically creates the target folder if it doesn't exist.
- Handles file naming based on the URL.
- Provides user-friendly output with success and error messages.

## Requirements

- Windows PowerShell 5.0 or later.
- Internet access to download the images.

## Usage

### 1. Clone or Download the Script
Download the script to your local machine or clone the repository using:
```bash
git clone https://github.com/EricRWilson/BulkImageDownloaderPS.git
```

### 2. Prepare the Input File
Create a text file containing a list of image URLs, one URL per line. For example:
```
https://example.com/image1.jpg
https://example.com/image2.png
https://example.com/image3.gif
```

### 3. Run the Script
Run the script using PowerShell and provide the path to the input file and the target folder as parameters:
```powershell
.\DownloadImages.ps1 -UrlFilePath "C:\path\to\image_urls.txt" -TargetFolder "C:\path\to\images"
```

### Parameters
- `-UrlFilePath`: The path to the text file containing image URLs.
- `-TargetFolder`: The folder where the images will be saved.

### Example
```powershell
.\DownloadImages.ps1 -UrlFilePath "C:\images\urls.txt" -TargetFolder "C:\images\downloads"
```

## Troubleshooting

### Script Execution Policy
If you encounter an error like `running scripts is disabled on this system`, you need to update your PowerShell execution policy:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
Make sure to run this command in PowerShell before executing the script.

### Failed Downloads
If any URLs fail to download, the script will notify you with an error message.

## License

This script is open-source and licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---

## Contributing

Feel free to submit issues or pull requests for any improvements or features you'd like to add.
