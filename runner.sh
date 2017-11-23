#!/bin/sh

if [ -z "$CI_PROJECT_DIR" ]; then
    export CI_PROJECT_DIR="/"
fi

if [ ! -e "$CI_PROJECT_DIR/.gitchangelog.rc" ]; then
  echo "Use project specific settings."
  export GITCHANGELOG_CONFIG_FILENAME="/.gitchangelog.rc"
fi

cd $CI_PROJECT_DIR
gitchangelog > CHANGELOG.md
exit
