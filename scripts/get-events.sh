#!/bin/bash
API="${API_ORIGIN:-https://wave-suave.herokuapp.com/}"
# API="${API_ORIGIN:-http://localhost:4741}"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
