# Validação do input

## Pegunta 1.1

### 1
Os dois tipos de vulnerabilidades presentes do ficheiro `filetype.c` são:

* Utilização da função **system** que permite a execução do programa passado como argumento, com as variáveis de ambiente do processo-pai. 
O utilizador vai passar ao programa uma string como argumento, que não é verificada, ficando, assim, o programa suscetível a 
vulnerabilidades de segurança.

* Não controlo dos tipos de metacaracteres que podem ser aceites, isto é,um atacante pode utilizar o metacarater ';' para recorrer à injeção de separadores ou à injeção de separadores de pastas, que é conhecido como `path transversal` e ficar a conhecer a estrutura das diretorias com o auxílio do autocomplete.

### 2

Para explorar a primeira vulnerabilidade poderíamos utilizar o comando:

`./filetype "/etc/passwd"`

No qual o atacante teria acesso às passwords do sistema.

Para explorar a segunda vulnerabilidade poderíamos utilizar o comando:

`./filetype filename;ls`

No qual o metacarater ';' permite correr vários comandos de uma vez.
Poderia ainda ser utilizado o autocomplete para se ter acesso aos nomes dos ficheiros e diretorias.


### 3

Caso o programa tivesse permissões `setuid root` passaria a ter permissões de root quando o programa fosse executado. O sistema ficaria totalmente comprometido pois permitia a um utilizador qualquer executar qualquer ação desde ver o conteúdo de ficheiros, apagá-los ou encriptá-los, alterar comandos do sistema(por exemplo, o ls), podendo assim aceder a informações confidenciais.

## Pegunta 1.2

Solução implementada [*Programa*](https://github.com/uminho-miei-engseg-19-20/Grupo3/blob/master/TP9/ex2.py)
