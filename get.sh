#!/bin/bash

echo "hi, we are in get.sh.......this script will get the specified file/directory from	 the s3bucket"

LATEST_FILE=`s3cmd ls "$S3_PATH" --recursive | sort | tail -1 | awk '{print $4}'`;
/usr/local/bin/s3cmd get $LATEST_FILE "$DATA_PATH";

FILE_TO_BE_UNZIPPED=`s3cmd ls s3://tanuj108demo/lex/daily/postgres-backup --recursive | sort | tail -1 | awk '{split($4,a,"/"); print a[7]}'`;
gzip -d "$DATA_PATH"/$FILE_TO_BE_UNZIPPED
