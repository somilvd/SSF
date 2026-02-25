#!/usr/bin/bash

set -euo pipefail

dias=$1
horas=$2
segundos=$3

Total=$(( ($1 * 86400)+($2 * 3600)+$3 ))

echo "Total de segundos de " $1"días, " $2"horas y " $3 "segundos es: " $Total "segundos"