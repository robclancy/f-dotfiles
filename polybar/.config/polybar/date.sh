format="%H:%M, %a"
local=$(date +"%d %a, %b %H:%M")
sydney=$(TZ=Australia/Sydney date +"$format")
brisbane=$(TZ=Australia/Brisbane date +"$format")
utc=$(TZ=UTC date +"$format")
est=$(TZ=America/New_York date +"$format")
canada=$(TZ=Canada/Vancouver date +"$format")
mexico=$(TZ=America/Mexico_City date +"$format")

output=""
output+="%{F#999}NSW: %{F#777}$sydney    "
output+="%{F#999}QLD: %{F#777}$brisbane    "
output+="%{F#999}MX: %{F#777}$mexico    "
output+="%{F#fff} $local%{F#777}    "
output+="%{F#999}UTC: %{F#777}$utc    "
output+="%{F#999}NY: %{F#777}$est    "
output+="%{F#999}VANC: %{F#777}$canada"

echo "$output"

