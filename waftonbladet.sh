#!/bin/bash


TITLE="$(curl -Ls https://rss.aftonbladet.se/rss2/small/pages/sections/aftonbladet/|grep '</title>'|awk -F '<title>' '{print $2}'|cut -d'[' -f3|cut -d] -f1 > 1)"
URL="$(curl -Ls https://rss.aftonbladet.se/rss2/small/pages/sections/aftonbladet/|grep -i link|cut -d'>' -f2 |cut -d'<' -f1 > 2)"
printf "%237s\n"|tr ' ' '-' 
echo -e "\e[1;33mLatest From: Aftonbladet.se\e[0m"
printf "%237s\n"|tr ' ' '-' 
wwdiff 1 2|head -n 30|sed 1d|sed 1d
rm 1 2
printf "%237s\n"|tr ' ' '-' 
