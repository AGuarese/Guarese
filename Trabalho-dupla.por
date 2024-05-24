programa {
  inteiro contador = 0, opc
  cadeia descricoes[5], dataEHora[5]
  real valores[5]
  funcao inicio(){
    faca{
    menu()

      escolha(opc){
        caso 0:
        escreva("Obrigado por escolher nosso banco\n")
        pare

        caso 1:
        requisitarSaldo()

        pare

        caso 3:
        listarelatorio()

        pare

        caso 4:
        real saldo = listasaldo()
        escreva("Saldo Atual: ", saldo, "\n")
        
        pare
      }
      

    }enquanto(opc!=0)
  }
  funcao adicionarReceita(cadeia descricao, real valor, cadeia data){
    descricoes[contador] = descricao
    valores[contador] = valor
    dataEHora[contador] = data
    
    contador++
    }
  funcao requisitarSaldo(){
    cadeia descricao
    real valor
    cadeia data

    escreva("Escreva a descricao\n")
    leia(descricao)
    escreva("Escreva a data e hora\n")
    leia(data)
    escreva("Escreva o valor\n")
    leia(valor)
    adicionarReceita(descricao, valor, data)
    }

    funcao menu(){
    escreva("Qual das opções abaixo você quer escolher\n")
    escreva("Opções\n 1-Adicionar receita\n 2-Adicionar despesa\n 3-Lista fluxo de caixa\n 4-Lista saldo atual\n 0-Sair\n")
    leia(opc)
    retorne
   }
  funcao listarelatorio(){
    para(inteiro i = 0; i < contador; i++){
      escreva("data e hora : ", dataEHora[i],"\n", "descricao: ", descricoes[i], "\n", "valor: ", valores[i], "\n" )
    }

  }
  funcao real listasaldo(){
    real saldo=0
    para(inteiro i=0; i<contador; i++){
      saldo+=valores[i]
    }
  retorne saldo
  }
}

