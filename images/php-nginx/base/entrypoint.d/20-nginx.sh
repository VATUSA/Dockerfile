mkdir -p /var/tmp/nginx

go-replace \
  -s "<DOCUMENT_INDEX>" -r "$WEB_DOCUMENT_INDEX" \
  -s "<DOCUMENT_ROOT>" -r "$WEB_DOCUMENT_ROOT" \
  -s "<ALIAS_DOMAIN>" -r "$WEB_ALIAS_DOMAIN" \
  -s "<SERVERNAME>" -r "$HOSTNAME" \
  --path=/etc/nginx/ \
  --path-pattern='*.conf' \
  --ignore-empty
