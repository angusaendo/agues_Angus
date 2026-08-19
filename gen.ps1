
$worksData = @()
$files = Get-ChildItem "K:\agues_aengus\aengus_\作品" -Recurse -File | Sort-Object DirectoryName, Name
foreach ($f in $files) {
  $folder = $f.Directory.Name
  $name = $f.Name
  $ext = [System.IO.Path]::GetExtension($name).ToLower()
  $type = if ($ext -eq ".mp4") { "video" } else { "image" }
  $category = switch ($folder) {
    "电商作品" { "电商设计" }
    "建模作品" { "C4D建模" }
    "VI作品" { "VI品牌" }
    "视频作品" { "AI视频" }
    default { "其他" }
  }
  $title = [System.IO.Path]::GetFileNameWithoutExtension($name)
  if ($title -match '^(\d+)$') { $title = $matches[1] }
  $worksData += [PSCustomObject]@{ src = "作品/$folder/$name"; title = $title; category = $category; type = $type }
}
$jsonPath = "K:\agues_aengus\aengus_\portfolio_images.json"
$worksData | ConvertTo-Json -Depth 5 | Out-File $jsonPath -Encoding UTF8
Write-Host ("Created portfolio_images.json with " + $worksData.Count + " entries")
