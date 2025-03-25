
# Uptime Kuma Auto-Deploy Script

This script provides an automated way to deploy or remove **Uptime Kuma**, a self-hosted monitoring tool that tracks the uptime of websites, services, and APIs. It ensures that Docker and Docker Compose are installed before deployment. The script offers:

- A **quick deployment** option with default settings.
- A **custom deployment** option to specify a different port.
- A **removal option** that checks if Uptime Kuma is installed before uninstalling it.

### Features:

- **Quick Deploy** – Installs Uptime Kuma on port `3001`.
- **Custom Deploy** – Allows the user to specify a custom port for the deployment.
- **Automated Dependency Installation** – Installs Docker and Docker Compose if they are missing.
- **Safe Removal Option** – Verifies if Uptime Kuma is installed before attempting to remove it.
- **Simple and Efficient** – A single script handles installation, configuration, and removal.

### Usage Instructions:

1. **Download and Run the Script**

   To use this script, first download it and make it executable:

   ```
   wget https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/YOUR_REPO/main/deploy-kuma.sh
   chmod +x deploy-kuma.sh
   ./deploy-kuma.sh
   ```

2. **Select an Option**

   Once the script is executed, it will present three options:

   - **Option 1: Quick Deploy** – Installs Uptime Kuma on the default port `3001`.
   - **Option 2: Custom Deploy** – Prompts the user to enter a custom port.
   - **Option 3: Remove Uptime Kuma** – Checks if the application is installed and removes it if found.

3. **Example Output**

   ```
   --------------------------------------------------
   Uptime Kuma Deployment Script
   --------------------------------------------------
   Uptime Kuma is a powerful self-hosted monitoring tool.
   It allows you to monitor the uptime of your websites,
   services, and APIs with real-time dashboards.
   --------------------------------------------------

   Select an option:
   1) Quick Deploy (Port 3001)
   2) Custom Deploy (Set your own port)
   3) Remove Uptime Kuma
   Enter your choice (1, 2, or 3):
   ```

### System Requirements:

- **Operating System:** Ubuntu or Debian-based distributions.
- **Docker:** Required for containerized deployment. The script will install it if missing.
- **Docker Compose:** Required to manage Uptime Kuma. The script installs it if missing.

### Uninstallation:

To remove Uptime Kuma, simply rerun the script and select the **Remove Uptime Kuma** option. The script will check if Uptime Kuma is installed before attempting to remove it.

### Support and Contributions:

This script is maintained by **MaDTiA**. If you encounter any issues, need improvements, or have suggestions, consider opening an issue on GitHub. Contributions are welcome, and feedback is appreciated.

For more information, visit the official website:  
[https://madtia.cc](https://madtia.cc)

If you have any problems, feel free to report them on the GitHub Issues page:  
https://github.com/MaDTiA/UPTIMEBOT/issues

### License:

This project is licensed under the **MIT License**, allowing free use, modification, and distribution while giving credit to the original author.

