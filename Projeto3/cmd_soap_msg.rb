require 'hashlib'            # hash SHA256
require 'savon'

# Função para ativar o debug, permitindo mostrar mensagens enviadas e recebidas do servidor SOAP
def debug()
    
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
     
    return Savon.client(wsdl: get_wsdl(env), 
                        namespace: "http://Ama.Authentication.Service/"
                        #log: true,
                        #pretty_print_xml: true,
                        #log_level: :debug)
                        )
end

#env = 0
#timeout = 10
#getclient(env)

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

# GetCertificate(applicationId: xsd:base64Binary, userId: xsd:string)
#                                       -> GetCertificateResult: xsd:string
def getcertificate(client, args)

    request_data = {
        'applicationId' => Base64.encode64(args["applicationId"]),
        'userId' => args["user"]
    }

    #puts client.operations
 
    return client.call(:get_certificate, message: request_data)
end

def ccmovelsign(client, args, hashtype)

    if args.has_key?("docName")
        args["docName"] = 'docname teste'
    end

    if args.has_key?('hash')
        args["hash"] = Digest::SHA256.hexdigest('Nobody inspects the spammish repetition').bytes
    end

    args["hash"] = hashPrefix(hashtype, args["hash"])
    request_data = {
        'request' => {
            'ApplicationId' => Base64.encode64(args["applicationId"]),
            'DocName' => args["docName"],
            'Hash' => args["hash"],
            'Pin' => args["pin"],
            'UserId' => args["userId"]
        }
    }

    return client.call(:cc_movel_sign, message: request_data)
end

def ccmovelmultiplesign(client, args)

    request_data = {
        'request' => {
            'ApplicationId' => Base64.encode64(args["applicationId"]),
            'Pin' => args["pin"],
            'UserId' => args["userId"]
        },
        'documents' => {
            'HashStructure' => [
                {'Hash' => Digest::SHA256.hexdigest('Nobody inspects the spammish repetition').bytes,
                 'Name' => 'docname teste1', 'id': '1234'},
                {'Hash' => Digest::SHA256.hexdigest('Always inspect the spammish repetition').bytes,
                 'Name' => 'docname teste2', 'id': '1235'}
                ]}
    }
    return client.call(:cc_movel_multiple_sign, message: request_data)
end

def validate_otp(client, args)

    request_data = {
        'applicationId' => Base64.encode64(args["applicationId"]),
        'processId' => args["ProcessId"],
        'code' => args["OTP"],
    }
    return client.call(:validate_otp, message: request_data)
end
