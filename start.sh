#!/bin/sh

mkdir -p users

random_string()
{
  echo $(LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c 24)
}

echo "-------------------------------------------"
if [ -z "$EXTRACT_SECRET" ]; then
  export EXTRACT_SECRET="$(random_string)"
fi
echo "Secret: ${EXTRACT_SECRET}"

if [ -z "$EXTRACT_USER" ]; then
  export EXTRACT_USER="$(random_string)"
fi
echo "User: ${EXTRACT_USER}"
echo "-------------------------------------------"

echo $EXTRACT_SECRET > users/$EXTRACT_USER
exec node app/server.js
