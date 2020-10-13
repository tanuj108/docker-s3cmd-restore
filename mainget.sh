docker run --env-file ./variablesget.list -e S3_PATH=s3://tanuj108demo/lex/daily/postgres-backup/ -v /var/lib/postgresql:/data --rm s3get;
