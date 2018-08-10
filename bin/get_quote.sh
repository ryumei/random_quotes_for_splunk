#!/bin/sh
API_URL="https://talaikis.com/api/quotes/random/"
curl -XGET "$API_URL" | sed -e "s/{/{\"timestamp\":`date '+%s'`,/"
