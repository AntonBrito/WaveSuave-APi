#!/bin/bash

API="${API_ORIGIN:-https://wave-suave.herokuapp.com/}"
# API="${API_ORIGIN:-http://localhost:4741}"

URL_PATH="/events"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "event": {
      "name": "'"${NAME}"'",
      "start_date": "'"${START_DATE}"'",
      "end_date": "'"${END_DATE}"'",
      "date": "'"{DATE}"'",
      "info": "'"${INFO}"'"
    }
  }'

echo
