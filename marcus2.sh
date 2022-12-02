#!/bin/bash

APP_IDS=`az ad app list --all | grep appId | cut -d: -f 2 | tr "\"" " "`

for id in $APP_IDS
do
    OWNER_COUNT=`az ad app owner list --id $id | grep displayName | wc -l`
    if [[ $OWNER_COUNT -eq 1 ]]
    then
        echo $id >> single_owner_spn.txt
    fi
done