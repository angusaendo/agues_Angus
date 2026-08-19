$f = Get-ChildItem "K:\agues_aengus\aengus_\dist" -Recurse -File -ErrorAction SilentlyContinue
if ($f) { Write-Host ("Existing dist: " + $f.Count + " files") } else { Write-Host "No dist folder" }