#!/bin/bash

# Capture input arguments
S3_DIR="$1"
S3_BUCKET="$2"
TAR_FILE="$3"

# Ensure temp directory exists
TEMP_DIR="../../../temp"
mkdir -p $TEMP_DIR

# Copy the node_modules tar file from S3 to temp directory
echo "Copying $TAR_FILE from S3..."
sudo cp "${S3_DIR}/${S3_BUCKET}/${TAR_FILE}" "${TEMP_DIR}/"

# Move the tar file to the working directory
echo "Moving $TAR_FILE to the working directory..."
cp "${TEMP_DIR}/${TAR_FILE}" ./

# Unzip the node_modules tar file
echo "Unzipping $TAR_FILE..."
tar -xvzf "$TAR_FILE"

npm install

# # Install dependencies if package.json has changed
# if [[ $(git diff --name-only HEAD~1 HEAD | grep 'package.json') ]]; then
#   echo "Installing dependencies..."
#   npm install
# else
#   echo "No changes in package.json; skipping npm install."
# fi
