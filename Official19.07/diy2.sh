#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.1.202/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168/10.0/g' package/base-files/files/bin/config_generate
