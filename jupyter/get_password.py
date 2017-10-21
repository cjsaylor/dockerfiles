import sys
from notebook.auth import passwd

sys.stdout.write(passwd(sys.argv[1]))