#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Creating xonsh directory in /var/opt'
python3 -m venv /opt/xonsh
echo 'Installing xonsh in venv'
/opt/xonsh/bin/pip install 'xonsh[full]'
echo 'Creating symlinks to /usr/bin'
ln -sf /opt/xonsh/bin/xonsh* /usr/bin
