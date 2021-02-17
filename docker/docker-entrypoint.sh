#!/bin/sh

sh -c "transproxy -dns-over-https-enabled >/dev/null 2>&1" &

exec "$@"
