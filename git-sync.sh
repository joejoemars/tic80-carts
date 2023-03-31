#!/bin/bash

notifVAR='Adding files ('`date`')'
notify-send "$notifVAR" -a "Git Sync"

git add .
git reset -- main/git-sync.sh

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
