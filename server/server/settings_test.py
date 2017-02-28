from .settings import *

LOGGING['handlers']['file']['filename'] = os.path.join(LOG_DIR, 'test_debug.log')
DATABASES['default'] = {
    'ENGINE': 'django.db.backends.sqlite3',
    'NAME': os.path.join(BASE_DIR, 'test_db.sqlite3'),
}