# 🐧 Linux Basics — Core Commands Cheat Sheet

## 📍 Navigation & File System
| Command | Description | Example |
|----------|--------------|----------|
| `pwd` | Print current working directory | `pwd` |
| `ls` | List files and directories | `ls -l`, `ls -a` |
| `cd` | Change directory | `cd /home/ubuntu` |
| `cd ..` | Move one directory up | `cd ..` |
| `cd ~` | Go to home directory | `cd ~` |

---

## 📂 File & Directory Management
| Command | Description | Example |
|----------|--------------|----------|
| `mkdir` | Create a new directory | `mkdir projects` |
| `rmdir` | Remove an empty directory | `rmdir old_folder` |
| `rm -r` | Remove a directory and contents | `rm -r logs` |
| `touch` | Create an empty file | `touch file.txt` |
| `cp` | Copy files or directories | `cp file.txt /tmp/` |
| `mv` | Move or rename files/directories | `mv file.txt report.txt` |
| `rm` | Remove a file | `rm old.txt` |

---

## 📖 Viewing File Content
| Command | Description | Example |
|----------|--------------|----------|
| `cat` | View file content | `cat notes.txt` |
| `less` | View content page by page | `less /var/log/syslog` |
| `head` | Show first 10 lines | `head -n 5 file.txt` |
| `tail` | Show last 10 lines | `tail -n 20 logfile.log` |

---

## 🔍 Finding & Searching
| Command | Description | Example |
|----------|--------------|----------|
| `find` | Search for files | `find /home -name "*.txt"` |
| `grep` | Search text within files | `grep "error" /var/log/syslog` |
| `history` | Show command history | `history` |

---

## ⚙️ Permissions & Ownership
| Command | Description | Example |
|----------|--------------|----------|
| `chmod` | Change permissions | `chmod 755 script.sh` |
| `chown` | Change ownership | `sudo chown ubuntu:ubuntu file.txt` |
| `ls -l` | Show permissions of files | `ls -l` |

---

## 👥 User & Group Management
| Command | Description | Example |
|----------|--------------|----------|
| `whoami` | Show current user | `whoami` |
| `adduser` | Add a new user | `sudo adduser devops` |
| `usermod -aG` | Add user to group | `sudo usermod -aG sudo devops` |
| `groups` | Show groups of current user | `groups` |

---

## ⚡ Process Management
| Command | Description | Example |
|----------|--------------|----------|
| `ps` | Show active processes | `ps aux` |
| `top` | Live process monitor | `top` |
| `kill` | Terminate a process | `kill 1234` |
| `bg` / `fg` | Background/foreground jobs | `bg`, `fg` |

---

## 🗳️ System Info
| Command | Description | Example |
|----------|--------------|----------|
| `df -h` | Show disk usage | `df -h` |
| `du -sh` | Show folder size | `du -sh /var/log` |
| `free -h` | Show memory usage | `free -h` |
| `uname -a` | Show system info | `uname -a` |
| `uptime` | Show system uptime | `uptime` |

---

## 🌐 Networking & SSH
| Command | Description | Example |
|----------|--------------|----------|
| `ip a` | Show IP addresses | `ip a` |
| `ping` | Check connectivity | `ping google.com` |
| `ssh` | Connect to remote server | `ssh ubuntu@<ip-address>` |
| `scp` | Copy files over SSH | `scp file.txt ubuntu@<ip>:/home/ubuntu/` |

---

## 🧹 Package Management (Debian/Ubuntu)
| Command | Description | Example |
|----------|--------------|----------|
| `sudo apt update` | Update package list | `sudo apt update` |
| `sudo apt upgrade` | Upgrade packages | `sudo apt upgrade` |
| `sudo apt install` | Install a package | `sudo apt install nginx` |
| `sudo apt remove` | Remove a package | `sudo apt remove nginx` |

---

## 💾 Compression & Archiving
| Command | Description | Example |
|----------|--------------|----------|
| `tar -cvf` | Create tar archive | `tar -cvf backup.tar /home/ubuntu/` |
| `tar -xvf` | Extract tar archive | `tar -xvf backup.tar` |
| `gzip` | Compress file | `gzip file.txt` |
| `gunzip` | Decompress file | `gunzip file.txt.gz` |

---

## ✨ Why These Commands Matter
These commands form the **foundation of working in Linux** — everything from file management to process control, permissions, and networking.

You’ll use these daily when working on:
- **AWS EC2 instances**
- **DevOps automation scripts**
- **Server setup and troubleshooting**
- **Docker, Kubernetes, and CI/CD pipelines**

---

📘 **Tip (Personal Note):**  
> I know these Linux commands can’t be learned in a single day, so I’ll make it a daily habit to use them — even for small tasks.  
> Whenever I open my terminal or work on a project, I’ll try at least one new command and understand what it actually does.  
> Over time, I’ll build the confidence to work on servers and automation tasks smoothly.

---
