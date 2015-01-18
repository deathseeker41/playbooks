#!/bin/sh
#{{ ansible_managed }}
rsync -avz --delete -e 'ssh -o StrictHostKeyChecking=no -i /root/.ssh/backup.key -p8001' /etc backup@home.deathsfolly.net:/data/backups/$(hostname)/
rsync -avz --delete -e 'ssh -o StrictHostKeyChecking=no -i /root/.ssh/backup.key -p8001' /home backup@home.deathsfolly.net:/data/backups/$(hostname)/
