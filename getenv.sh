#!/usr/bin/env bash
VARIABLE=$1
CONTAINER=$2
echo docker inspect -f '{{range $index, $value := .Config.Env}}{{if eq (index (split $value "=") 0) "${VARIABLE}" }}{{range $i, $part := (split $value "=")}}{{if gt $i 1}}{{print "="}}{{end}}{{if gt $i 0}}{{print $part}}{{end}}{{end}}{{end}}{{end}}' $CONTAINER