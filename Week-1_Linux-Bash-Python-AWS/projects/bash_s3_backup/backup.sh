
#!/bin/bash
# This is our first Bash S3 Backup script

# --- Configuration Variables ---
SOURCE_FILE="/mnt/c/Users/tripa/OneDrive/Documents/AWS/cloud-devops-october-2025/Week-1_Linux-Bash-Python-AWS/projects/bash_s3_backup/test.txt" # Make sure this file exists!
S3_BUCKET="bash-files-backup"                          # Replace with your actual S3 bucket name!
DEST_PATH_S3="test_backups/$(basename "$SOURCE_FILE")"  # This will put the file in a 'test_backups' folder in your bucket

# --- Main Logic ---
echo "Starting S3 backup process..."
echo "Attempting to copy '$SOURCE_FILE' to 's3://$S3_BUCKET/$DEST_PATH_S3'"

# The core command: aws s3 cp
aws s3 cp "$SOURCE_FILE" "s3://$S3_BUCKET/$DEST_PATH_S3"

echo "Backup process finished."#