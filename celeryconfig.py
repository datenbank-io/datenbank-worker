import os
BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')
CELERY_RESULT_BACKEND = os.environ.get('CELERY_RESULT_BACKEND', 'rpc://')
CELERY_IMPORTS = ('helloworld-worker', )
