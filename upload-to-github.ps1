# GitHub Upload Script for Angus Portfolio
# Usage: Run this after setting $env:GITHUB_TOKEN

$repoName = "aengus_"
$zipPath = "K:\agues_aengus\aengus_.zip"
$gitPath = "K:\agues_aengus\aengus_"

# Create repo via API
$headers = @{
    Authorization = "token $env:GITHUB_TOKEN"
    Accept = "application/vnd.github.v3+json"
}

# Get current user
$userResponse = Invoke-RestMethod -Uri "https://api.github.com/user" -Headers $headers
Write-Output "GitHub user: $($userResponse.login)"

# Create repo
$repoBody = @{
    name = $repoName
    private = $true
    auto_init = $true
} | ConvertTo-Json

try {
    $repo = Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method Post -Headers $headers -Body $repoBody -ContentType "application/json"
    Write-Output "Repository created: $($repo.html_url)"
} catch {
    Write-Output "Repo may already exist or error: $_"
}

# Push local repo
Set-Location $gitPath
git remote add origin "https://$($userResponse.login):$env:GITHUB_TOKEN@github.com/$($userResponse.login)/$repoName.git" 2>$null
git branch -M main
git push -u origin main

Write-Output "Done! Repository: https://github.com/$($userResponse.login)/$repoName"
