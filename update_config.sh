#!/bin/bash
curl -s https://raw.githubusercontent.com/c29r3/witnet-utils/master/witnet.toml > ~/witnet/wit1/config/witnet.toml \
&& sed -e 's/public_addr = "EXTERNAL_IP_ADDRESS:21337"/public_addr = "'"$(curl -s 2ip.ru)":21337'"/g' ~/witnet/wit1/config/witnet.toml
