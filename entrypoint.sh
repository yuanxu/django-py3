#!/bin/bash
case "$1" in 
    "upgrade" )
         ./upgrade.sh
    ;;
    "runserver_plus" )
         ./runserver_plus.sh
    ;;
    "run" )
        ./run.sh
    ;;
    * )
        echo "please specify cmd only in upgrade, runserver_plus, or run."
        exit 1;
    ;;
esac
