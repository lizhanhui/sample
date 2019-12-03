#!/bin/bash
work_dir=$(dirname "$0")
echo "Current working directory: $work_dir"
cd $work_dir
work_dir=$(pwd)
if [[ -d _build ]]; then
    rm -fr _build
fi
mkdir _build
cd _build
echo `pwd`
cmake -DCMAKE_INSTALL_PREFIX:PATH=$1 ..
make
make install

