#!/bin/bash
ifconfig
echo "Starting Temp Server Port 8000"
echo "Example Link http://10.1.10.20:8000/"
python3 -m http.server 8000
