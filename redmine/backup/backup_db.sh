#!/bin/bash 
# Postgres backup
DATE=`date +%Y-%m-%d:%H:%M:%S`;export PGPASSWORD="password";pg_dump -U redmine -h localhost -d redmine_production -f /shareddb/backup_$DATE.sql