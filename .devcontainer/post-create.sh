#!/bin/bash

source $1/.devcontainer/configit.sh $1

sudo apt update
sudo apt install  -y default-jdk