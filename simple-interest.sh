#!/usr/bin/env bash

read -r -p "Valor inicial: " principal || exit 1
read -r -p "Taxa anual de juros (%): " rate || exit 1
read -r -p "Prazo em anos: " years || exit 1

for value in "$principal" "$rate" "$years"; do
    if [[ ! $value =~ ^([0-9]+([.][0-9]+)?|[.][0-9]+)$ ]]; then
        printf '%s\n' "Digite números não negativos. Use ponto para separar as casas decimais." >&2
        exit 1
    fi
done

LC_ALL=C awk -v p="$principal" -v r="$rate" -v t="$years" \
    'BEGIN { printf "Juros simples: %.2f\n", p * r * t / 100 }'
