#!/bin/bash

working_dir=$1

echo "working on" $working_dir

function parseThem() {
    treeName=$(dirname "$1")
    lastFolder=$(echo "$treeName" | sed 's:.*/::')
    fileName=$(echo "$1" | sed 's:.*/::')
    newFileName=$(echo ${lastFolder// /_}.TIF)
    newFilePath=$(echo "$treeName"/"$newFileName")
    oldNamePath=$(echo "$treeName"/"$fileName")
    
    mv -- "$oldNamePath" "$newFilePath"

}
export -f parseThem

find $working_dir -name "*.TIF" -exec bash -c "parseThem \"{}\"" {} \;
