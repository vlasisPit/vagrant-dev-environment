#!/bin/bash
# Transform scripts to Unix format
find /scripts/ -iname "*.sh" | xargs sed -i -e 's/\r$//'
sudo apt-get install --install-recommends linux-generic-lts-xenial