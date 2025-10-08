#  Bash Scripting Fundamentals (Variables, `echo`, Running Scripts)

This document covers the core Bash scripting concepts introduced on Day 1, focusing on variables, the `echo` command, and how to execute your scripts.

---

## 1. What is Bash?

Bash (Bourne-Again SHell) is a command-line interpreter used for interacting with the operating system. It executes commands and is the default shell on most Linux and macOS systems.

---

## 2. Bash Scripts

A Bash script is a plain text file containing a sequence of Bash commands. They are used to automate tasks, combine multiple commands, and create complex workflows.

---

## 3. The Shebang Line (`#!`)

Every Bash script should start with a "shebang" line.

```bash
#!/bin/bash
Purpose: Informs the operating system which interpreter to use for executing the script.
Example: #!/bin/bash specifies that the script should be run using the Bash interpreter located at /bin/bash.
4. Variables
Variables are used to store data (text, numbers, command output) within a script.
Declaring and Assigning
Syntax: VARIABLE_NAME=value (no spaces around =).
Conventions: Variable names are typically uppercase, can contain letters, numbers, and underscores, and must start with a letter or underscore.
Examples:
code
Bash
MY_STRING="Hello, Bash!"          # Assign a string
NUMBER=100                        # Assign a number
TODAY=$(date +"%Y-%m-%d")         # Assign output of a command (command substitution)
LOG_FILE="/var/log/app.log"       # Assign a path
Accessing Variable Values
Syntax: $VARIABLE_NAME or ${VARIABLE_NAME}.
Best Practice: Use ${VARIABLE_NAME} to avoid ambiguity, especially when concatenating with other strings.
Examples:
code
Bash
#!/bin/bash

NAME="Alice"
GREETING="Hello"

echo "$GREETING, $NAME!"             # Output: Hello, Alice!

# Using curly braces for clarity and safety
FILE_EXT=".txt"
REPORT="daily_report${FILE_EXT}"
echo "Generated file: $REPORT"       # Output: Generated file: daily_report.txt

# What happens if you forget braces (and it's not a variable)?
# echo "This might not work: $REPORT.bak" # Bash looks for variable REPORT.bak
# echo "This is correct: ${REPORT}.bak"   # Uses REPORT variable, then adds .bak
Special Variables (Automatic)
Bash provides built-in variables for script information and arguments:
$0: Name of the script itself.
$1, $2, ...: Positional arguments passed to the script.
$#: Number of arguments passed.
$?: Exit status of the last executed command (0 = success, non-zero = failure).
$$: Process ID (PID) of the current script.
Example:
code
Bash
#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Number of arguments: $#"

# Example of exit status
ls /nonexistent_directory > /dev/null 2>&1 # Try to list a non-existent dir, suppress output
echo "Exit status of last command: $?" # Will likely be 1 or 2 (failure)
5. The echo Command
echo is used to display text or variable values to the standard output (your terminal).
Basic Usage
code
Bash
#!/bin/bash

echo "This is a simple message."
echo "My name is $NAME." # Prints the value of the NAME variable
Options
-e: Interprets backslash escapes (\n for newline, \t for tab).
-n: Suppresses the trailing newline character.
Examples:
code
Bash
#!/bin/bash

echo -e "Line one.\nLine two."       # Output: Two lines of text
echo -e "Col1\tCol2\tCol3"           # Output: Columns separated by tabs

echo -n "This is on the same line as "
echo "this."                         # Output: This is on the same line as this.
6. Running Scripts
Follow these steps to execute your Bash scripts:
Step 1: Create the Script File
Write your commands in a plain text file (e.g., my_script.sh).
Example: my_script.sh
code
Bash
#!/bin/bash
MY_MESSAGE="Hello from my first Bash script!"
echo "$MY_MESSAGE"
echo "The current time is $(date +"%H:%M:%S")."
Step 2: Make it Executable
Grant execute permissions to the script using chmod.
code
Bash
chmod +x my_script.sh
You can verify permissions with ls -l my_script.sh (look for x in the output, e.g., -rwxr-xr-x).
Step 3: Execute the Script
Using its path (recommended):
If in the current directory: ./my_script.sh
If elsewhere: /path/to/my_script.sh
This method uses the shebang line to find the interpreter.
Explicitly calling the interpreter:
bash my_script.sh
This runs the script with bash directly, ignoring the shebang and execute permissions. Useful for testing.
Passing Arguments
Arguments can be passed to the script during execution. They are accessed as $1, $2, etc.
Example: greet.sh
code
Bash
#!/bin/bash
echo "Greetings, $1!"
echo "You supplied $# argument(s)."
Execution:
code
Bash
./greet.sh Alice
# Output:
# Greetings, Alice!
# You supplied 1 argument(s).

./greet.sh Bob Developer
# Output:
# Greetings, Bob!
# You supplied 2 argument(s).