# Exercício 1: Números aleatórios/pseudoaleatórios

## Exercicio 1.1

| Comando | Tempo |
| ------ | ------ |
| `head -c 32 /dev/random \| openssl enc -base64`| 10 ms |
| `head -c 64 /dev/random \| openssl enc -base64`| 12 ms |
| `head -c 1024 /dev/random \| openssl enc -base64` | 5 min 32 s |
| `head -c 1024 /dev/urandom \| openssl enc -base64` | 7 ms |


Com a execução dos comandos pedidos, verificámos que nos dois primeiros a diferença é muito reduzida entres os valores obtidos pois estes números são reduzidos. Numa fase seguinte, ao executar o mesmo comando mas com um valor muito superior, nomeadamente, 1024 bits, constatamos que o tempo com que este executou foi bastante superior em comparação aos executados anteriormente.\
Por fim, ao executar o ultimo comando, a diferença no tempo de execução é enorme e tal deve-se ao facto de no último teste a geração do número aleatório ser feita de imediato dado que não foi necessário recolher estropia suficiente de forma a gerar a sequência de bytes pseudoaleatórios criptograficamente forte e com isto obtemos menos segurança criptográfica.