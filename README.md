# Calculadora de juros simples

Um script em Bash que calcula quanto um valor rende em juros simples. Os juros são calculados sempre sobre o valor inicial, sem juros sobre juros.

## Como usar

```bash
bash simple-interest.sh
```

Informe o valor inicial, a taxa anual em porcentagem e o prazo em anos. Digite `5` para uma taxa de 5% e use ponto se precisar informar um valor decimal, como `1.5` ano.

A fórmula é `juros = valor inicial × taxa anual × prazo / 100`.

Por exemplo, um valor inicial de 1000, com taxa de 5% ao ano por 2 anos, rende **100.00** em juros simples. O script mostra apenas os juros, não o valor total.

## Licença

Apache 2.0. Consulte o arquivo [LICENSE](LICENSE).
