#! /usr/bin/env bash

git clone https://github.com/notablemind/jupyter-nodejs.git 2> /dev/null

echo ""
echo "Enter a password to access the jupyter notebook: "
read -s password
# Generate a password
hashedPassword=`docker run -it --rm -v /Users/christophersaylor/Projects/dockerfiles/jupyter:/tmp/jupyter jupyter/minimal-notebook start.sh ipython --quiet /tmp/jupyter/get_password.py ${password} | grep sha1:`

echo ""
echo "Enter path to local notebooks: "
read notebook_path

docker build --tag cjsaylor/jupyter-notebook .

echo ""
echo "Run command:"
echo ""
echo "docker run -it --rm -p 8888:8888 -v ${notebook_path}:/home/jovyan/work cjsaylor/jupyter-notebook start-notebook.sh --NotebookApp.password='${hashedPassword}'"
