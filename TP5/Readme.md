# RGPD (Regulamento Geral de Proteção de Dados)

## Pergunta 1.1

Neste exercício pretende analisar-se o documento `Privacy and Data Protection by Design` de modo a explorar as oito estratégias
que se encontram resumidas de seguida.
As estratégias de design para a privacidade podem ser divididas em 2 vertentes:

* *Orientadas aos dados*:

1.**MINIMISE**: Quantidade de dados processados deve ser restringido à mínima possível.Com esta estratégia pretende-se
assegura que os dados pessoais processados são realmente necessários e se não existe uma alternativa menos invasiva de se alcançar os mesmos objetivos. Os padrões de design desta estratégia são ‘select before you collect’,‘anonymisation and use pseudonyms’.

2.**HIDE**: Declara que quaisquer dados pessoais e as suas relações devem ser escondidos. Esta estratégia não especifica quais os dados que devem ser escondidos, isso depende do contexto que a mesma está a ser aplicada.Garante confidencialidade.Para além dos padrões de design ditos em cima,‘anonymisation and use pseudonyms’,existem outros para esta estratégia que são o uso de criptografia, mistura de redes para ocultar padrões de tráfego.

3.**SEPARATE**:Afirma que os dados pessoais devem ser processados de forma distribuída,sendo necessário haver separação.A
mesma é um bom método para alcançar o objetivo da limitação. Esta estratégia exige processamento distribuído em vez de
soluções centralizadas.Por exemplo, redes como Diáspora oferecem mais privacidade que Facebook ou Google.Não especifica padrões de design.

4.**AGGREGATE**: Afirma que os dados pessoais devem ser processados o mais agregados possível e com o menor detalhe.
Quando os dados são gerais, as informações são válidas para muitos indivíduos e,portanto, pouca informação pode ser atribuída
a uma única pessoa, protegendo assim sua privacidade. Os padrões de design desta estratégia são 'aggregation over time', 'dynamic location granularity','k-anonymity','differential privacy' entre outras técnicas de anonimato.

* *Orientadas aos processos*:

5.**INFORM**: Corresponde à importante noção de transparência.Os titulares dos dados devem ser informados sempre que os dados pessoais forem processado,com que propósito e quais os meios.Também devem ser informados sobre terceiros com os quais informações são compartilhadas, bem como seus direitos de acesso a dados.Os padrões de design desta estratégia são 'Platform for Privacy Preferences' e notificações 'Data breach'.

6.**CONTROL**: Afirma que controlar o uso dos dados deve ser uma capacidade que os titulares dos dados devem ter. Os mesmos devem poder ver, atualizar e apagar os seus dados armazenados.Esta estratégia é uma contrapartida importante à estratégia anterior. Os padrões de design desta estratégia são gestão de 'user centric identity' e controlo de suporte a 'end-to-end encryption'.

7.**ENFORCE**: Afirma que uma política de privacidade deve ser compatível com os requisitos legais e estar no "lugar adequado" de modo a garantir que um sistema respeite a privacidade durante sua operação.Uma política também deve ser aplicada o que implica que os mecanismos de proteção estejam em vigor de modo a evitar violações da política de privacidade.Os padrões de design desta estratégia são controlo de acesso e políticas rígidas e gestão de direitos de privacidade.

8.**DEMONSTRATE**: Requere que um controlador de dados seja capaz de demonstrar conformidade com a política de privacidade.Está um passo à frente da estratégia anterior visto que o controlador tem que provar que está no comando na medida em que este tem que mostrar que as políticas de privacidade estão efetivamente implementadas dentro do sistema.Em caso de problemas, ele deverá ser capaz de determinar a extensão de possíveis violações da privacidade. Os padrões de design desta estratégia são 'privacy management systems',e o uso de 'logging' e 'auditing'. 

## Pergunta 1.2

Para esta questão tivemos de ver com mais atenção a metodologia utilizada no documento [*HandBook on Security of Personal Data 
Processing*](https://github.com/uminho-miei-engseg-19-20/EngSeg/blob/master/TPraticas/Aula6
/ENISA.WP2017.GDPRMeasuresHandbook.pdf) da ENISA que tem feito um trabalho relevante na produção de documentação relevante 
para a proteção de dados. 

Desta forma, foi proposta a avaliação de um caso de uso, mais especificamente, Evaluation of employees. Neste sentido iremos 
explorar e analisar o caso de uso em questão, discutir os diversos passos metodológicos, entre outros aspetos. Por fim será 
necessário propor algumas medidas que seriam consideradas apropriadas para o problema referido, sendo estas baseadas nos 
Anexos que se encontram no final do documento em cima referido.

Com a análise do documento é possível verificar que a metodologia descrita pela ENISA segue 4 passos para a avaliação do 
risco, nomeadamente: 

* Definição do processo da operação e o seu contexto
* Avaliação do Impacto
* Probabilidade de Ocorrência de Ameaça
* Avaliação do Risco

### Evaluation of employees

