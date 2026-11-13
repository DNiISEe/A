#!/usr/bin/env bash

read -r -p "Principal amount: " principal || exit 1
read -r -p "Annual interest rate (%): " rate || exit 1
read -r -p "Time in years: " years || exit 1

for value in "$principal" "$rate" "$years"; do
    if [[ ! $value =~ ^([0-9]+([.][0-9]+)?|[.][0-9]+)$ ]]; then
        printf '%s\n' "Enter non-negative numbers. Use a dot for decimals." >&2
        exit 1
    fi
done

LC_ALL=C awk -v p="$principal" -v r="$rate" -v t="$years" \
    'BEGIN { printf "Simple interest: %.2f\n", p * r * t / 100 }'
