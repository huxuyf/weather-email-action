#!/bin/sh

set -eux

LANGUAGE="zh-CN"
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"
CITY=Wuxing

# curl -H "Accept-Language: $LANGUAGE" -H "User-Agent: $UA" -o result.html https://wttr.in/$CITY
curl -H "Accept-Language:$LANGUAGE" -H "User-Agent:$UA" https://wttr.in/$CITY.png > $CITY.png
echo "今日天气预报" > result.html
