#!/bin/bash

mkdir -p $TDENGINE_HOME/logs
nohup $TDENGINE_HOME/mate/tdengine-mate >>$TDENGINE_HOME/logs/tdengine_mate.stdout.log 2>>$TDENGINE_HOME/logs/tdengine_mate.stderr.log &