No documento é realizada uma análise da avaliação anual de empregados. 
Estes são avaliados segundos medidas definidas entre o empregador e o empregado. Estes dados são processados por um officer 
dos recursos humanos tanto com documentação em papel como ferramentas eletronicas. O report é discutido com o empregado e a 
versão final assinada e submetida eletronicamente nos recursos humanos junto com as conclusões do report.

#### Definição do processo da operação e o seu contexto
Nesta secção do documento são levantados e analisados alguns dados de forma a criar uma tabela sintese relativa à avaliação 
dos empregados em que se identifica quais os dados que são processados (Primeiro e ultimo nome, data de inicio de contrato, 
skills técnicas, conhecimento,etc), a finalidade do processo, os titulares dos dados,  os meios de processamento, entre 
outros. Assim, é possível perceber com uma maior eficácia em que contexto nos encontramos.

#### Avaliação do Impacto
Agora, neste ponto é possível fazer uma avaliação do impacto das várias fases do processo da operação. Como numa secção vista 
mais acima no documento disponibilizado, sabemos que este impacto se divide em 4 níveis: Low, Medium, High, Very High. Para 
esta avaliação ser feita deve-se ter em conta, por exemplo, o tipo de dados, criticidade da operação, entre outros.


Neste sentido e de forma a avaliar o impacto da avaliação dos empregados categorizou-se o mesmo:

* Perda da confidencialidade -
Diversas informações são processadas pelas avaliações relativas a qualidade/quantidade de trabalho. Algumas informações 
sensiveis podem surgir no meio do processo. E, ainda segundo o documento, a perda da confidencialidade destas informações pode 
causar algum desconforto para o empregado. Classificando-o como Medium.

* Perda da Integridade - 
A perda desta propriedade pode ser considera Medium já que podem ocorrer inconvenientes das avaliações serem modificadas para 
bem ou para mal.

* Perda da Disponibilidade 
- A perda de disponibilidade não resulta em muitos problemas por isso pode ser considerada Low.

O resultado geral da avaliação do impacto é o mais alto identificado e, portanto, o impacto geral avaliado é Medium.

#### Probabilidade de Ocorrência de Ameaça

Baseadas das 4 dimensões que foram apresentadas no documento, irá ser realizada uma análise às mesmas de forma a chegar a qual 
a probabilidade de ocorrência de ameaça. Neste sentido, são atribuidos scores conforme as respostas dadas à perguntas que são 
realizadas. Com a soma dos resultados apresentados iremos perceber qual o valor desta probabilidade de ocorrência de ameaça. 
Assim sendo, com base o que foi referidos, irão ser atribuidos niveís e scores a cada dimensão e temos:

|   Dimensão   |  Nível  |    Score    |
| :---:        |     :---:      |          :---: |
| 1 - Rede e Recusos técnicos   | Low    | 1    |
| 2 - Processos/Procedimentos relacionados com o processamento de dados pessoais    | Medium      | 2      |
| 3 - Grupos de pessoas como individuos envolvidos no processamento de dados | Medium       | 2     |
| 4 - Setor de negócio e escala de processamento  | Low     | 1     |

**Justificação**

**1.** O facto do sistema não estar conectado à internet e isto implica que este não possa ser acedido pela rede. Para este 
caso de uso, supõe-se que o acesso não autorizado seja impedido com base nas melhores práticas relevantes. 

**2.** Supõe-se que a política de uso não esteja claramente definida e o processamento de informações não seja necessariamente 
limitado às instalações da organização.

**3.** Assume-se (a partir da descrição do caso) que não há políticas específicas relacionadas ao armazenamento seguro e 
exclusão de dados.

**4.** O setor de negócios, em questão, geralmente não é considerado propenso a cyber ataques e supõe-se que nenhuma 
violação de dados pessoais tenha ocorrido.

Após a avaliação mencionada, a probabilidade geral de ocorrência de ameaças é calculada num valor total de 6, sendo 
classificada como Medium.


#### Avaliação do Risco
Nesta secção deve ser feito um cruzamento entre a avaliação do impacto com a probabilidade de ocorrência de ameação de forma a 
conseguirmos obter a avaliação do risco.

No documento é então feito este cruzamento e com a tabela apresentada podemos concluir que a avaliação do risco é classificada 
como Medium.

### Medidas de Segurança
Conforme e dependendo dos níveis de risco que o caso de uso tem a si associdado, as medidas de segurança podem ser variadas.

Existem tanto medidas técnicas bem como medidas organizacionais estando estas ainda divididas em categorias e estas ainda têm 
uma divisão associada ao nível de risco a que será dada resposta.

Neste sentido, após feita a análise dos anexos do documento e alguma dificuldades na mesma, podemos apresentar as seguintes 
medidas como proposta:

* Data processors - Quem processa as avaliações pessoais e se encontra nos recursos humanos deverão ser submetidos a 
agreements para non-disclosure.

* Data Deletion/Disposal - É possível controlar e impedir que sejam removidas as avaliações sem a devida autorização.
    
* Physical Security - Identificação clara, por meios apropriados, por exemplo, crachás de identificação para todos os 
funcionários e visitantes que acessam as instalações da organização impedindo o acesso a documentos por pessoal não 
autorizado.

