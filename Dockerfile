FROM adguard/adguardhome:latest

COPY /config/* /opt/adguardhome/conf/

COPY /workdir/* /opt/adguardhome/work/

HEALTHCHECK CMD wget http://localhost:3000 --no-check-certificate -q -O - > /dev/null 2>&1 || exit 1