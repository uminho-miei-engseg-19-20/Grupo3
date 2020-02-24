# Exercicio 4:Algoritmos e tamanhos de chaves

## Exercicio 4.1
A Entidade Certificadora para o serviço de emissão de certificados digitais qualificados para a pessoa fisica designado por "Qcert for Esig" da França é a "Cryptolog International".
Depois de seguirmos os passos enumerados no enunciado, o resultado
obtido foi o seguinte:

```
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            81:29:bd:bf:1d:1b:e7:9e:86:32:5c:c6:a5:04:1d:cd
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: C = FR, O = DHIMYOTIS, OU = 0002 48146308100036, organizationIdentifier = NTRFR-48146308100036, CN = Certigna Entity CA
        Validity
            Not Before: Sep  6 14:52:00 2017 GMT
            Not After : Sep  5 14:52:00 2020 GMT
        Subject: C = FR, O = AR24, OU = 0002 80948012200013, organizationIdentifier = NTRFR-80948012200013, CN = AR24 - AR24 CACHET LRE, serialNumber = ST6356002
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (2048 bit)
                Modulus:
                    00:a9:a5:99:a3:a6:5c:bb:20:6c:6e:c6:64:e3:ef:
                    57:bd:1a:9b:5a:e3:a3:4e:81:cf:d0:f9:42:cf:a3:
                    1b:bc:8c:b4:8b:bf:40:34:f0:22:5e:83:ab:0a:c1:
                    11:e2:e2:c6:6f:7d:0f:ce:1f:0f:7f:6f:0f:4b:9d:
                    e7:8e:8c:a0:07:21:2d:7b:c6:17:5d:1d:bd:6a:a1:
                    3f:f8:26:2a:8f:96:36:78:74:ec:b1:b5:ae:09:78:
                    64:e8:2f:2c:77:68:50:c6:5f:da:0f:49:eb:55:85:
                    1b:8a:4e:a8:26:7d:26:e4:fb:41:09:46:da:9c:41:
                    bd:8b:8e:9b:35:9a:50:58:a6:29:86:22:f8:2a:12:
                    5e:4d:e4:c4:15:7c:cb:e7:33:29:21:38:d4:e2:cf:
                    14:a0:e4:69:9a:f8:21:f9:f6:f3:df:e3:d2:be:5e:
                    73:59:3a:7b:20:9b:e2:e1:e3:3a:f1:06:ae:77:e3:
                    19:41:52:7f:ac:8a:23:27:fa:06:47:7a:47:b5:c0:
                    79:45:bf:bc:19:eb:1b:db:f6:3a:f1:dc:9f:14:ca:
                    59:68:0d:e7:7b:a3:47:1a:9b:ab:99:69:1f:84:ae:
                    00:36:d7:a2:82:ee:0d:76:df:3c:36:0b:9b:e0:c2:
                    1c:85:ac:a8:35:b2:21:27:5c:35:52:f3:c0:c2:9e:
                    62:99
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            X509v3 Key Usage: critical
                Digital Signature, Non Repudiation
            X509v3 Extended Key Usage: 
                E-mail Protection
            X509v3 CRL Distribution Points: 

                Full Name:
                  URI:http://crl.certigna.fr/entityca.crl

                Full Name:
                  URI:http://crl.dhimyotis.com/entityca.crl

            Authority Information Access: 
                CA Issuers - URI:http://autorite.certigna.fr/entityca.der
                CA Issuers - URI:http://autorite.dhimyotis.com/entityca.der
                OCSP - URI:http://entityca.ocsp.certigna.fr
                OCSP - URI:http://entityca.ocsp.dhimyotis.com

            X509v3 Subject Key Identifier: 
                14:A4:FE:44:DB:2E:3E:DA:B4:87:08:60:4F:C2:1D:7C:31:F9:E9:A4
            X509v3 Authority Key Identifier: 
                keyid:A5:3F:1E:24:4C:6C:F8:8B:D2:1B:72:98:46:50:CA:E8:86:55:B9:D8

            X509v3 Subject Alternative Name: 
                email:contact@ar24.fr
            X509v3 Certificate Policies: 
                Policy: 1.2.250.1.177.2.6.1.4.1
                  CPS: https://www.certigna.fr/autorites/

            qcStatements: 
                0..0......F..0......F..0......F..0......F...0_.....F..0U0*.$https://www.certigna.fr/en/autorites..EN0'.!https://www.certigna.fr/autorites..FR
    Signature Algorithm: sha256WithRSAEncryption
         c5:8d:98:a6:6f:ad:70:5f:a9:b3:18:c5:43:a1:60:ed:92:47:
         25:c3:a9:83:04:9e:9b:18:92:83:0b:c3:a0:15:ae:d8:0b:86:
         22:0b:c9:00:e8:ea:4e:aa:20:66:c5:6e:c4:ac:d3:50:8c:5a:
         b8:41:ab:bd:c6:e8:e2:68:47:d8:9d:98:a3:d0:dd:cb:f3:6e:
         93:d3:3a:b2:ea:67:70:66:10:c7:f4:0e:b9:4f:1b:dc:a8:84:
         87:b5:90:fa:2c:9f:a7:07:86:65:70:37:15:ff:86:64:de:28:
         9c:34:ee:db:a3:c7:ea:78:2f:4a:3e:68:bd:e6:7a:1d:eb:14:
         0d:1f:cc:c3:a0:3b:ad:b4:83:1c:ec:73:9c:58:b9:c3:91:51:
         9c:b4:a6:b0:1b:8a:5c:03:0f:84:f4:91:c0:bb:08:4c:98:a6:
         05:a4:60:f5:66:cc:a9:1d:5a:d4:7e:12:89:ac:45:05:a7:20:
         c8:61:33:a7:7e:18:c2:7e:e5:ea:9d:d5:39:45:b4:af:73:ad:
         70:52:87:3c:37:74:6f:8a:46:c5:54:97:64:37:f7:ab:38:f5:
         78:ae:8f:a2:fc:ea:93:9e:79:d4:68:b1:b0:68:fc:a9:ad:ac:
         8b:98:64:98:f6:9c:ac:d6:f4:6c:cf:47:58:97:73:f9:97:d2:
         18:ab:95:57:0d:b0:29:b3:ac:48:76:31:0c:4e:90:1e:d8:99:
         e1:63:ca:05:68:34:a3:76:30:1e:29:6a:a0:2f:91:77:b6:06:
         e4:71:7c:7b:92:50:87:11:74:bb:17:b3:d5:b5:7f:02:b7:af:
         04:20:d9:7b:90:f9:7d:0e:2b:33:da:a2:86:87:d4:d1:8f:bf:
         41:01:1d:b6:0b:8b:b4:71:c1:74:98:f9:8a:13:82:d7:aa:98:
         55:f6:cb:f1:33:df:2b:a4:61:c2:d2:3a:3e:05:b2:2d:b3:bd:
         e6:60:10:c7:90:fa:c3:4e:1e:7a:c1:c4:38:f8:e4:a4:4e:95:
         e9:0d:6c:1b:a8:9d:96:88:e2:c8:0e:2d:95:26:f2:51:2a:0e:
         3f:a6:15:59:7a:b1:d3:9a:85:7d:95:21:48:b3:21:22:56:a5:
         97:31:fe:5b:87:48:31:12:fa:13:34:cc:02:7e:a7:99:a4:7d:
         c5:4c:b7:b9:8c:8c:f0:48:39:7a:60:35:bd:ac:1a:75:d2:8d:
         c8:50:51:40:62:9b:3a:90:32:9b:b7:fa:95:6f:b5:af:f6:59:
         9a:20:5b:7d:75:cb:92:65:46:46:e5:f6:06:82:49:02:37:af:
         7b:7c:6f:8e:77:68:c9:f6:f0:20:ce:ac:56:f7:a4:c2:a0:db:
         8d:8d:31:98:76:d3:71:99
 ```
 Os algoritmos e o tamanho das chaves foram os seguintes:
 Signature Algorithm é sha256 com encriptação RSA ,Public Key lgorithm é encriptação RSA e tamanho das chaves é 2048 bit.
  
  De acordo com o Nist o tamanho mínimo para a família SHA-256 é
  3072, o que torna este certificado inválido. Portanto, o tamanho 
  mínimo das chaves teria de ser 3072 bit. Deste modo o certificado tem de ser corrigido, tornando-se assim acessível até alguns anos 
  depois de 2030.