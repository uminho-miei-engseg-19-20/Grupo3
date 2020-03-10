### Pergunta 3.1

Começamos por escolher dois Servidores SSH das duas universidades não Europeias, nomeadamente a universidade de Harvard e a 
universidade de Yale. Conforme enunciado, fizemos a pesquisa com a utilização do site Shodan, pesquisando por 
country:US org:"Harvard University" e country:US org:"Yale University", respetivamente, verficando que a porta 22 está ativa em ambos.
Desta forma, a informação obtida em cada pesquisa foram:

1. Universidade de Harvard, em Cambridge, nos EUA

[Shodan-Harvard](https://github.com/uminho-miei-engseg-19-20/Grupo3/tree/master/TP2/P3/UniversidadeHarvard-Shodan.pdf)


1. Universidade de Yale, em New Heaven, nos EUA

[Shodan-Yale](https://github.com/uminho-miei-engseg-19-20/Grupo3/tree/master/TP2/P3/UniversidadeYale-Shodan.pdf)

#### Alínea 1

Após termos encontrado a informação acima, corremos o ssh-audit e o resultados obtidos foram os seguintes:

1. Universidade de Harvard, em Cambridge, nos EUA

[ssh-audit-Harvard](https://github.com/uminho-miei-engseg-19-20/Grupo3/tree/master/TP2/P3/ssh-audit-UniversidadeHarvard.txt)


2. Universidade de Yale, em New Heaven, nos EUA

[ssh-audit-Yale](https://github.com/uminho-miei-engseg-19-20/Grupo3/tree/master/TP2/P3/ssh-audit-UniversidadeYale.txt)

#### Alínea 2

1. Universidade de Harvard, em Cambridge, nos EUA
   Software e versão: OpenSSH_7.9
   
2. Universidade de Yale, em New Heaven, nos EUA
   Software e versão: OpenSSH_5.3

#### Alínea 3
Como se pode observar pela informação obtida em CVE Details, com base no OpenSSH utilizado:
1. Universidade de Harvard, em Cambridge, nos EUA
[CVE_Details](https://www.cvedetails.com/vulnerability-list/vendor_id-97/product_id-585/version_id-274092/)

2. Universidade de Yale, em New Heaven, nos EUA
[CVE_Details](https://www.cvedetails.com/vulnerability-list/vendor_id-97/product_id-585/version_id-121223/Openbsd-Openssh-5.3.html)

Portanto, a Universidade de Harvard apresenta 4 vulnerabilidades e a Universidade de Yale apresenta 10 vulnerabilidades.
Conclui-se então que das versões existentes a que tem mais vulnerabilidades é a OpenSSH_5.3

#### Alínea 4
A vulnerabilidade mais grave detetada corresponde ao CVE-2014-1692, avaliada num CVSS Score de 7.5.

<p align="center">
    <img src="CVE-2014-1692.png">
</p>

#### Alínea 5

Com base na análise da vulnerabilidade acima apresentada, existe alguma gravidade no sentido de um possível Denial of Service, podendo comprometer de forma parcial e causar impacto a nível da confidencialidade, integridade e disponibilidade. Desta forma, consideramos que esta vulnerabilidade pode considerar-se grave para efeitos práticos pois afeta partes importantes mesmo que parcialmente.
