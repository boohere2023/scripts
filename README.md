Use The Script:
Save the contents of the script in a file, e.g., install_docker.sh.
Make the script executable with chmod +x install_docker.sh.
Run the script as root or with sudo: sudo ./install_docker.sh.
Also, We can download, make executable, and run an HTTPS script using a single command line in the terminal by chaining the commands together with the && operator.
Root Privileges is requires

curl -O https://kingtam.win/usr/uploads/script/install-docker.sh && chmod +x install-docker.sh && ./install-docker.sh
This command will download the script from the specified URL, make it executable, and then run it. If any of the commands fail, the subsequent commands will not be executed.

Conclusion:
The basic script that supports Ubuntu, Debian, CentOS, and Fedora. Note that this script requires root privileges to install packages.
This script is useful for quickly and easily installing Docker and Docker Compose on a Linux system. It automates the process of installing dependencies and configuring the system, saving time and effort for the user.
