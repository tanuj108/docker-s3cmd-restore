docker run --env-file ./variablesget.list -e S3_PATH=s3://tanuj108demo/lex/daily/cassandra-backup -v /ebsvolume1:/data --rm s3get;
