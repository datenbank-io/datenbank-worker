import os
BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')
CELERY_RESULT_BACKEND = os.environ.get('CELERY_RESULT_BACKEND', 'rpc://')
CELERY_IMPORTS = ('helloworld-worker', )

BROKER_POOL_LIMIT = 1 # Will decrease connection usage
BROKER_HEARTBEAT = None # We're using TCP keep-alive instead
BROKER_CONNECTION_TIMEOUT = 30 # May require a long timeout due to Linux DNS timeouts etc
CELERY_SEND_EVENTS = True
CELERY_EVENT_QUEUE_EXPIRES = 60 # Will delete all celeryev. queues without consumers after 1 minute.
