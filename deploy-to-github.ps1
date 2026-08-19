# Angus Portfolio - GitHub Deploy Script
$repoName = "aengus_"
$zipPath = "K:\agues_aengus\aengus_.zip"
$gitPath = "K:\agues_aengus\aengus_"

Write-Output "1. Create GitHub repository: https://github.com/new"
Write-Output "   Repository name: $repoName"
Write-Output ""
Write-Output "2. Push to GitHub:"
Write-Output "   cd $gitPath"
Write-Output '   git remote add origin https://github.com/YOUR_USERNAME/aengus_.git'
Write-Output "   git branch -M main"
Write-Output "   git push -u origin main"
Write-Output ""
Write-Output "ZIP file ready: $zipPath"
