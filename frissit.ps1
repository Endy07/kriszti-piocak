$basePath = (Get-Location).Path
$files = Get-ChildItem -Filter *.html -Recurse | Where-Object Name -ne 'index.html' | ForEach-Object {
    $_.FullName.Substring($basePath.Length + 1).Replace('\', '/')
}
if ($files) {
    $files | ConvertTo-Json | Set-Content files.json -Encoding UTF8
} else {
    '[]' | Set-Content files.json -Encoding UTF8
}
