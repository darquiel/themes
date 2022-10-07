
push-location ~/serve/SRC/skel
pwd
$PrList = gh pr list --search base:mja/SER-8421
# write-host $PrList
if ( $PrList -eq $null ) { Write-Host "No open PR's" } else { Write-Host "Open PR's" }
push-location ~/Ubersicht/checkpr.widget/resources
pwd
remove-item ghprstatus.png
if ( $PrList -eq $null ) { copy-item ghprstatus.0.png ghprstatus.png } else { copy-item ghprstatus.1.png ghprstatus.png }
pop-location
pop-location