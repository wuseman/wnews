#!/bin/bash


TITLE="$(curl -Ls http://feeds.idg.se/idg/ETkj|grep '</title>'|awk -F '<title>' '{print $2}'|cut -d'<' -f1 > 1)"
URL="$(curl -Ls http://feeds.idg.se/idg/ETkj|grep '</title>'|awk -F '<guid isPermaLink="false">' '{print $2}'|cut -d'<' -f1 > 2)"
printf "%237s\n"|tr ' ' '-' 
echo -e "\e[1;36mLatest From: IDG.se\e[0m"
printf "%237s\n"|tr ' ' '-' 
wwdiff 1 2|head -n 30|sed 1d|sed 1d 
rm 1 2
