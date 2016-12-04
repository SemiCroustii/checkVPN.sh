#!/bin/sh

FOLDERALERT="/media/08f028cf-d951-4ba1-87b3-1cc14d4bc7f4/root/"

COUNTRY=`curl -s ipinfo.io | jq -r '.country'`
DATE=`date +%d.%m.%Y`

if [ $COUNTRY = "FR" ] # Si mon ip est localisé en france, On créé un fichier d'alerte
then
        echo "Alert VPN inactif !"
        cd $FOLDERALERT
        rm ALERT.VPN.*
        touch "ALERT.VPN."$DATE
fi