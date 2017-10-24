#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
#API="${API_ORIGIN:-https://amoridarity.herokuapp.com/}"
URL_PATH="/appointments/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN" \
