#!/bin/bash


TITLE="$(curl -Ls https://www.sweclockers.com/feeds/nyheter|grep '</title>'|awk -F '<title>' '{print $2}'|cut -d'[' -f3|cut -d] -f1|sed 1d > 1)"
URL="$(curl -Ls https://www.sweclockers.com/feeds/nyheter|grep -i link|cut -d'>' -f2 |cut -d'<' -f1 |sed 1d|awk 'length > 50' > 2)"
printf "%237s\n"|tr ' ' '-' 
echo -e "\e[0;33mLatest From: Sweclockers.se\e[0m"
printf "%237s\n"|tr ' ' '-' 
wwdiff 1 2|head -n 30|sed 1d|sed 1d
rm 1 2
