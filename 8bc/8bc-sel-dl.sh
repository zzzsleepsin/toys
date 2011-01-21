#!/bin/sh
DIR=${HOME}/Chiptune
mkdir -p ${DIR}
cd ${DIR}
U=`xsel`
if [ -n "`echo $U | grep ^Playing`" ]; then
	U=`echo $U | cut -d ' ' -f 2-| sed -e s,.$,,`
fi
wget -c $U
