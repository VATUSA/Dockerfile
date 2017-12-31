function runEntrypoints() {
  if [[ -d "$1" ]]; then
    for FILE in "$1"/*.sh; do
      echo "-> Executing ${FILE}"
      # run custom scripts, only once
      . "$FILE"
    done
  fi
}

runEntrypoints /entrypoint.d

exec "$@"
