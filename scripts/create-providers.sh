#!/bin/bash

API="${API_ORIGIN:-https://wave-suave.herokuapp.com/}"
# API="${API_ORIGIN:-http://localhost:4741}"

URL_PATH="/providers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "provider": {
      "given_name": "'"${NAME}"'",
      "family_name": "'"${FAMILY_NAME}"'",
      "email": "'"${EMAIL}"'",
      "specialty": "'"${SPECIALTY}"'"
    }
  }'

echo
