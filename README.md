Use The Script:
Save the contents of the script in a file, e.g., install_docker.sh.
Make the script executable with chmod +x install_docker.sh.
Run the script as root or with sudo: sudo ./install_docker.sh.
Also, We can download, make executable, and run an HTTPS script using a single command line in the terminal by chaining the commands together with the && operator.
Root Privileges is requires

curl -O https://github.com/boohere2023/scripts/blob/4e3fcd5ba1f874d3b54a95e9b6e5e8340b029b62/install_docker.sh && chmod +x install-docker.sh && ./install_docker.sh
This command will download the script from the specified URL, make it executable, and then run it. If any of the commands fail, the subsequent commands will not be executed.

Conclusion:
The basic script that supports Ubuntu, Debian, CentOS, and Fedora. Note that this script requires root privileges to install packages.
This script is useful for quickly and easily installing Docker and Docker Compose on a Linux system. It automates the process of installing dependencies and configuring the system, saving time and effort for the user.
