# print current data
date +"%A, %B %d, %Y"

# hostname and username
echo "Hostname: $(hostname)"
echo "Username: $(whoami)"

# process
echo "Current processes:"
ps aux

# add process info inside a file name process.log
ps aux > process.log

# print name,roll_no, comment 


## use variables, take input, create file and directory
read -p "Enter your name: " name