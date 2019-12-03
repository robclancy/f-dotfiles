format="%H:%M, %a"
local=$(date +"%d %a, %b %H:%M")
sydney=$(TZ=Australia/Sydney date +"$format")
cet=$(TZ=CET date +"$format")
brisbane=$(TZ=Australia/Brisbane date +"$format %B %d")
chile=$(TZ=America/Santiago date +"$format")
utc=$(TZ=UTC date +"$format")
bst=$(TZ=BTC date +"$format")
canada=$(TZ=America/Vancouver date +"$format")
mexico=$(TZ=America/Mexico_City date +"$format")

output=""
output+="%{F#999}CET: %{F#777}$cet    "
output+="%{F#999}QLD: %{F#777}$brisbane    "
output+="%{F#999}MX: %{F#777}$mexico    "
#output+="%{F#ddd}CHL: %{F#aaa}$chile    "
output+="%{F#fff} $local%{F#777}    "
output+="%{F#999}UTC: %{F#777}$utc    "
output+="%{F#999}BST: %{F#777}$bst    "
output+="%{F#999}VANC: %{F#777}$canada"

echo "$output"

