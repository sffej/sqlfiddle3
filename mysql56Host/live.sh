#!/bin/bash

export DATABASE_COUNT=`mysql -u root -ppassword mysql -e "show databases like 'db_%'" -ss | wc -l`

echo "Found ${DATABASE_COUNT} MySQL fiddle databases"

if [ $DATABASE_COUNT -gt 25 ]
then
  exit 1
else
  exit 0
fi
