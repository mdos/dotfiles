#!/bin/bash
PROG=`basename $0`
BRANCHES=("master" "develop")

# Joins the passed in items by the separator. 
# Ex:
#   joinby ":" a b c #a:b:c
#   joinby "|" ${BRANCHES[@]} # master|develop
joinby() { local IFS="$1"; shift; echo "$*"; }


BRANCHSTR=$(joinby "|" ${BRANCHES[@]})

usage() {
    echo "usage: ${PROG}"
    echo ""
    echo "Cleans up local branches that have been merged to the following branches: "
    for b in ${BRANCHES[@]}; do
        echo "  ${b}"
    done
    echo ""
    echo " ${BRANCHSTR}"
}

if [ $# -gt 0 ]; then
    usage;
    exit 1
fi

clean_branch() {
    echo "Deleting all local branches that have been merged into $1..."
    git branch --merged $1 | egrep -v "^[ *]*($(joinby "|" ${BRANCHES[@]}))$" | xargs git branch -d
}

git fetch --prune
for b in ${BRANCHES[@]}; do
    clean_branch $b
done


