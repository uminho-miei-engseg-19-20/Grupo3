# Vulnerabilidade de codificação

## Pegunta 1.1

### 1

### 2

## Pegunta 1.2

### 1

Tendo em conta a estimativa apresentada na aula e de acordo com o site https://informationisbeautiful.net/visualizations/million-lines-of-code/ podemos concluir o seguinte:

|   Pacotes/Plataformas de Software   |  SLOC - Source Lines Of Code  |    Limite inferior de Bugs    | Limite superior de Bugs |
| :---:        |     :---:      |          :---: |  :---: |
| Facebook   | 62 milhões    |   310 mil  | 31 milhões e 100 mil  |
| Software de Automóveis  | 100 milhões      | 500 mil      | 5 milhões |
| Linux 3.1 | 15 milhões       | 75 mil    |  750 mil |
| Serviços Internet da Google  | 2000 milhões     | 10 milhões     |  100 milhões |

### 2

Apesar de sabermos que alguns destes bugs correspondem a vulnerabilidades, não podemos estimar quantos destes bugs são vulnerabilidades, pois estes não estão diretamente relacionados para conseguirmos estimar um valor.

## Pegunta 1.3

### Vulnerabilidade de projeto

Introduzidas durante a fase de projeto do software (obtenção de requisitos e desenho).
Exemplos destas vulnerabilidades :

* **CWE-188: Reliance on Data/Memory Layout**

Durante a fase de planeamento, é possível que se baseie o desenho do software com base em suposições inválidas sobre como os dados ou a memória do protocolo são organizados. Quando se pretende desenvolver software multi-plataforma, nas quais o modelo de organização de memória pode ser diferente, é propício a acontecer. 

A correção passa por explicitar as suposições sobre o modelo de memória e verificar a compatibilidade das suposições com as plataformas consideradas alvo.

* **CWE-266: Incorrect Privilege Assignment**

Com esta vulnerabilidade, cria-se uma esfera de controlo não pretendida para um dado utilizador pois são-lhe atribuídas permissões incorretamente. Desta forma, este utilizador poderá ter acesso a informação sensível bem como a funcionalidades restritas.

Na fase de planeamento, a correção passa por um processo rigoroso no que toca à atribuição de permissões, tendo de ser explítico de que forma é feita a gestão das zonas de confiança no software.

## Pegunta 1.4
