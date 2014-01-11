#!/usr/bin/env bash

function p() {
  PROJECT_PATH=~/Projects

  results=(`find $PROJECT_PATH -type d -maxdepth 2 -iname "*$1*"`)
  count=${#results[@]}

  if [ $count -gt 1 ]; then
    echo ""
    i=0
    while [ $i -lt $count ]; do
      let num=$i+1
      echo "[$num] ${results[$i]}"
      let i+=1
    done
    echo ""
    echo -n "Which project would you like to open [1]: "
    read choice

    if [ ! -n "$choice" ]; then
      let num=0
    else
      let num=$choice-1
    fi
    echo ""
    cd ${results[$num]}
  elif [ $results ]; then
    project=${results[0]}
    cd $project
  else
    echo "Project '$1' not found"
  fi
}
