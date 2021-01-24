#!/bin/bash -e

cd /tmp

if [ ! -f GeoLite2-City_20191224/GeoLite2-City.mmdb ]; then
    echo "downloading GeoLite2-City.tar.gz"
    wget -q https://web.archive.org/web/20191227182209if_/https://geolite.maxmind.com/download/geoip/database/GeoLite2-City.tar.gz
    tar xzf GeoLite2-City.tar.gz
else
    echo "GeoLite2-City_20191224/GeoLite2-City.mmdb already downloaded"
fi

if [ ! -f GeoLite2-ASN_20191224/GeoLite2-ASN.mmdb ]; then
    echo "downloading GeoLite2-ASN.tar.gz"
    wget -q https://web.archive.org/web/20191227182527if_/https://geolite.maxmind.com/download/geoip/database/GeoLite2-ASN.tar.gz
    tar xzf GeoLite2-ASN.tar.gz
else
    echo "GeoLite2-ASN_20191224/GeoLite2-ASN.mmdb already downloaded"
fi