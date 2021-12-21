#!/usr/bin/env bash

awk '{names[$1] += $3} END {for (n in names) print n, names[n]}' downloads.txt
