<img src="https://avatars.githubusercontent.com/u/101424800?v=4" width="80" align="left" />

 **AutoWebDeploy**




![Built in](https://img.shields.io/badge/Built%20in-Bash-0891b)
![Repo](https://img.shields.io/badge/GitHub-shivam--1320-blue?logo=github)
![Downloads](https://img.shields.io/badge/Telegram-purple?link=https%3A%2F%2Ft.me%2FShivam_baghel1320)
![Version](https://img.shields.io/badge/version-1.1-yellow)
![License](https://img.shields.io/badge/license-MIT-blue)


#




> **Author:**  Pankaj Baghel

> **GitHub:**  shivam-1320


 AutoWebDeploy v1.1 is a Bash-based automation tool that enables fast and hassle-free deployment of web applications directly from a GitHub repository to a Linux server using Apache or NGINX.

 Designed for beginners, developers, and system administrators, it reduces manual configuration and speeds up deployment workflows.
 Simply provide your repository — AutoWebDeploy handles the entire setup and deployment process automatically.
 


## ✨ Key Features

-  **Web Server Selection**  
  Choose between **Apache** or **NGINX**

-  **Automatic SSL (HTTPS)**  
  Just provide your **domain** and **email** — SSL is configured automatically via Let's Encrypt

-  **One-Command Deployment**  
  From GitHub repo to live website in a single command

-  **Clean Deployment Options**  
  Control whether old files are removed or preserved

-  **Beginner-Friendly**  
  No deep Linux knowledge required

-  **Safe & Controlled Execution**  
  Optional flags to override or customize behavior


---

## 📦 Installation via APT (Recommended)

Follow the steps below to install **AutoWebDeploy** on your Linux system.

---
```bash
# Add repository
echo "deb [trusted=yes] https://shivam-1320.github.io/Autowebdeploy stable main" | sudo tee /etc/apt/sources.list.d/autowebdeploy.list

# Update system
sudo apt update

# Install tool
sudo apt install autowebdeploy -y
```


## 🛠️ Command-Line Options (Flags)

### `--force`

Skip safety checks such as existing web server detection.  
Useful when you want to override warnings and proceed.

---

### `--apache` / `--nginx`

Select the web server:

- `--apache` → Use Apache  
- `--nginx` → Use NGINX  

---

### `--clean` / `--no-clean`

Control deployment behavior:

- `--clean` → Remove old files before deployment (fresh setup)  
- `--no-clean` → Keep existing files (useful for updates)  

---

### `--default-repo`

Use a predefined default GitHub repository.  
Helpful for testing or quick deployment without entering a repo URL.

---

### `--ssl` / `--no-ssl`

Control HTTPS setup:

- `--ssl` → Enable SSL (requires domain & email)  
- `--no-ssl` → Skip SSL (HTTP only)  

---


