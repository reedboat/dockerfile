#!/bin/bash

# if the /data/mariadb directory doesn't contain anything, then initialise it
if [ -z "$DATADIR" ];
then
    DATADIR="/data/db/data"
fi

if [ ! "$(ls -A $DATADIR)" ]; then
    /usr/bin/mysql_install_db --datadir=$DATADIR--user=mysql
    /usr/bin/mysqld_safe --init-file=/mysql-setup.sql
else
    /usr/bin/mysqld_safe
fi
