programa {
  inteiro contadorR = 0 , opc = 0, contadorD = 0, saldo = 0
  cadeia descricaoR[99], dataEHoraR[99], descricaoD[99], dataEHoraD[99]
  real valoreP[99], valorD[99]
  funcao inicio(){
    menu()
  }
    
  
  funcao menu(){
    enquanto(opc<99){
    escreva("Qual das opções abaixo você quer escolher\n")
    escreva("Opções\n 1-Adicionar receita\n 2-Adicionar despesa\n 3-Lista fluxo de caixa\n 4-Lista saldo atual\n 0-Sair\n")
    leia(opc)
    escolha(opc){
      caso 0:
        escreva("Obrigado por escolher nosso banco\n")
        pare

      caso 1:
        adicionarReceitas()
        pare

      caso 2:
        adicionarDespesas()
        pare

      caso 3:
        fluxoDeCaixa()
        pare

      caso 4:
        saldoAtual()
        pare
      }
    }
  }
  funcao adicionarDespesas(){
    se(contadorD<99){
    escreva("Escreva a descricao\n")
    leia(descricaoD[contadorD])
    escreva("Escreva a data e hora\n")
    leia(dataEHoraD[contadorD])
    escreva("Esceva o valor\n")
    leia(valorD[contadorD])
    contadorD++
    }
    senao{
      escreva("Limite maximo do fluxo de caixa!\n")
    }
  }

    
}


