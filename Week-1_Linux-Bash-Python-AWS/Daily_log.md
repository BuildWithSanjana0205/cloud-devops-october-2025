# 🗓️ Daily Log — 4th October 2025

## 🧩 Topic: Linux Non-Root User & Basic Commands

### 🔹 What I Learned Today
- Understood the **importance of creating a non-root user** in Linux.
- Learned how to:
  - Check current user using `whoami`.
  - View users in the system using `cat /etc/passwd`.
  - Create a new user using `sudo adduser <username>`.
  - Add the user to the `sudo` group using `sudo usermod -aG sudo <username>`.
  - Verify groups using `groups <username>`.

### 🔹 Why a Non-Root User is Important
- The root user has **unlimited access** — any accidental command can harm the system.
- A non-root user provides **security** and **safety**, preventing system-wide damage.
- It follows the **principle of least privilege**, which is also a best practice in **DevOps and cloud environments**.

### 🔹 Linux Command Practice
- Explored **basic Linux commands** (navigation, file handling, user management, etc.).
- Realized that **these commands can’t be mastered in a single day**, but I will use them **every day** to get comfortable.
- Created a cheat sheet (`linux-commands.md`) to refer to during practice.

### 💭 Reflection
> Today was foundational — I understood the structure of Linux users and permissions, and started my command-line journey.  
> From tomorrow, I’ll practice a few commands daily while working on projects or exploring AWS.

---

✅ **Files created today:**
- `Core_linux-commands.md`
- `Daily_log.md`

# 🗓️ Daily Log — 4th October 2025

## 🧩 Topic: Bash Scripting Fundamentals & S3 Backup (Project 1 - Outline)

### 🔹 What I Learned Today
- Understood the **purpose and structure of Bash scripts**, starting with the critical `#!/bin/bash` shebang.
- Mastered **variable declaration and usage** (`VAR="value"`, `$VAR`), including command substitution (`$(command)`).
- Explored **special Bash variables** like `$0` (script name), `$1` (first argument), `$#` (number of arguments), and `$?` (exit status).
- Practiced the `echo` command for output, utilizing `-e` for escape sequences (`\n`, `\t`) and `-n` to suppress newlines.
- Learned how to **make scripts executable** (`chmod +x`) and **run them** (`./script.sh` or `bash script.sh`), along with passing command-line arguments.

### 🔹 Project Work: Bash S3 Backup (Project 1 - Day 1 Outline)
- Began outlining the `s3_backup.sh` script, focusing on its basic structure.
- Defined **essential variables** for local log directories, S3 bucket names, and S3 destination paths.
- Implemented **simple file handling** to create a dummy log file locally for testing.
- Successfully executed the `aws s3 cp` command to transfer the dummy log file to a specified S3 bucket path.
- **Confirmed AWS CLI configuration** as a prerequisite for S3 interactions.

### 💭 Reflection
> Today laid the groundwork for automation. Getting hands-on with basic Bash scripting and pushing a file to S3 immediately showed the power of command-line tools. I feel much more comfortable with script execution and variable handling. Tomorrow, I'll build on this by adding more advanced Bash logic and diving deeper into Linux utilities.

---
