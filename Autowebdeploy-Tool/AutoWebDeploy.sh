#!/bin/bash



# AutoWebDeploy - Bash Web Deployment Script
# Author: Pankaj Baghel (https://github.com/Shivam-1320)
# License: MIT
# Created on: July 2025
# Description: [AutoWebDeploy is a beginner-friendly Bash script that automates the deployment of web applications from a GitHub repository to a Linux server using Apache or NGINX.]

# Please respect the open-source license.
# Do not remove the credit if you reuse this script.

#Assigning variables 

DEFAULT_GITHUB_REPO="https://github.com/Shivam-1320/Test_Repo-AWS.git"
TARGET_DIR="/var/www/html/"

#Defining colour variables...

GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
BLUE="\e[34m"
NC="\e[0m"

#===========================================================================================================
echo -e "${BLUE}
    _         _     __        __   _     ____             _
   / \  _   _| |_ __\ \      / /__| |__ |  _ \  ___ _ __ | | ___  _   _
  / _ \| | | | __/ _ \ \ /\ / / _ \ '_ \| | | |/ _ \ '_ \| |/ _ \| | | |
 / ___ \ |_| | || (_) \ V  V /  __/ |_) | |_| |  __/ |_) | | (_) | |_| |
/_/   \_\__,_|\__\___/ \_/\_/ \___|_.__/|____/ \___ |.__/|_|\___/ \__, |
                                                   |_|            |___/
 ${NC}"
#===========================================================================================================
echo
echo -e "\e[36mVersion 1.0\e[0m" 
echo 
echo -e "\e[36m[!] If you encounter any errors while running this script, please report them — 
your small contribution helps improve and build a better version.\e[0m https://github.com/Shivam-1320"
echo
echo -e "\e[36m[*] AutoWebDeploy is a beginner-friendly Bash script that automates the deployment of web applications
from a GitHub repository. You just provide your repo — it does the rest.\e[0m"
echo 
echo
echo
#==============================================================================================================

echo -e "1. ${YELLOW}Which web server do you want to install?  ${NC}" apache / nginx /

read SERVER

case "${SERVER,,}" in 

apache) 

     sudo apt update -y > /dev/null 2>&1

if  [ $? -eq 0 ] ; then 

     echo -e ">${GREEN}System update complete${NC}"
else
     echo -e "${RED}System update failed! ${NC}"

exit 1

fi 

    sudo apt install apache2 -y > /dev/null 2>&1

   if [ $? -eq 0 ] ; then 

   echo -e ">${GREEN}Apache Server installation successful ${NC}"

else
    echo -e ">${RED}Apache installation failed! ${NC}"

    exit 1

 fi

    ;;

nginx)

     sudo apt update -y > /dev/null 2>&1

if  [ $? -eq 0 ] ; then 

     echo -e ">${GREEN}System update complete${NC}"
else     
     echo -e ">${RED}System update failed!${NC}"

exit 1

fi 
    
    sudo apt install nginx -y > /dev/null 2>&1

if [ $? -eq 0 ] ; then 

    echo -e ">${GREEN} Nginx server installation succeessful${NC}"
else
    echo -e ">${RED}Nginx installation failed!${NC}"

    exit 1

 fi

 ;; 
 
 *)
    echo -e "${RED}Invalid option. Please choose apache, nginx. ${NC}"

    exit 1
    ;;

esac

    echo
    echo

    echo -e "2. ${YELLOW}Do you want to clean the web directory before deployment?${NC}  Y/N "
read ANSWER 

case "${ANSWER,,}" in

Y|y|yes|YES)


sudo find "${TARGET_DIR}" -mindepth 1 -exec rm -rf {} + > /dev/null 2>&1

if [ $? -eq 0 ] ; then

    echo -e ">${GREEN}Your directory is successfully cleaned${NC}"
else 
    echo -e ">${RED}Directory cleaning operation failed! ${NC}"

exit 1

fi 


    ;;

N|n|no|NO) 

   echo -e ">${YELLOW}Directory cleaning Process skip! ${NC}"

    ;;

*)

echo -e "${RED}Invalid input. Please enter y or n. ${NC}"

exit 1

;;

esac

   sudo apt install git -y > /dev/null 2>&1

if [ $? -eq 0 ] ; then 

   echo -e ">${GREEN}Dependencies installation is complete ${NC}"
else 
   echo -e ">${RED}Failed to install dependences! ${NC}"

   exit 1 

fi 

echo
echo

echo -e "3. ${YELLOW}Enter GitHub repo URL to deploy (or press Enter to use default Test Repo): ${NC}"
read USER_GITHUB_REPO

if [ -z "$USER_GITHUB_REPO" ] ; then
    USER_GITHUB_REPO=$DEFAULT_GITHUB_REPO
    
    sudo git clone "$DEFAULT_GITHUB_REPO" "$TARGET_DIR" > /dev/null 2>&1

if [ $? -eq 0 ]  ; then 

    echo -e "${GREEN}Default Repository cloning is successuful${NC}"
else    
    echo -e "${RED} Failed to clone default repo ${NC} '/var/www/html' already exists and matbe it's not an empty directory." 

    exit 1

fi

else
    echo -e "${GREEN} Start Cloning your github repo${NC}$USER_GITHUB_REPO"

    
    sudo git clone "$USER_GITHUB_REPO" "$TARGET_DIR" > /dev/null 2>&1

if [ $? -ne 0 ]  ; then 

    echo -e "${RED} Failed to clone your repo ${NC} 'Please check your repo url is valid or don't skip cleaning directory" 

    exit 1

   fi    

 fi
 
    echo -e "${GREEN}Setting ownership to www-data${NC}"
    sudo chown -R www-data:www-data "$TARGET_DIR" > /dev/null 2>&1

    echo 

    echo -e "${GREEN}Directory permissions set to 755${NC}"
    sudo chown -R 755 "$TARGET_DIR" > /dev/null 2>&1

    echo

if [[ $SERVER == "apache" ]] ; then 

    echo -e "${GREEN}Apache service is successfully restart${NC}"
    sudo systemctl restart apache2.service
 if [ $? -ne 0 ]; then
        echo -e "${RED}Apache failed to restart!${NC}"
        exit 1
    fi

elif [ "$SERVER" == "nginx" ]; then
    echo -e "${GREEN}Nginx service is restarting...${NC}"
    sudo systemctl restart nginx > /dev/null 2>&1
    
    
if [ $? -ne 0 ]; then

        echo -e "${RED}NGINX failed to restart!${NC}"
        exit 1
    fi
fi

     echo
     echo
     echo
     echo -e "${BLUE}Deployment complete! Visit your server IP to verify.\e[0m"
     echo
     echo
     echo -e "\e[36mScript created by: Pankaj Baghel \e[0m"
     echo -e "\e[36mGitHub: https://github.com/Shivam-1320\e[0m"
     echo
     echo
     echo

exit 0
#==============================================================================================================================
# If you'd like to collaborate, contribute, or create new tools together
# please feel free to contact me on GitHub.
# I’m a beginner learning to build useful tools.  
# Any feedback or help is greatly appreciated!
     
