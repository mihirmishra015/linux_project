#!/bin/bash

# Command version
VERSION="v0.1.0"

# Function to display help information
show_help() {
    echo "Usage: sysopctl [command] [options]"
    echo "Command-line utility to manage system resources and tasks."
    echo
    echo "Commands:"
    echo "  service list                List all active services."
    echo "  service start <service>     Start a specific service."
    echo "  service stop <service>      Stop a specific service."
    echo "  system load                 Display current system load averages."
    echo "  disk usage                  Show disk usage statistics."
    echo "  process monitor             Monitor system processes in real-time."
    echo "  logs analyze                Analyze critical system log entries."
    echo "  backup <path>               Initiate backup for specified directory."
    echo
    echo "Options:"
    echo "  --help                      Display this help message."
    echo "  --version                   Show version information."
    echo
    echo "Examples:"
    echo "  sysopctl service list"
    echo "  sysopctl service start nginx"
    echo "  sysopctl backup /etc"
}

# Function to display version information
show_version() {
    echo "sysopctl $VERSION"
}

# Function to list active services
list_services() {
    systemctl list-units --type=service --state=running
}

# Function to display system load
show_load() {
    uptime
}

# Function to start a specific service
start_service() {
    if [ -z "$1" ]; then
        echo "Error: No service name provided."
        echo "Usage: sysopctl service start <service-name>"
        exit 1
    fi
    systemctl start "$1" && echo "Service '$1' started successfully."
}

# Function to stop a specific service
stop_service() {
    if [ -z "$1" ]; then
        echo "Error: No service name provided."
        echo "Usage: sysopctl service stop <service-name>"
        exit 1
    fi
    systemctl stop "$1" && echo "Service '$1' stopped successfully."
}

# Function to check disk usage
check_disk_usage() {
    df -h
}

# Function to monitor processes in real-time
monitor_processes() {
    top
}

# Function to analyze recent critical system logs
analyze_logs() {
    journalctl -p 3 -b
}

# Function to back up a directory
backup_files() {
    if [ -z "$1" ]; then
        echo "Error: No path provided for backup."
        echo "Usage: sysopctl backup <path>"
        exit 1
    fi
    rsync -av --progress "$1" /path/to/backup/ && echo "Backup of '$1' initiated successfully."
}

# Main script logic
case "$1" in
    service)
        case "$2" in
            list) list_services ;;
            start) start_service "$3" ;;
            stop) stop_service "$3" ;;
            *) echo "Invalid service command. Use --help for usage." ;;
        esac
        ;;
    system)
        if [ "$2" == "load" ]; then
            show_load
        else
            echo "Invalid system command. Use --help for usage."
        fi
        ;;
    disk)
        if [ "$2" == "usage" ]; then
            check_disk_usage
        else
            echo "Invalid disk command. Use --help for usage."
        fi
        ;;
    process)
        if [ "$2" == "monitor" ]; then
            monitor_processes
        else
            echo "Invalid process command. Use --help for usage."
        fi
        ;;
    logs)
        if [ "$2" == "analyze" ]; then
            analyze_logs
        else
            echo "Invalid logs command. Use --help for usage."
        fi
        ;;
    backup)
        backup_files "$2"
        ;;
    --help)
        show_help
        ;;
    --version)
        show_version
        ;;
    *)
        echo "Invalid command. Use --help for usage."
        ;;
esac
