#!/bin/sh

ARGS=("$@")
NUMBER_OF_ARGS=${#ARGS[@]}
MINIMUM_NUMBER_OF_ARGS=1
if [ "$#" -lt $MINIMUM_NUMBER_OF_ARGS ]; then

    # Default Command. View logs of the most recent merge commit.
    MERGE_COMMIT=$(git log --merges -1 --pretty=format:%H)
    OTHER_ARGS=("${ARGS[@]}")
else

    # The first argument stands for a specific merge commit to view its logs.
    MERGE_COMMIT=${ARGS[0]}
    OTHER_ARGS=("${ARGS[@]:1:$NUMBER_OF_ARGS}")
fi

PARENTS_OF_MERGE=$(git log $MERGE_COMMIT --pretty=format:%P -1)
BASE_COMMIT=$(git merge-base --octopus $PARENTS_OF_MERGE)
git log --graph $BASE_COMMIT..$MERGE_COMMIT $OTHER_ARGS

exit