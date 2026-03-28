# The Open Source Audit: VLC Media Player

This repository contains a suite of five Bash shell scripts developed for a university capstone project. The project focuses on auditing the open-source software **VLC Media Player** and demonstrates fundamental Linux system administration and Bash scripting concepts.

## Student Information
- **Name:** Gaurav Relwani
- **Registration Number:** 24BCE10759
- **Chosen Software:** VLC Media Player

---

## Suite of Audit Scripts

### 1. `script1_identity.sh` (System Identity Report)
Displays key system information including the Linux distribution, kernel version, current user, home directory, system uptime, and a note on the operating system's open-source license.

### 2. `script2_inspector.sh` (FOSS Package Inspector)
Checks whether VLC Media Player is installed on the system (using `dpkg` or `rpm`) and retrieves its version. It also includes short philosophy notes on other prominent open-source packages: `httpd`, `mysql`, and `firefox`.

### 3. `script3_auditor.sh` (Disk and Permission Auditor)
Audits the size and permissions of key system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`) and the VLC configuration directory (`~/.config/vlc`). It handles cases where directories may not exist.

### 4. `script4_logs.sh` (Log File Analyzer)
A command-line tool that analyzes a specified log file for keyword occurrences (defaulting to "error"). It reports the total count and displays the last 5 matching log entries.

### 5. `script5_manifesto.sh` (Manifesto Generator)
An interactive script that asks for user input to generate a personalized open-source philosophy paragraph, which is then saved to a unique `.txt` file named after the current user.

---

## How to use on Windows

Even though these are Linux Bash scripts, you can run them on Windows using one of the following methods:

### Method 1: WSL (Windows Subsystem for Linux) - Recommended
1. Install a Linux distribution (like Ubuntu) from the Microsoft Store.
2. Open the WSL terminal.
3. Navigate to the project folder.
4. Run the scripts using the instructions in the "Execution" section below.

### Method 2: Git Bash
1. Install [Git for Windows](https://git-scm.com/download/win).
2. Right-click in the project folder and select **Git Bash Here**.
3. Run the scripts directly from the Git Bash terminal.

### Method 3: Visual Studio Code Terminal
1. Open the project folder in VS Code.
2. Open a new terminal (`Ctrl+Shift+``).
3. Select **Git Bash** or **Ubuntu (WSL)** from the terminal dropdown menu.

---

## Execution Instructions

Follow these steps to run the scripts on your Linux or Windows (WSL/Git Bash) environment:

1. **Make the scripts executable:**
   ```bash
   chmod +x script1_identity.sh script2_inspector.sh script3_auditor.sh script4_logs.sh script5_manifesto.sh
   ```

2. **Run individual scripts:**
   - **Identity:** `./script1_identity.sh`
   - **Inspector:** `./script2_inspector.sh`
   - **Auditor:** `./script3_auditor.sh`
   - **Log Analyzer:** `./script4_logs.sh /var/log/syslog alert` (replace path/keyword as needed)
   - **Manifesto:** `./script5_manifesto.sh`

---

## Dependencies
- **Bash Shell:** Required to execute `.sh` files.
- **standard Linux Utilities:** `lsb_release`, `uname`, `grep`, `awk`, `du`, `ls`, `date`.
- **Package Managers (Optional):** `dpkg` or `rpm` are used for package inspection.
- **Permissions:** Some scripts may require elevated permissions (e.g., `sudo`) to read system log files or certain directories.
