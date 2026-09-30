#!/bin/bash

echo "========================================"
echo "        LINUX PROCESS MANAGER"
echo "========================================"

echo
echo "Current Date:"
date

echo
echo "Current User:"
whoami

echo
echo "Hostname:"
hostname

echo
echo "----------------------------------------"
echo "Top 10 CPU Usage Processes"
echo "----------------------------------------"

ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head

echo
echo "----------------------------------------"
echo "Top 10 Memory Usage Processes"
echo "----------------------------------------"

ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head

echo
echo "----------------------------------------"
echo "Search for a Process"
echo "----------------------------------------"

read -p "Enter process name: " pname

ps -ef | grep "$pname"

echo
echo "Process Manager Completed."
