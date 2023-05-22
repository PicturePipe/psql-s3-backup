# psql-s3-backup

This build a very simple container that backs up psql databases to S3.

This containers expects the following environment variables:

- `DATABASE_NAME` name of the database that should be used for identifying the backup
- `DATABASE_URL` url how to connect to the database
- `BACKUP_BUCKET` name of the S3 bucket were the database backup should be sent to
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
