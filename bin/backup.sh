#!/bin/sh -e

BACKUP_FILE="${DATABASE_NAME}-$(date +%Y-%m-%d-%H-%M-%S).dump"

pg_dump -Fc "${DATABASE_URL}" > "${BACKUP_FILE}"
aws s3 cp "${BACKUP_FILE}" "s3://${BACKUP_BUCKET}/${DATABASE_NAME}/${BACKUP_FILE}"
