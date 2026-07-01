$files = Get-ChildItem -Filter *.html | Where-Object Name -ne 'index.html' | Select-Object -ExpandProperty Name
if ($files) {
    $files | ConvertTo-Json | Set-Content files.json -Encoding UTF8
} else {
    '[]' | Set-Content files.json -Encoding UTF8
}
