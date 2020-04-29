# Vulnerabilidade de inteiros

## Pegunta 1.1 - Buffer overflow em várias linguagens

### 1
A vulnerabilidade presente na função vulneravel() diz respeito aos argumentos passados, uma vez que os valores de x e y são 
size_t ou seja, correspondem a um inteiro unsigned e dizem respeito ao tamanho usado na alocação de memória da matriz. Assim, 
ao chamar-se a função com valores de x ou y cujo produto exceda o limite superior deste tipo, pode acontecer que produto x*y 
computado seja ao valor real e, desta forma, alocam-se menos bytes do que o pretendido. Devido a este risco, possivelmente 
poderia-se começar a escrever e corromper os dados de locais da memória que não pré-destinados para esta função.

### 2
De modo a demonstrar a vulnerabilidade acima apresentada, foi alterada a main:
```
int main(){
  char *matriz;
	vulneravel(matriz, 2732183451, 13198026377, 35);
}
```
Neste sentido, o nosso ficheiro overflow.c fica o seguinte:

<p align="center">
    <img src="1_1b.png">
</p>

### 3
Quando executamos o código ocorre um **Segmentation Fault** dado que não é possível a alocação de memória pretendida pois o 
número que é convertido é inferior ao que se realmente se pretende como tamanho. Isto fará com que se tente alterar pedaços de 
memórias que não está alocada. 
Na imagem é possível ver o erro ocorrido na execução:

<p align="center">
    <img src="1_1c.png">
</p>
