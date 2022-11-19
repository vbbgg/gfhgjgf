#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ca46960c-afc8-4a9e-8162-e4cdaf83a7b8"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

