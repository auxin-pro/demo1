#!/bin/bash
# author: gfw-breaker

path=/ray
uuid=29a41152-1f2a-4197-8dc4-d057557f74d4

yum install -y git
git clone https://github.com/gfw-breaker/easy-v2ray.git

# install 
cd easy-v2ray
cat > params.txt <<EOF
path=$path
uuid=$uuid
EOF

bash assets/install-v2ray.sh
bash assets/install-bbr.sh
