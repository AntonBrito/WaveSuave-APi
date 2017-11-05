#!/bin/bash
API="${API_ORIGIN:-https://wave-suave.herokuapp.com/}"
# API="${API_ORIGIN:-http://localhost:4741}"

URL_PATH="/appointments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "appointment": {
      "name": "'"${NAME}"'",
      "lastname": "'"${LAST_NAME}"'",
      "email": "'"${EMAIL}"'",
      "date": "'"${DATE}"'",
      "provider_id": "'"${PROVIDER_ID}"'"
    }
  }'

echo
