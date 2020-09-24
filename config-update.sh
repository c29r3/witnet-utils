#!/bin/bash
curl -s https://raw.githubusercontent.com/c29r3/witnet-utils/master/witnet.toml > /root/witnet/witnet1/config/witnet.toml \
&& sed -i -e 's/public_addr = "EXTERNAL_IP_ADDRESS:21337"/public_addr = "'"$(curl -s 2ip.ru)":21337'"/g' /root/witnet/witnet1/config/witnet.toml \
&& sed -i -e 's/reject_sybil_inbounds = true/reject_sybil_inbounds = false/g' /root/witnet/witnet1/config/witnet.toml
