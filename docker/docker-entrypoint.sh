#!/bin/bash

bash -c "transproxy -dns-over-https-enabled >/dev/null 2>&1" &

exec "$@"
