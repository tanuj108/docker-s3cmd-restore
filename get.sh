#!/bin/bash

echo "hi, we are in get.sh.......this script will get the specified file/directory from	 the s3bucket"

LATEST_FILE=`s3cmd ls "$S3_PATH" --recursive | sort | tail -1 | awk '{print $4}'`;
/usr/local/bin/s3cmd get $LATEST_FILE "$DATA_PATH"
