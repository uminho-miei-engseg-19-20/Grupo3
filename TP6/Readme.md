# Vulnerabilidade de codificação

## Pegunta 1.1

Neste exercício o objetivo é explicar as características das três primeiras Weakness, em que linguagens (e tecnologias, se aplicável) são mais prevalentes, e quais são as suas consequências mais comuns. Para tal, acedemos ao link referido no enunciado,https://cwe.mitre.org/top25/ , e constatamos que as três primeiras weakness são: **CWE-119**, **CWE-79** e **CWE-20**.

### 1

#### CWE-119 : Improper Restriction of Operations within the Bounds of a Memory Buffer

Nesta *weakness* certas linguagens permitem o endereçamento direto dos locais da memória e não garantem automaticamente que esses locais sejam válidos para o buffer de memória que está a ser referenciado. Isto pode fazer com que operações de leitura/
gravação sejam executadas em locais de memória que podem estar associados a outras variáveis, estruturas de dados ou dados internos do programa. Como consequência, um atacante pode ser capaz de executar código arbitrário, alterar o fluxo de controle pretendido, ler informações confidenciais ou causar a falha do sistema.

As **linguagens** mais afetadas por esta fraqueza são: C e C++ e pertencem à classe *Assembley*.

As **consequências** passam a ser explicadas de seguida:

* A *Integridade*, *Confidencialidade* e *Disponibilidade* do sistema são comprometidas caso o atacante execute códigos não autorizados e modifique a memória;

* A *Confidencialidade* e *Disponibilidade* do sistema são comprometidas na eventualidade do atacante aceder a memória que não lhe pertence levando à corrupção de memória e crashes do sistema(ataque DoS).

* A *Confidencialidade* é comprometida caso o atacante consiga ler dados de memória, tendo acesso a informações sensíveis e obter dados confidenciais.


#### CWE-79 : Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')

Essa classe de vulnerabilidade(também conhecida como XSS) ocorre quando:

  1. Dados não confiáveis são inseridos numa aplicação web através de uma web request;
  2. A aplicação web gera uma página web que contém dados não confiáveis;
  3. Quando a página é gerada, a aplicação não impede que os dados contenham conteúdos executáveis por um navegador web;
  4. Quando uma vitima usa dados não confiáveis e acede a uma página através de um navegador com scripts maliciosos;
  5. O navegador da vítima executa o script malicioso no contexto do domínio do servidor visto que  o script vem de uma página enviada pelo servidor;
  6. Quando os scripts de um domínio acedem a recursos ou executam códigos num domínio diferente, violando a política de
  
As **linguagens** mais afetadas pertencem à classe de *Linguagens-Independentes*.

As **tecnologias** mais afetadas são aquelas que pertencem à classe *Web Based*.

As **consequências** passam a ser explicadas de seguida:

* A *Confidencialidade* e *Controlo de acesso* são comprometidos caso o atacante ultrapase o mecanismo de proteção e aceda a dados da aplicação, utilizando para isso um script que será carregado em todas as vítimas os que visitem o site. Caso o servidor tenha, por exemplo, acesso às cookies, também o script irá ter.

* A *Integridade*, *Confidencialidade* e *Disponibilidade* do sistema são comprometidos caso o atacante execute códigos não autorizados e modifique a memória, combinando o Cross-site Scripting com algumas falhas;

* A *Confidencialidade*, *Integridade*, *Disponibilidade* e o *Controlo de acessos* são comprometidos quando os ataques se baseiam nos 2 explicados anteriormente, com a diferença do payload que chega ao servidor.


#### CWE-20 : Improper Input Validation
Esta *weakness* ocorre quando o software não valida corretamente a entrada e um atacante pode criar a entrada de uma forma que não é esperada pela aplicação. Isto fará com que partes do sistema recebam a entrada não intencional que poderá resultar num fluxo de controlo alterado, controlo arbitrário de um recurso ou execução arbitrária de código.

As **linguagens** mais afetadas são as pertencentes à classe de *Linguagens-Independentes*.

As **consequências** passam a ser explicadas de seguida:

* A *Disponibilidade* é comprometida quando são introduzidos valores não esperados, pelo atacante, causando crashes no sistema
ou quando os recursos computacionais sofrem um consumo excessivo.

* A *Confidencialidade* é comprometida quando os atacantes conseguem ler dados confidenciais.

* A *Confidencialidade*, *Integridade*, *Disponibilidade* e o *Controlo de acessos* são comprometidos quando um atacante usa inputs maliciosos para alterar dados e/ou fluxo de controlo, incluindo a execução de comandos arbitrários.


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
