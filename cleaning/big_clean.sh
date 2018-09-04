#!/bin/bash

TARCHIVE=$1
SCRATCH_DIR=$2

tar -xzf $TARCHIVE -C $SCRATCH_DIR

INNER_DIR=${TARCHIVE%.*}

#delete_files=(`grep --files-with-matches 'DELETE ME!' $SCRATCH_DIR/$INNER_DIR/*`)

rm `grep --files-with-matches 'DELETE ME!' $SCRATCH_DIR/$INNER_DIR/*`

#for file in $SCRATCH_DIR/$INNER_DIR/*; do
#	match_string=`grep --files-with-matches 'DELETE ME!' $file`
#	if [ ! -z $match_string ]
#	then
#		rm $file
#	fi
#done
