#!/bin/bash
# Don't forget to install all build-debs for your system!
# https://developer.mozilla.org/en-US/docs/Mozilla/Firefox_OS/Firefox_OS_build_prerequisites
#
## ./doit.sh -init
# this will download all sources and start the first build. - all in one this takes a long long time!
#
## ./doit.sh -update
# this will download all new updates, delete the 'out' folder and start a new build. - should take not so long ~60min (+/- 30)

if [[ "$1" = "-init" ]]; then
git clone git://github.com/mozilla-b2g/B2G.git 
cp doit.sh B2G/
cd B2G 
git clone https://github.com/markuman/backup-keon.git 
./config.sh keon 


elif [[ "$1" = "-update" ]]; then
./repo sync
rm -r out/
./build.sh

else echo "nothing to do here..."

fi
