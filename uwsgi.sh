#!/bin/bash

cat > wsgi.py << EOF
from $1 import app

if __name__ == "__main__":
    app.run()
EOF

cat > $1.ini << EOF
[uwsgi]
module = wsgi:app

master = true
processes = 5

socket = $1.sock
chmod-socket = 660
vacuum = true

die-on-term = true
EOF
