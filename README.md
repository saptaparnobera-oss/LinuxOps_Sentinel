# LinuxOps Sentinel

A modular Linux system monitoring and security toolkit built using Bash scripting.

## Overview

LinuxOps Sentinel is an educational project designed to monitor Linux system information, resource usage, processes, login events, services, and file permissions through a menu-driven interface.

## Features

- System Information
- CPU and Disk Usage Monitoring
- Configurable Thresholds
- Network Information
- Process Monitoring
- Suspicious Process Monitoring
- Failed Login Monitoring
- File Permission Monitoring
- Service Information and Failure Monitoring
- Package Information
- File Management System
- Automation Runner

## Technologies Used

- Bash Scripting
- Linux Command-Line Utilities
- Kali Linux / Ubuntu
- Git and GitHub

## Requirements

- A Linux operating system (Kali Linux or Ubuntu recommended)
- Bash shell
- Standard Linux command-line utilities
- `sudo` privileges for modules that require elevated access
- Git (only if cloning the repository)

Some commands may not be available on Windows Git Bash because this project is designed primarily for Linux.

## Installation

Clone the repository:

```bash
git clone https://github.com/saptaparnobera-oss/LinuxOps_Sentinel.git
cd LinuxOps_Sentinel
```

## How to Run

Make the scripts executable:

```bash
chmod +x linuxops.sh automation_runner.sh
```

Start the main menu:

```bash
./linuxops.sh
```

Follow the menu instructions to access the available modules.

## Configuration

Edit `config/settings.conf` to change supported monitoring thresholds.

Review the configuration file before changing any values.

## Project Structure

```text
LinuxOps_Sentinel/
├── linuxops.sh
├── automation_runner.sh
├── config/
│   └── settings.conf
├── modules/
├── logs/
│   └── .gitkeep
├── .gitignore
└── README.md
```

The `modules/` directory contains the individual module scripts. Runtime logs are excluded from version control.

## Testing

The project was downloaded as a ZIP archive and tested on Ubuntu. All available menu options were reported to work in that test environment.

## Limitations

- Designed primarily for Linux; some commands may not work in Windows Git Bash.
- Certain monitoring features require `sudo` privileges.
- Available monitoring data depends on the operating system and installed utilities.
- This project is intended for educational and authorized system administration use.

## Security Notes

- Do not commit passwords, access tokens, private keys, or personal log files.
- Review shell scripts before running them with elevated privileges.
- Keep runtime logs and sensitive configuration files out of public repositories.

## Author

Saptaparno Bera

## Disclaimer

This project is for educational purposes and authorized systems only.
