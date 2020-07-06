load 'cmd_config.rb'   # Nota: necessário renomear o ficheiro _cmd_config.py para cmd_config.py
load 'cmd_soap_msg.rb'

$APPLICATION_ID = get_appid()
$TEXT = "test Command Line Program (for Preprod/Prod Signature CMD (SOAP) version 1.6 technical specification)\´n";
$version = "Version 1.0\n";

def is_numeric(o)
    true if Integer(o) rescue false
end

def isUser(num)

    if(num.length!=14)
        return 0
    end

    if (num[0] == "+" && is_numeric(num[1]) && is_numeric(num[2]) && is_numeric(num[3]) && num[4] == " " && is_numeric(num[5]) && is_numeric(num[6]) && is_numeric(num[7]) && is_numeric(num[8]) && is_numeric(num[9]) && is_numeric(num[10]) && is_numeric(num[11]) && is_numeric(num[12]) && is_numeric(num[13]))
        return 1
    end

    return 0
end

def isOTP(num)
    if(num.length != 6)
        return 0
    end

    if(is_numeric(num[0]) && is_numeric(num[1]) && is_numeric(num[2]) && is_numeric(num[3]) && is_numeric(num[4]) && is_numeric(num[5]))
        return 1
    end

    return 0
end

def isPIN(num)
    if(num.length !=4)
        return 0
    end

    if(is_numeric(num[0]) && is_numeric(num[1]) && is_numeric(num[2]) && is_numeric(num[3]))
        return 1
    end

    return 0
end


def main()
    #"""Função main do programa."""
   # if not $APPLICATION_ID
    #    puts "Configure o APPLICATION_ID"
     #   exit()
    #args = args_parse()
    #end
    option = -1
    while (option != 0)
        puts("\n########################### Command Line Program ###########################\n");
        puts( "   1  Mostrar a Versão atual do Command Line Program\n" +
              "   2  GetCertificate\n" +
              "   3  CC Movel Sign \n" +
              "   4  CCMovelMultipleSign\n" +
              "   5  Validate OTP\n" +
              "   6  TestAll\n" +
              "   0  Fechar Programa"
        );
        puts("\n############################################################################\n");
        puts("Insira a sua Opção:");
        option = gets.chomp.to_i
        
        case option
            when 1
                puts("Versão do Programa: " + $version)
            when 2
                getCertificateM()
            when 3
                ccMovelSignM() 
            when 4
                ccMovelMultipleSignM()
            when 5
                validateOtpM()
            when 6
                recebeArgs()
            when 0
                puts "0"
            else
                puts "Inválido. Tente novamente"
        end
    end
end


def getCertificateM ()
    cliente = getclient(1)
    puts "\n+++ GetCertificate +++\n"

    puts "Insira o seu número de telemóvel (+XXX NNNNNNNNN):\n"
    user = gets.chomp

    if(isUser(user) == 1)

        args = {
            "applicationId" => $APPLICATION_ID,
            "user" => user
        }

        puts "\n+++ Fim de GetCertificate +++\n"
        puts user
        puts getcertificate(cliente, args)
        return getcertificate(cliente, args)
    else 
        puts "Formato incorreto ! Insira o seu número de telemóvel com o formato +XXX NNNNNNNNN\n "
    
    end
end

def ccMovelSignM() 
    cliente = getclient(1)
    puts "\n+++ CCMovelSign +++\n"

    puts "Insira o seu número de telemóvel (+XXX NNNNNNNNN):\n"
    user = gets.chomp

    puts "Insira o seu pin CMD Signature:\n"
    pin = gets.chomp

    hashtype='SHA256'

    if(isUser(user) == 1 and isPIN(pin) == 1)
       
        args = {
            "applicationId" => $APPLICATION_ID,
            "docName" => nil,
            "hash" => nil,
            "pin" => pin,
            "userId" => user
        }

        puts "\n+++ Fim de CCMovelSign +++\n"
        puts ccmovelsign(cliente,args , 'SHA256')
        return ccmovelsign(cliente,args ,hashtype )
    else
        puts "Formato inválido!"
    end
end

def ccMovelMultipleSignM()
    cliente = getclient(1)
    puts "\n+++ CCMovelMultipleSignM +++\n"

    puts "Insira o seu número de telemóvel (+XXX NNNNNNNNN):\n"
    user = gets.chomp

    puts "Insira o seu pin CMD Signature:\n"
    pin = gets.chomp

    if(isUser(user) == 1 and isPIN(pin) == 1)
        args = {
            "applicationId" => $APPLICATION_ID,
            "pin" => pin,
            "userId" => user
        }

        puts "\n+++ Fim de CCMovelMultipleSignM +++\n"
        return ccmovelmultiplesign(cliente, args)
    end
end

def validateOtpM()
    cliente = getclient(1)
    puts "\n+++ Validate OTP +++\n"

    puts "Insira o ProcessID recebido como resposta em CCMovel(Multiple)Sign command::\n"
    ppid = gets.chomp

    puts "Insert Your OTP received in your device:\n"
    otp = gets.chomp

    if(isOTP(otp) == 1)

        args = {
            "applicationId" => $APPLICATION_ID,
            "ProcessId" => ppid ,
            "OTP" => otp
        }

        puts "\n+++ Fim de Validate OTP +++\n"
        return validate_otp(cliente,args)
    end
end

def recebeArgs()
    puts "\n+++ Test All inicializado +++\n"
    puts "Insira o path do ficheiro a assinar:\n"
    path = gets.chomp

    puts "Insira o seu número de telemóvel (+XXX NNNNNNNNN):\n"
    user = gets.chomp

    puts "Insira o seu pin CMD Signature:\n"
    pin = gets.chomp

    return testAll(path, user, pin)
end

def testAll(path, user, pin) 
    puts("Initializing Test of All Commands")

    # Leitura dos Argumentos da Linha de Comandos
    puts(" 0% ... Leitura de argumentos - file: " + path + " user: " + user + " pin: " + pin)

    puts("10% ...  A contactar servidor SOAP CMD para operação GetCertificate")

    puts("20% ...  Certificado emitido para " + "\"" ) 
    puts("         pela Entidade de Certificação " + "\"" ) 
    puts("         na hierarquia do " + "\"" )

    # Leitura do Documento
    puts("30% ...  Leitura do ficheiro " + "\"" + path + "\"")

    # Criação Hash do Documento
    puts("40% ...  Geração de hash do ficheiro " + "\"" + path + "\"")

    # Impressão da Hash
    puts("50% ... Hash gerada (em base64): ")
    puts("         ") 

    # Contactar Servidor SOAP para a operação CCMovelSign
    puts("60% ...  A contactar servidor SOAP CMD para operação CCMovelSign")

    # Impressão do Process Id devolvido na operação anterior
    puts("70% ...  ProcessID devolvido pela operação CCMovelSign:");
    puts("         ") 

    # Validação da OTP
    puts("80% ...  A iniciar operação ValidateOtp\n")
    puts("Introduza o OTP recebido no seu dispositivo:")

    puts("90% ...  A contactar servidor SOAP CMD para operação ValidateOtp:")

    # Validação da Assinatura devolvida pela operação anterior
    puts("100% ... Assinatura (em base 64) devolvida pela operação ValidateOtp:")
    puts("         " )

    puts("110% ... A validar assinatura ...\n")

    puts("Assinatura verificada com sucesso, baseada na assinatura recebida, na hash gerada e " +
          "na chave pública do certificado de ") # + certs_chain['user'].get_subject().CN)

    puts "\n+++ Test All finalizado +++\n"
end

main()