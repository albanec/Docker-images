#!/bin/bash
docker-compose up -d
sleep 20
docker exec librenms_web_1 sh -c "cd /opt/librenms && php /opt/librenms/build-base.php"
docker exec librenms_web_1 php /opt/librenms/adduser.php admin admin 10 test@test.org
