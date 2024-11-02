echo Hello

# Capture input arguments
# S3_BUCKET="$1"
# S3_DIR="$2"
# TAR_FILE="$3"

# # Ensure temp directory exists
# TEMP_DIR="../../../temp"
# mkdir -p $TEMP_DIR

# # Copy the node_modules tar file from S3 to temp directory
# echo "Copying $TAR_FILE from S3..."
# sudo su -c "cp ${S3_BUCKET}/${S3_DIR}/${TAR_FILE} ${TEMP_DIR}/" ec2-user

# # Move the tar file to the working directory
# echo "Moving $TAR_FILE to the working directory..."
# cp "${TEMP_DIR}/${TAR_FILE}" ./

# # Unzip the node_modules tar file
# echo "Unzipping $TAR_FILE..."
# tar -xvzf "$TAR_FILE"

# # Install dependencies if package.json has changed
# if [[ $(git diff --name-only HEAD~1 HEAD | grep 'package.json') ]]; then
#   echo "Installing dependencies..."
#   npm install
# else
#   echo "No changes in package.json; skipping npm install."
fi
