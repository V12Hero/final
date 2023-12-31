sudo adduser Ammar
usermod -aG sudo Ammar
sudo deluser Ammar

groupadd myGrp
groupdel myGrp 
usermod -aG myGrp Ammar

chmod 777 random.txt
chown Ammar:myGrp random.txt

find ./file/ -mtime +30 -name '*.pdf' -exec rm -rf {}\;
find /directory/ -type f -not -name "*.zip" -delete
find -newerct "1 Apr 2021" ! -newerct "16 Apr 2021" -ls | sort
sudo find /var/www/html/acti-labs -type f -exec chmod 664 {}\
sudo find /var/www/html/scti-labs -type d -exec chmod 2775 {}\

ls -l > output.txt
ls -l >> append.txt
sort < student.txt
sort < old.txt > new.txt

BASH SCRIPTS

#!/bin/bash

# Heredoc Example
cat <<EOF
==================================
Bash Scripting Exam Preparation
==================================
EOF

# Variables Example
name="John"
age=25

echo "Hello, $name! You are $age years old."

# Conditional Statements Example
if [ $age -lt 18 ]; then
  echo "You are a minor."
elif [ $age -ge 18 -a $age -lt 60 ]; then
  echo "You are an adult."
else
  echo "You are a senior citizen."
fi

# Exit Code Example
divide_numbers() {
  result=$(($1 / $2))
  return $?
}

divide_numbers 10 2
if [ $? -eq 0 ]; then
  echo "Division successful. Result is: $result"
else
  echo "Error: Division failed."
fi

exit 0

#!/bin/bash

# Check if at least two arguments are provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <name> <age>"
    exit 1
fi

# Accessing command-line arguments
name=$1
age=$2

# Displaying passed values
echo "Hello, $name! You are $age years old."

exit 0

#!/bin/bash

# Example 1: Using a variable for a path
data_dir="/path/to/data"

# Accessing the variable
echo "Data directory: $data_dir"

# Using the variable in a command
ls "$data_dir"

# Example 2: Constructing paths dynamically
user_name="john"
home_dir="/home/$user_name"

echo "Home directory for $user_name: $home_dir"

# Example 3: Concatenating paths
base_dir="/var/www"
project_name="my_project"
project_dir="$base_dir/$project_name"

echo "Project directory: $project_dir"

# Example 4: Path manipulation
file_path="/path/to/some/file.txt"

# Extracting directory and filename
directory=$(dirname "$file_path")
filename=$(basename "$file_path")

echo "Directory: $directory"
echo "Filename: $filename"
