#!/bin/bash

#check if two argument passed

if [ "$#" -ne 2 ]; then
	echo "Enter two areguments according to this format $0 directory_to_backup destination_dir"
	exit 1
fi

DIR_2_BKP=$1
DEST_DIR=$2
DATE=$(date +%Y%m%d)

#check is source dir is exists
if [ ! -d "$DIR_2_BKP" ];
then
	echo "Error $DIR_2_BKP not exits,quitting.."
	exit 1
fi

#create destination directory if not exists
mkdir -p $DEST_DIR

#give name to backup file
BACKUP_FILE_PATH="${DEST_DIR}/backup_$(basename $DIR_2_BKP)_$DATE.tar.gz"

#create archive and compress
tar -czf $BACKUP_FILE_PATH $DIR_2_BKP

#check if the backup process is success
if [ $? -eq 0 ]; then
	echo "Backup process Success ! $BACKUP_FILE_PATH created."
	exit 1
fi












