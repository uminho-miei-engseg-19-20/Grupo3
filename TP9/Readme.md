# Validação do input

## Pegunta 1.1

### 1
Os dois tipos de vulnerabilidades presentes do ficheiro `filetype.c` são:

* Utilização da função **system** que permite a execução do programa passado como argumento, com as variáveis de ambiente do processo-pai. 
O utilizador vai passar ao programa uma string como argumento, que não é verificada, ficando, assim, o programa suscetível a 
vulnerabilidades de segurança.

* Não verificação do tamanho do input nem do tamanho da string do argv[1], podendo provocar `buffer overflow` e revelar informações
confidenciais.

### 2


### 3

Caso o programa tivesse permissões `setuid root` passaria a ter permissões de root quando o programa fosse executado. O sistema ficaria
totalmente comprometido pois permitia a um utilizador qualquer executar qualquer ação desde ver o conteúdo de ficheiros, apagá-los ou encriptá-los,
alterar comandos do sistema(por exemplo, o ls).

## Pegunta 1.2
