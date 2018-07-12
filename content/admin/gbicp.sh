
#!/bin/bash

BACKUP_CONTENT=/home/lukelu/gbicp.org/backup_content
WORKING_DIRECTORY=/home/lukelu/gbicp.org/working
PUBLIC_WWW=/var/www/gbicp.org/public_html
BACKUP_WWW=/home/lukelu/gbicp.org/backup_html
MY_DOMAIN=gbicp.org

set -e

rsync -aqz $WORKING_DIRECTORY/content/ $BACKUP_CONTENT
rsync -aqz /ftpshare/content/ $WORKING_DIRECTORY/content
rsync -aqz /ftpshare/static/ $WORKING_DIRECTORY/static

rsync -aqz $PUBLIC_WWW/ $BACKUP_WWW
trap "echo 'A problem occurred.  Reverting to backup.'; rsync -aqz --del $BACKUP_WWW/ $PUBLIC_WWW" EXIT

rm -rf $PUBLIC_WWW/*
/usr/bin/hugo -s $WORKING_DIRECTORY -d $PUBLIC_WWW -b "http://${MY_DOMAIN}"
trap - EXIT
