curl "http://localhost:4741/players" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "player": {
      "name": "'"${NAME}"'",
      "score": "'"${SCORE}"'",
      "wins": "'"${WINS}"'"
      "loses": "'"${LOSES}"'"
    }
  }'

echo
