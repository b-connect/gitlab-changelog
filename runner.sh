#!/bin/sh

echo "Copy default configuration"
if [ -z "$DRONE_WORKSPACE" ]; then
    export DRONE_WORKSPACE="/"
fi  

if [ ! -e "$DRONE_WORKSPACE/.gitchangelog.rc" ]; then
  echo "Copy default configuration"
  export GITCHANGELOG_CONFIG_FILENAME="/.gitchangelog.rc"
fi

cd $DRONE_WORKSPACE
gitchangelog > CHANGELOG.md
exit
