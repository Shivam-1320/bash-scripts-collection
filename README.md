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
 
 &nbsp;
 &nbsp;

 
## ⚡ Quick Install (One Command)

```bash
curl -sL https://shivam-1320.github.io/Autowebdeploy/install.sh | sudo bash
```
&nbsp;


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

## Command-Line Options

| Flag | Description |
|------|-------------|
| `--force` | Skip safety checks (e.g., existing web server detection) |
| `--apache` | Use Apache as the web server |
| `--nginx` | Use NGINX as the web server |
| `--clean` | Remove old files before deployment (fresh setup) |
| `--no-clean` | Keep existing files (useful for updates) |
| `--default-repo` | Use a predefined GitHub repository for quick testing |
| `--ssl` | Enable SSL (requires domain and email) |
| `--no-ssl` | Skip SSL setup (HTTP only) |

---

## IMPORTANT WARNING NOTE ⚠️

> **WARNING**
>
> AutoWebDeploy is designed to deploy and host secure websites quickly with minimal configuration.
>
> It is **strongly recommended** to run this tool on a **fresh machine only**.
>
> Running it on an already configured system may:
> - overwrite existing web server configurations
> - break current setups
> - cause SSL or deployment failures
>
> Proceed on non-fresh systems **only if you fully understand the risks**.

---
### Why use a fresh system?

- Avoid conflicts with existing web servers (Apache/NGINX)
- Prevent configuration issues with SSL setup
- Ensure clean and predictable deployment
- Reduce chances of unexpected errors

---

### Ideal Usage

- New cloud servers (AWS, VPS, etc.)
- Testing environments
- Personal projects and lab setups

---

> Running this tool on an already configured system may override existing settings or cause conflicts.

---

### Tested Environment

- Tested on **Ubuntu (Cloud Server)**
- Tested on **Debian-based systems**
- Not fully tested on other Linux distributions

> Use at your own discretion on non-Debian systems.

---

### Domain Requirement (SSL)

Before using the `--ssl` flag or enabling SSL manually:

- Ensure your **domain is pointing to your server IP**

#### Required DNS Records

- **A Record**: Points your domain to the server's public IP  
- **CNAME Record**: Optional, used for subdomains  

> SSL setup will fail if DNS is not correctly configured.

---

### SSL Setup Requirements

- Ports **80 (HTTP)** and **443 (HTTPS)** must be open
- Domain must be publicly accessible
- A valid email is required for Let's Encrypt

---

### Permissions

- Requires **sudo/root access**
- Supports systems with **APT package manager**

---

### General Warnings

- Do not run on a production server without proper testing  
- Using `--force` may override existing configurations  
- `--clean` will remove existing files — use carefully  

---

## Best Practice

For first-time usage:

```bash
autowebdeploy --apache --clean --no-ssl
```

## Credits

Developed and maintained by **Shivam Baghel**.

---

## Contributing

Contributions are welcome and encouraged.

If you would like to improve this project:

1. Fork the repository  
2. Create a new branch  
3. Make your changes  
4. Submit a pull request  

---

## Report Issues

If you encounter bugs, errors, or unexpected behavior:

- Open an issue on GitHub  
- Provide clear details (logs, steps to reproduce, system info)

This helps improve stability and future releases.

---

## Future Development

This project is actively being improved.

Planned improvements may include:
- Better cross-distribution support  
- More deployment customization options  
- Enhanced error handling and logging  

---

## Acknowledgment

If this project helps you, consider:
- Starring the repository  
- Sharing it with others  
- Contributing improvements  

