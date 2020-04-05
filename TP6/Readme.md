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

### Vulnerabilidade de codificação 

Introduzida durante a programaçao do software, i.e, um bug com implicações de segurança.
Exemplos destas vulnerabilidades:

* **CWE-20: Improper Input Validation**

O facto do software não validar ou validar incorretamente os inputs recebidos, pode fazer com que existam alterações no fluxo de dados do programa ou no fluxo de controlo.

De forma a corrigir podemos usar uma função que verifica, no exemplo de carateres especiais, se o input contêm ou não carateres sensíveis e isto é realizado tendo por base um "blacklist" de carateres. Em alternativa ou em conjunto, poderá ser tipo em conta os inputs aceitáveis através da utilização de uma "whitelist" confirma a especificação.

* **CWE-120: Buffer Copy without Checking Size of Input ('Classic Buffer Overflow')**

Neste caso, é realizada uma cópia de um buffer sem ser feita a verificação do tamanho, ou seja, copiando de um input buffer para um output buffer, não é verificado se o tamanho do primeiro é igual ou inferior ao do segundo.

De forma a ser feita a correção desta vulnerabilidade, é necessário realizar a verificação do tamanho de um buffer e se este é suficiente para armazenar os dados pretendidos para que quando seja feita uma operação que armazene dados num buffer, a situação explicada anteriormente não aconteça.

### Vulnerabilidade de operacional

Causada pelo ambiente no qual o software executado ou pela sua configuração.
Exemplos destas vulnerabilidades:

* **CWE-5: J2EE Misconfiguration: Data Transmission without Encryption**

Um atacante pode conseguir ler ou modificar o conteúdo dos dados caso estes sejam enviados como plaintext. Assim, poderá existir o comprometimento da informação enviada.

A correção passa por ser realizada a configuração da aplicação e esta deverá assegurar que o SSL está em utilização no momento em que se pretende transmitir dados.

* **CWE-555: J2EE Misconfiguration: Plaintext Password in Configuration File**

A aplicação J2EE guarda a password num ficheiro de configuração. 

A correção passa por serem utilizadas bibliotecas standard na cifragem de passwords antes destas serem guardadas em ficheiros de configuração.

## Pegunta 1.4
