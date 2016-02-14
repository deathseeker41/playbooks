#!/bin/sh
#{{ ansible_managed }}
rsync -avz --delete -e 'ssh -o StrictHostKeyChecking=no -i /root/.ssh/backup.key -p8000' /etc backup@home.deathsfolly.net:/storage/backups/$(hostname)/
rsync -avz --delete -e 'ssh -o StrictHostKeyChecking=no -i /root/.ssh/backup.key -p8000' /home backup@home.deathsfolly.net:/storage/backups/$(hostname)/
