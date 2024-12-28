## SysOpCTL: Linux System Administration Tool

SysOpCTL is a versatile Bash script designed to streamline system administration tasks. It automates common operations such as managing services, checking system load, monitoring processes, analyzing logs, and performing file backups. With an intuitive help menu and version display, SysOpCTL ensures easy navigation and usability for system administrators.

---

### Key Features

- **Service Management**  
  Easily manage services with options to start, stop, or list all active services.

- **System Monitoring**  
  Monitor your system's health by viewing load averages and active processes in real-time.

- **Disk Usage**  
  Quickly check disk usage statistics across all mounted filesystems.

- **Log Analysis**  
  Analyze system logs to identify critical errors or warnings.

- **File Backup**  
  Seamlessly back up system files or directories with confirmation messages for status.

- **Help Menu**  
  Access a detailed help menu that outlines all available commands and examples for usage.

---

### Prerequisites

Ensure the following tools are installed on your Linux system before running SysOpCTL:  

- **Bash** (pre-installed on most Linux distributions)  
- **systemctl** (for managing system services)  
- **rsync** (for file backup operations)  
- **journalctl** (for analyzing system logs)  
- **df** and **uptime** (for checking disk usage and system load)  

---

### Usage Examples

#### Help Command
Display all available commands and usage examples.  
```bash
$ sysopctl --help
```  

#### Version Command  
View the current version of SysOpCTL.  
```bash
$ sysopctl --version
```  

#### Service Management
List all active services:  
```bash
$ sysopctl service list
```  

Start a specific service:  
```bash
$ sysopctl service start <service-name>
```  

Stop a specific service:  
```bash
$ sysopctl service stop <service-name>
```  

#### System Monitoring  
Check the current system load:  
```bash
$ sysopctl system load
```  

Monitor active processes in real-time:  
```bash
$ sysopctl process monitor
```  

#### Disk Usage  
View disk usage by partition:  
```bash
$ sysopctl disk usage
```  

#### Log Analysis  
Analyze recent critical system logs:  
```bash
$ sysopctl logs analyze
```  

#### File Backup  
Initiate a backup of a specified directory:  
```bash
$ sysopctl backup <directory-path>
```  

---

### Screenshots

#### Help Command  
Displays detailed usage instructions and examples.  
![Help Command Screenshot](https://github.com/user-attachments/assets/7bf719c8-48c0-443f-bc43-dba099bc0213)  

#### Version Command  
Displays the current version of SysOpCTL.  
![Version Command Screenshot](https://github.com/user-attachments/assets/5d8cd22f-27b0-4dbe-b6fe-a0839ae1062e)  

#### Disk Usage  
Shows disk usage across all mounted partitions.  
![Disk Usage Screenshot](https://github.com/user-attachments/assets/87bc7d26-8c43-4081-845d-668221bc655d)  

---

