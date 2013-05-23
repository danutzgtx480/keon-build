#!/bin/bash
# Don't forget to install all build-debs for your system!
# https://developer.mozilla.org/en-US/docs/Mozilla/Firefox_OS/Firefox_OS_build_prerequisites

git clone git://github.com/mozilla-b2g/B2G.git &&
cd B2G &&
git clone https://github.com/markuman/backup-keon.git &&
./config.sh keon &&
./build.sh
