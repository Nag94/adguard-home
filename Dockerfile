FROM adguard/adguardhome:latest

COPY /config/* /opt/adguardhome/conf/

COPY /workdir/* /opt/adguardhome/work/

HEALTHCHECK CMD curl -f http://localhost:3000 || exit 1