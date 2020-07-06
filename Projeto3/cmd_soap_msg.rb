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
def getclient(env)
     
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

def getcertificate(client, args)

    request_data = {
        'applicationId' => args["applicationId"].encode("UTF-8"),
        'userId' => args["user"]
    }

    puts request_data

    return client.call(GetCertificate: request_data)
end

def ccmovelsign(client, args, hashtype)

    if 'docName'.in?args
        args["docName"] = 'docname teste'
    end

    if 'hash'.in?args
        args["hash"] = hashlib.sha256(b'Nobody inspects the spammish repetition').digest()
    end

    args["hash"] = hashPrefix(hashtype, args["hash"])

    request_data = {
        'request' => {
            'ApplicationId' => args["applicationId"].encode('UTF-8'),
            'DocName' => args["docName"],
            'Hash' => args["hash"],
            'Pin' => args["pin"],
            'UserId' => args["userId"]
        }
    }

    return client.call(CCMovelSign: request_data)
end

def ccmovelmultiplesign(client, args)

    request_data = {
        'request' => {
            'ApplicationId' => args["applicationId"].encode('UTF-8'),
            'Pin' => args["pin"],
            'UserId' => args["userId"]
        },
        'documents' => {
            'HashStructure' => [
                {'Hash' => hashlib.sha256(b'Nobody inspects the spammish repetition').digest(),
                 'Name' => 'docname teste1', 'id': '1234'},
                {'Hash' => hashlib.sha256(b'Always inspect the spammish repetition').digest(),
                 'Name' => 'docname teste2', 'id': '1235'}
                ]}
    }
    return client.call(CCMovelMultipleSign: request_data)
end

def validate_otp(client, args)

    request_data = {
        'applicationId' => args["applicationId"].encode('UTF-8'),
        'processId' => args["ProcessId"],
        'code' => args["OTP"],
    }
    return client.call(ValidateOtp: request_data)
end
