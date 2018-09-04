#!/bin/bash

TARCHIVE=$1
SCRATCH_DIR=$2

tar -xzf $TARCHIVE -C $SCRATCH_DIR

INNER_DIR=${TARCHIVE%.*}

#delete_files=(`grep --files-with-matches 'DELETE ME!' $SCRATCH_DIR/$INNER_DIR/*`)

rm `grep --files-with-matches 'DELETE ME!' $SCRATCH_DIR/$INNER_DIR/*`

here=$(pwd)

cd $SCRATCH_DIR

tar -czf $here/cleaned_$TARCHIVE $INNER_DIR
