#!/bin/bash
case "$1" in 
    "upgrade" )
         /opt/startup/upgrade.sh
    ;;
    "runserver_plus" )
         /opt/startup/runserver_plus.sh
    ;;
    "run" )
        /opt/startup/run.sh
    ;;
    * )
        echo "please specify cmd only in upgrade, runserver_plus, or run."
        exit 1;
    ;;
esac
