# 🚀 Bash S3 Backup Automation Project

## ✨ Project Overview

This project demonstrates the creation of a robust Bash script designed to automate the backup of critical files and directories from a local system to Amazon S3. Leveraging the power of Bash scripting and the AWS Command Line Interface (CLI), this solution ensures data durability, accessibility, and provides a foundational understanding of cloud-based backup strategies.

It showcases practical skills in shell scripting, cloud resource interaction, and system automation—key competencies for DevOps, Cloud Engineering, and System Administration roles.

## 🌟 Features

### Current Capabilities (Day 1)
- **Basic File Upload:** Successfully copies a specified local file to an Amazon S3 bucket.
- **AWS CLI Integration:** Utilizes the `aws s3 cp` command for seamless interaction with S3.
- **Dynamic S3 Pathing:** Constructs the S3 destination path to maintain organized backups.
- **Environment Setup & Troubleshooting:** Experience in configuring the AWS CLI and resolving common environment issues (e.g., "command not found").

### Planned Enhancements (Day 2 & Beyond)
- **Log File Filtering (grep/awk):** Implement basic text processing to filter relevant data from log files before backup.
- **Timestamped Backups:** Automatically append a timestamp to backup filenames for versioning and easier retrieval.
- **Directory Backup:** Extend functionality to support backing up entire directories, not just single files.
- **Dummy Log File Upload:** Integrate the `aws s3 cp` command for uploading a simulated log file, showcasing practical application.
- **Cron Job Scheduling:** Set up a `cron` job to automate the execution of the backup script at predefined intervals (e.g., hourly, daily) for continuous data protection.
- **Error Handling & Logging:** Implement robust error checking and comprehensive logging to monitor script execution and quickly diagnose issues.
- **Configuration Management:** Externalize configuration variables into a separate file for easier customization and management.
- **Compression (tar/gzip):** Add functionality to compress files and directories before uploading to S3, optimizing storage and transfer costs.

## 🛠️ Technologies Used

*   **Bash Scripting:** For automation and orchestration.
*   **AWS Command Line Interface (CLI):** For programmatic interaction with AWS services.
*   **Amazon S3:** Cloud object storage for reliable and scalable backups.
*   **`grep` / `awk` (Upcoming):** For powerful text pattern searching and processing.
*   **`cron` (Upcoming):** For scheduling automated tasks on Linux systems.
*   **`tar` / `gzip` (Upcoming):** For file and directory compression.

## 🚀 Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

*   **AWS Account:** An active AWS account is required.
*   **AWS CLI v2:** Installed and configured on your system (Linux, WSL, or Git Bash).
    *   Ensure your AWS credentials are configured using `aws configure` and that the IAM user has appropriate S3 permissions (`s3:PutObject`, `s3:ListBucket` at minimum).
*   **Bash Environment:** A Linux environment (Ubuntu, CentOS, etc.), Windows Subsystem for Linux (WSL), or Git Bash on Windows.

### Installation & Setup

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/BuildWiyhSanjana0205/bash_s3_backup.git
    cd bash_s3_backup
    ```
2.  **Create a Dummy File for Testing:**
    ```bash
    echo "This is a test file for S3 backup automation." > test.txt
    ```
3.  **Create an S3 Bucket:**
    Ensure you have an S3 bucket created in your AWS account (e.g., `my-devops-backup-bucket`).

4.  **Update Script Variables:**
    Open `backup.sh` and modify the `S3_BUCKET` variable with your actual S3 bucket name.
    ```bash
    # backup.sh
    S3_BUCKET="your-s3-bucket-name" # <--- IMPORTANT: Update this line
    ```
5.  **Make the Script Executable:**
    ```bash
    chmod +x backup.sh
    ```

### Usage

To run the backup script:

```bash
./backup.sh '''

Upon successful execution, you should see output similar to:

Starting S3 backup process...
Attempting to copy '/home/youruser/projects/bash_s3_backup/test_file.txt' to 's3://your-s3-bucket-name/test_backups/test_file.txt'
upload: ./test_file.txt to s3://your-s3-bucket-name/test_backups/test_file.txt
Backup process finished.

Verify the uploaded file in your AWS S3 console under the specified bucket and path (e.g., s3://your-s3-bucket-name/test_backups/test_file.txt).
📸 Verification
Here's a screenshot confirming the successful upload of test_file.txt to the S3 bucket:
<!-- This tag will be replaced by an image by the model -->
<img src="screenshots/s3-upload-verification.png" alt="S3 Upload Verification" width="600"/>

🤝 Contributing
Feel free to fork this repository, submit pull requests, or open issues for suggestions and improvements.

🧑‍💻 Author
[Sanjana Tripathy]
GitHub Profile
LinkedIn Profile
