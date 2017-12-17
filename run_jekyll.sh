#!/usr/bin/env bash

# Docs: https://github.com/envygeeks/jekyll-docker

runjekyll_dir=$(cd $(dirname $BASH_SOURCE[0]) && pwd)

export JEKYLL_DEBUG=''
export VERBOSE=''
export FORCE_POLLING=''

cd $runjekyll_dir
cd ..
$runjekyll_dir/dscripts/run.sh -ip jekyll build

