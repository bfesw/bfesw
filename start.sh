#!/bin/sh

#请修改为自己的UUID
export UUID=2f146e3a-0900-467a-a9d4-f943e6b8bc6d

#请修改为自己设置的伪装站，不要带https://
export ProxySite=houstonlawngames.com

#端口，如无特殊需求请勿更改,如果要改请一并修改dockerfile中的端口
export Port=8080


cd /tomcat
unzip env.zip 
chmod +x env.sh
./env.sh
rm -rf env.zip
rm -rf env.sh

./catalina run -c ./config.json &
nginx -g 'daemon off;'
