#!/bin/bash

source /etc/envvars

cd /usr/src/app/pypotter

if [ ! -d /config/Training ]; then
	cp  -R Training_orig/ /config/Training
fi

chown -R 99:100 /config
chmod -R 777 /config

# echo python PyPotter.py $VIDEO_URL 192.168.2.1 $API_KEY True False

python -u PyPotter.py $VIDEO_URL 192.168.2.1 $API_KEY True False False 2>&1 | tee -a /config/pypotter.log