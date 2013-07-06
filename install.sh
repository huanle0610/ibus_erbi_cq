#!/bin/bash
set -x
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

if [ "$1" = 'u' ];then
    echo 'update db'
    ibus-table-createdb -s erbi_cq.txt
fi
# copy db
cp erbi_cq.db /usr/share/ibus-table/tables/
# copy logo
cp erbi_cq.png /usr/share/ibus-table/icons/
