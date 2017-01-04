#! /bin/bash

set -e

if [ "$1" = '' ]; then
    celery worker --workdir /app --loglevel=INFO
fi

exec "$@"
