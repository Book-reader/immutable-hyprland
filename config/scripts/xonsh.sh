#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Creating xonsh directory in /var/opt'
python3 -m venv /var/opt/xonsh
echo 'Installing xonsh in venv'
/var/opt/xonsh/bin/pip install 'xonsh[full]'
echo 'Creating symlinks to /usr/bin'
ln -sf /var/opt/xonsh/bin/xonsh* /usr/bin
