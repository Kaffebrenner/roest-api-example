#!/bin/bash

if [ ! -f .env ]; then
	echo ".env file not found"
	exit 1
fi

set -a
source .env
set +a

if [[ -z $1 ]]
then
	echo "ERROR: missing argument. USAGE: ./run.sh get_inventory.py";
	exit 1;
fi

python3 $@
