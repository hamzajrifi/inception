#!/bin/bash
sudo setfacl -m user:$USER:rw /var/run/docker.sock
