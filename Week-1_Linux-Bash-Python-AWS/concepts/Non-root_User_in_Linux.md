🧠 Concept Note: Non-root User in Linux
🔍 What is a Root User?

The root user is the superuser in Linux.
It has unrestricted control — it can modify any file, change permissions, install or remove software, and even delete critical system components.

Because of this power, using the root account regularly is risky — one wrong command (like rm -rf /) can break the system completely.

⚖️ Why Create a Non-root User?

Following the Principle of Least Privilege, we should only give a user the minimum permissions needed for their tasks.
So, we create a non-root user for everyday work and give it sudo rights only when needed.

✅ Benefits:

Prevents accidental system damage

Improves security (malware or mistakes can’t harm system files easily)

Makes system auditing and user tracking easier

Encouraged best practice in DevOps, cloud, and production environments

🪜 How to Create and Manage a Non-root User
1️⃣ Create a New User
sudo adduser <username>


Example:

sudo adduser sanjana


Follow the prompts to set a password and user details.

2️⃣ Verify User Created
cat /etc/passwd | grep <username>

3️⃣ Add User to sudo Group

This lets them perform administrative tasks safely:

sudo usermod -aG sudo <username>

4️⃣ Check Groups
groups <username>


Output should include sudo:

sanjana : sanjana sudo

5️⃣ Switch User
su - <username>


Example:

su - sanjana

6️⃣ Verify Sudo Access
sudo whoami


Output:

root


✅ means the user has administrative privileges when needed.

🧩 Extra: Check Current User and Groups
whoami       # Shows your current username
groups       # Lists all groups your user belongs to

💡 Summary
Command	Purpose
whoami	Check current user
adduser <name>	Create new user
usermod -aG sudo <name>	Add user to sudo group
groups <name>	Show user’s groups
su - <name>	Switch to another user
sudo whoami	Check sudo access
cat /etc/passwd	List all users