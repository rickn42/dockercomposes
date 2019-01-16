#!/bin/bash

fpm_container=127.0.0.1:19000

RESULT=$(SCRIPT_NAME=/status \
SCRIPT_FILENAME=/status \
QUERY_STRING=full \
REQUEST_METHOD=GET \
cgi-fcgi -bind -connect $fpm_container)

if [ -n "$1" ]; then
echo -e "$RESULT" | grep -A12 "$1"
else
echo -e "$RESULT"
fi

