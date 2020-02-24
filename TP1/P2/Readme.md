# Exercício 2: Partilha/Divisão de segredo (Secret Sharing/Splitting)

## Exercício 2.1 A)

Primeiramente foram gerados o certificado e a chave privada através de "openssl genrsa -aes128 -out mykey.pem 1024" e "openssl req -key mykey.pem -new -x509 -days 365 -out mykey.crt", respetivamente.
Posteriormente foi executado o comando "python createSharedSecret-app.py 8 5 g3 mykey.pem" que solicita a passe da private key(adriana) e o segredo que se pretende aplicar.
Este comando é responsável por dividir o segredo "Agora temos um segredo extremamente confidencial" em 8 partes e possui um quorum de 5 para reconstruir o segredo.

Para reconstrução do segredo executou-se o comando "python recoverSecretFromComponents-app.py 5 g3 mykey.crt" que solicita ao utilizador a introdução de 5 (mínimo para reconstruir o segredo)
das 8 partes que foram geradas previamente.

## Exercício 2.1 B)

 Neste caso,o ficheiro recoverSecretFromComponents-app.py apenas necessita das componentes de 5 intervenientes (devido ao quorum).
 Enquanto que o ficheiro ecoverSecretFromAllComponents-app.py são necessárias as componentes de todos os intervenientes.

 Quando o nível de segurança tiver de ser elevado, é mais vantajoso o uso do programa recoverSecretFromAllComponents-app.py onde
 é necessário o consentimento de todos os intervenientes que participaram na geração do segredo inicial.