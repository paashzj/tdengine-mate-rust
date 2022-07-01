#!/bin/bash

mkdir -p $TDENGINE_HOME/logs
nohup taosd >>$TDENGINE_HOME/logs/tdengine.stdout.log 2>>$TDENGINE_HOME/logs/tdengine.stderr.log &
