#!/bin/bash

if [[ -z $1 ]]; then
    echo "Project cannot be emtpy"
    exit 1
fi

# $1 is the target which we pass from .travis.yml file. projects/csd or projects/librarian
#echo "Building Project $1"

# Split the target with / character
#ARRTARGET=(${1//// })

# Get the project to run the scripts on.
#PROJECT=${ARRTARGET[1]}

# Run the scripts that needs to be run on the project
npm install
ng lint --project=${1}
