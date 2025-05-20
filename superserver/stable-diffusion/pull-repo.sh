#!/bin/bash

repo_url="https://github.com/AbdBarho/stable-diffusion-webui-docker.git"
local_path="stable-diffusion-webui-docker"
branch_name="master"

# Check if the folder exists
if [ ! -d "$local_path" ]; then
    # The folder does not exist, clone the repository
    git clone "$repo_url" "$local_path"
else
    # The folder exists, update the existing Git folder
    pushd "$local_path" > /dev/null
    git pull origin "$branch_name"
    popd > /dev/null
fi