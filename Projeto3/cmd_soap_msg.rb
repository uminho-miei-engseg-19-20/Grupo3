require 'hashlib'
require 'savon'

# Função para ativar o debug, permitindo mostrar mensagens enviadas e recebidas do servidor SOAP
def debug()
    #Activa o debug, mostrando as mensagens enviadas e recebidas do servidor SOAP.
end

#debug()

# Função que devolve o URL do WSDL do SCMD (preprod ou prod)
#FUNCIONA
def get_wsdl(env)

    wsdl = { 0 => "https://preprod.cmd.autenticacao.gov.pt/Ama.Authentication.Frontend/CCMovelDigitalSignature.svc?wsdl", 1 => "https://cmd.autenticacao.gov.pt/Ama.Authentication.Frontend/CCMovelDigitalSignature.svc?wsdl"}

    puts wsdl.fetch(env, 'No valid WSDL')
    return wsdl.fetch(env, 'No valid WSDL')
end

#env = 1
#get_wsdl(env)


# Função que devolve o cliente de ligação (preprod ou prod) ao servidor SOAP da CMD
def getclient(env, timeout)
     
    return Savon.client(wsdl: get_wsdl(env))
end

#env = 1
#timeout = 10
#getclient(env,timeout)

# Devolve a hash acrescentada do prefixo do tipo de hash utilizada
def hashPrefix(hashtype, hash)

    prefix = {
        'SHA256'=> bytes = [0x30, 0x31, 0x30, 0x0d, 0x06, 0x09, 0x60, 0x86, 0x48, 0x01,
                                   0x65, 0x03, 0x04, 0x02, 0x01, 0x05, 0x00, 0x04, 0x20]
    }
    puts prefix.fetch(hashtype, 'Only SHA256 available') + hash
    return prefix.fetch(hashtype, 'Only SHA256 available') + hash
end

#hash = "ola".bytes
#hashtype = "SHA256"
#hashPrefix(hashtype, hash)







