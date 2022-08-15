#!/bin/bash

dirlist=`ls -d */`
IFS=$'\n'

for dir in $dirlist; do

    file=`ls -Art $dir | tail -n 1`

    repo=`grep "about.home" $dir$file | awk -F '[/"]' '{print $6}'`

    version=`grep "software.version" $dir$file | awk -F '["]' '{print $2}'`

    owner=`grep "about.home" $dir$file | awk -F '[/]' '{print $4}'`

    checkgit=`grep "about.home" $dir$file | awk -F '[/]' '{print $3}'`


    if [ $checkgit = "github.com" ]; then

       latest=`curl -sL https://api.github.com/repos/$owner/$repo/releases/latest | jq -r ".tag_name"`

        if [ $version != $latest ]; then

           echo "$latest of $owner/$repo is available"

        fi

    fi

done

