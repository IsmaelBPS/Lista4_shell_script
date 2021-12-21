#!/usr/bin/env bash

sed -E 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b/**!!CENSU--RADO!!**/g' "$1" > "tmp_file"
echo "$(< tmp_file)" > "$1"
rm "tmp_file"
