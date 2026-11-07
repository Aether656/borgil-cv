# Rebuilds cv/borgil-cv-mn.pdf and cv/borgil-cv-en.pdf from cv/cv.html.
# Needs the local server on http://localhost:3000 (the "borgil-cv" preview) and Google Chrome.
$chrome = 'C:\Program Files\Google\Chrome\Application\chrome.exe'
$out = Split-Path -Parent $MyInvocation.MyCommand.Path
$profileDir = Join-Path $env:TEMP 'borgil-cv-pdf'
foreach ($lang in 'mn', 'en') {
  $pdf = Join-Path $out "borgil-cv-$lang.pdf"
  & $chrome --headless=new --disable-gpu --no-first-run --user-data-dir="$profileDir" --no-pdf-header-footer --virtual-time-budget=8000 --print-to-pdf="$pdf" "http://localhost:3000/cv/cv.html?lang=$lang" 2>$null | Out-Null
  "{0}  {1:N0} KB" -f $pdf, ((Get-Item $pdf).Length / 1KB)
}
