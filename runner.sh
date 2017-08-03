#!/bin/sh

echo "Copy default configuration"
if [ -z "$DRONE_WORKSPACE" ]; then
    export DRONE_WORKSPACE="/src"
fi  

if [ -z "$DRONE_WORKSPACE" ]; then
    export DRONE_WORKSPACE="/src"
fi  

if [ ! -e "$DRONE_WORKSPACE/.gitchangelog.rc" ]; then
  echo "Copy default configuration"
  export GITCHANGELOG_CONFIG_FILENAME="/.gitchangelog.rc"
fi

exec gitchangelog > CHANGELOG.md