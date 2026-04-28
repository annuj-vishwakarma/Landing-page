$urls = @(
  'https://trustpilotbeautie.com/wp-content/uploads/2025/11/Untitled-design-4.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/Mask-1024x683.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2025/11/1.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2025/11/lanveza-face-Mask-Led-Black-001-1.webp',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/Neues-Projekt8-e1701358364105.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/Mask-2.jpg',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/stars4_5-e1701359544437.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/omnilux_contour.jpg',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/stars4-e1702213167854.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/Mask2-221.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/stars3_5-e1701359581411.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/816045_5CLargeImage_5C1_533x.png',
  'https://trustpilotbeautie.com/wp-content/uploads/2024/10/stars3-e1701359573350.png'
)

$outputDir = 'C:\Users\HP\OneDrive\Desktop\Landing page\images'

foreach ($url in $urls) {
  $filename = [System.IO.Path]::GetFileName($url)
  $outPath = Join-Path $outputDir $filename
  try {
    Invoke-WebRequest -Uri $url -OutFile $outPath -TimeoutSec 30 -UserAgent "Mozilla/5.0"
    Write-Host "Downloaded: $filename"
  } catch {
    Write-Host "FAILED: $filename - $($_.Exception.Message)"
  }
}

Write-Host "All done."
