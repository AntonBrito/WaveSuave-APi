#!/bin/bash
API="${API_ORIGIN:-https://wave-suave.herokuapp.com/}"
# API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN" \
