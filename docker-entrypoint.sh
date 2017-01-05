#! /bin/bash

set -e

if [ "$1" = '' ]; then
    celery worker --workdir /app --concurrency=10 -n worker-$ENVIRONMENT-1@$GITHUB_REVISION --loglevel=INFO \
    	--without-gossip --without-mingle --without-heartbeat
fi

exec "$@"