#!/bin/bash

cd /home/deck/.local/share/com.nesbox.tic/TIC-80/tic80-carts/

notifVAR='Pulling files ('`date`')'
notify-send "$notifVAR" -a "Git Sync"

git pull

notifVAR='Adding files ('`date`')'
notify-send "$notifVAR" -a "Git Sync"

git add .

notifVAR='Committing files ('`date`')'
notify-send "$notifVAR" -a "Git Sync"

commitMSG='Files synced from script ('`date`')'
git commit -m "$commitMSG"

notifVAR='Pushing files ('`date`')'
notify-send "$notifVAR" -a "Git Sync"

git push

notifVAR='Files pushed, exiting... ('`date`')'
notify-send "$notifVAR" -a "Git Sync"

exit
