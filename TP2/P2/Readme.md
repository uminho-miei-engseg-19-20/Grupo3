### Pergunta P2.1

#### Alínea I - Análise dos Resultados do SSL Test Server

Os dois sites escolhidos para analisar utilizando o SSL Server test foram o da universidade de Harvard e da universidade de Yale. 
O da universidade de Harvard teve classificação de A+, sendo por isso bastante seguro em relação ao da universidade de Yale que teve classificação de B.
Assim, de seguida, apresentamos a informação toda disponibilizada pelo SSL labs em formato pdf das respetivas universidades não europeias escolhidas.

1. Universidade de Harvard, em Cambridge, nos EUA

[Resultados](https://github.com/uminho-miei-engseg-19-20/Grupo3/tree/master/TP2/P2/UniversidadeHarvard.pdf)

2. Universidade de Yale, em New Haven, nos EUA

[Resultados](https://github.com/uminho-miei-engseg-19-20/Grupo3/tree/master/TP2/P2/UniversidadeYale.pdf)

#### Alínea II - Análise do Resultado do site com pior rating

O site com pior rating corresponde ao da universidade de Yale, estando este avaliado num rating de B. Esta primeira análise baseia-se no estudo de um conjunto de métricas, que formam o rating final.

Como esta análise indica, este servidor suporta tanto TLS 1.0 e TLS 1.1 que faz com que o rating diminua para B pois afeta a componente de Protocol Suport. Este servidor está bastante exposto a ataques man-in-the-middle, por exemplo, o que leva ao comprometimento da integridade dos dados do site.
Contudo, o rating não é 100% significativo no que toca à segurança em si mas é importante pois existem considerações e atualizações que devem ser tomadas em conta de forma a garantir uma maior segurança.

#### Alínea III - Termo DNS CAA

No campo "DNS CAA" ambas as universidades apresentam No. Este campo é para uma proposta que visa a melhorar os ecossistemas PKY no sentido em que lhe dão o controlo para restringir quais as CAs que podem emitir certificados para um determinado domínio.
A Autorização de Autoridade de Certificação (CAA) é então uma proposta para melhorar as emissões de certificados e com isto, pretende-se que uma CA antes de emitir um certificado verifique se está no resgisto DNS de permissões, caso não esteja recusa a emissão.




