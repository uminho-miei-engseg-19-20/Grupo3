import datetime

def verificaValor():
    inp = input('Introduza valor a pagar [Duas casas decimais tendo um ponto a marcar o seu início]:')
    try:
        valor = float(inp)
        div = inp.find('.')
        if div == (len(inp)-3) :
            return True
        else:
            return False
    except ValueError:
        return False

def verificaData():
    inp = input('Introduza data de nascimento [DD-MM-AAAA]:')
    data = inp.split('-')
    diaHoje = datetime.date.today()

    if (len(data) == 3 and len(data[0]) == 2 and len(data[1]) == 2 and len(data[2]) == 4):
        try:
            dia = int(data[0])
            mes = int(data[1])
            ano = int(data[2])
            if (ano <= 2020):
                if (mes > 0 and mes < 13):
                    if (dia < 1 or dia > 31):
                        return False
                    else:
                        return True
                    if (mes == 2 and dia > 28):
                        return False
                    else:
                        return True
                    if (mes == 4 or mes == 6 or mes == 9 or mes == 11 and dia > 30):
                        return False
                    else:
                        return True
                else:
                    return False
            else:
                return False
        except ValueError:
            return 1
    else:
        return 1

def verificaNome():
    inp = input('Introduza primeiro e último nome: ')
    nome = inp.split(' ')

    if (len(nome) != 2):
        return False
    else:
        for letra1 in nome[0]:
            if (letra1.isalpha() is False):
                return False

        for letra2 in nome[1]:
            if (letra1.isalpha() is False):
                return False

        return True

def verificaNIF():
    inp = input('Introduza NIF: ')
    nif = int(inp)
    try:
        if(len(inp) == 9):
            return True
        else:
            return False
    except ValueError:
        return False


def verificaNIC():
    inp = input('Introduza NIC (número mais os 3 carateres de verificação, sendo o número separado dos carateres de verificação por um espaço): ')
    nic = inp.split(' ')

    if (len(nic) == 2):
        try:
            fst = int(nic[0])

            if len(nic[0]) != 9 :
                return False

            if len(nic[1]) == 3 :
                for c in nic[1]:
                    if (c.isalpha() is False and c.isdigit() is False):
                        return False
                return True
            else:
                return False

        except ValueError:
            return True
    else:
        return False

def verificaCCredito():
    inp = input('Introduza número de cartão de crédito: ')
    try:
        credito = int(inp)

        if len(inp) == 16 :
            return True
        else:
            return False
    except ValueError:
        return True

def verificaValidade():
    inp = input('Introduza validade do cartão anterior (Formato: MM-AAAA):')
    dataval = inp.split('-')
    diaHoje = datetime.date.today()

    if (len(dataval) != 2 ):
        return False
    
    if(len(dataval[0]) != 2 or len(dataval[1]) != 4):
        return False
    
    try:
        mes = int(dataval[0])
        ano = int(dataval[1])
        if (mes > 0 and mes < 13):
            if (ano > 2020):
                return True
            elif (ano == 2020):
                if (mes < 5):
                    return False
                else:
                    return True
            else:
                return False
        else:
            return False
    except ValueError:
        return False
    else:
        return False
        

def verificaCVV():
    inp = input('Introduza CVC/CVV do cartão anterior: ')
    cvv = int(inp)
    try:
        if(len(inp) != 3):
            return False
        else:
            return True
    except ValueError:
        return False

def main():
    val = verificaValor()
    dat = verificaData()
    nom = verificaNome()
    nif = verificaNIF()
    nic = verificaNIC()
    cred = verificaCCredito()
    val = verificaValidade()
    cvv = verificaCVV()

    if (val== True and dat == True and nom == True and nif == True and nic == True and cred == True and val == True and cvv== True ):
        print("Input Validado!" )
    else:
        print("Erro no Input!" )

if __name__ == "__main__":
    main()
