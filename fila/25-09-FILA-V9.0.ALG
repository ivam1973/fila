Algoritmo "25-09-fila-V9.0"
// Disciplina  : L�gica de Programa��o
// Professor   : Edilson Valentim dos Santos Bitencourt
// Descri��o   : Algoritmo para simular Fila em Software
// Autor       : Ivam Steffens Oliveira
// Data atual  : 25/09/2021
// Observa��es : Cr�ditos pelos banners
//               manytools.org/hacker-tools/ascii-banner/
//
// *********************************************************************
//            Fila funciona assim: primeiro elemento que entra
//          � o primeiro que sai, ingl�s: FIFO(First-in, First-out)
// *********************************************************************

Var
   opcao: caracter
   fila: vetor[0..25] de inteiro
   capVetorListar1a9: inteiro
   capMinVetor: inteiro
   controleDaFila: inteiro
   entradaNaFila: inteiro
   capMaxDaFila: inteiro
   separador: caracter

procedimento mudaCorAmarelo
inicio
mudaCor("Amarelo", "Frente")
fimprocedimento

procedimento mudaCorVermelho
inicio
mudaCor("Vermelho", "Frente")
fimprocedimento

procedimento mudaCorBranco
inicio
mudaCor("Branco", "Frente")
fimprocedimento

procedimento mudaCorAzul
inicio
mudaCor("Azul", "Frente")
fimprocedimento

procedimento bannerFila
inicio
escreval("                    ___ ___ _      _           ")
escreval("                   | __|_ _| |    /_\          ")
escreval("                   | _| | || |__ / _ \         ")
escreval("                   |_| |___|____/_/ \_\        ")
escreval()
escreval(separador)
fimprocedimento

procedimento bannerEnfileirado
inicio
mudaCorAmarelo
escreval("  ___ _  _ ___ ___ _    ___ ___ ___    _   ___   ___     ")
escreval(" | __| \| | __|_ _| |  | __|_ _| _ \  /_\ |   \ / _ \    ")
escreval(" | _|| .` | _| | || |__| _| | ||   / / _ \| |) | (_) |   ")
escreval(" |___|_|\_|_| |___|____|___|___|_|_\/_/ \_\___/ \___/    ")
escreval()
escreval(separador)
fimprocedimento


procedimento bannerEnfileirados
inicio
mudaCorAmarelo
escreval("  ___ _  _ ___ ___ _    ___ ___ ___    _   ___   ___  ___   ")
escreval(" | __| \| | __|_ _| |  | __|_ _| _ \  /_\ |   \ / _ \/ __|  ")
escreval(" | _|| .` | _| | || |__| _| | ||   / / _ \| |) | (_) \__ \  ")
escreval(" |___|_|\_|_| |___|____|___|___|_|_\/_/ \_\___/ \___/|___/  ")
escreval()
escreval(separador)
fimprocedimento

procedimento bannerSaiuDaFila
inicio
mudaCorAzul
escreval("  ___   _   ___ _   _     ___   _      ___ ___ _      _     ")
escreval(" / __| /_\ |_ _| | | |___|   \ /_\ ___| __|_ _| |    /_\    ")
escreval(" \__ \/ _ \ | || |_| |___| |) / _ \___| _| | || |__ / _ \   ")
escreval(" |___/_/ \_\___|\___/    |___/_/ \_\  |_| |___|____/_/ \_\  ")
escreval()
escreval(separador)
fimprocedimento

procedimento bannerFilaVazia
inicio
escreval("       ___ ___ _      _    __   ___    _______   _         ")
escreval("      | __|_ _| |    /_\ __\ \ / /_\  |_  /_ _| /_\        ")
escreval("      | _| | || |__ / _ \___\ V / _ \  / / | | / _ \       ")
escreval("      |_| |___|____/_/ \_\   \_/_/ \_\/___|___/_/ \_\      ")
escreval()
escreval(separador)
fimprocedimento


procedimento bannerMensagem
inicio
escreval("         __  __ ___ _  _ ___   _   ___ ___ __  __     ")
escreval("        |  \/  | __| \| / __| /_\ / __| __|  \/  |    ")
escreval("        | |\/| | _|| .` \__ \/ _ \ (_ | _|| |\/| |    ")
escreval("        |_|  |_|___|_|\_|___/_/ \_\___|___|_|  |_|    ")
escreval()
escreval(separador)
fimprocedimento

procedimento bannerAlerta
inicio
mudaCorVermelho
escreval("                 _   _    ___ ___ _____ _             ")
escreval("                /_\ | |  | __| _ \_   _/_\            ")
escreval("               / _ \| |__| _||   / | |/ _ \           ")
escreval("              /_/ \_\____|___|_|_\ |_/_/ \_\          ")
escreval()
escreval(separador)
fimprocedimento

procedimento volteSempre
inicio
mudaCorAmarelo
escreval("   __   _____  _  _____ ___   ___ ___ __  __ ___ ___  ")
escreval("   \ \ / / _ \| ||_   _| __| / __| __|  \/  | _ \ __| ")
escreval("    \ V / (_) | |__| | | _|  \__ \ _|| |\/| |   / _|  ")
escreval("     \_/ \___/|____|_| |___| |___/___|_|  |_|_|_\___| ")
escreval()
escreval(separador)
escreval("             _____   _____    _____   _____           ")
escreval("            | _ ) \ / / __|__| _ ) \ / / __|          ")
escreval("            | _ \\ V /| _|___| _ \\ V /| _|           ")
escreval("            |___/ |_| |___|  |___/ |_| |___|          ")
escreval()
escreval(separador)
fimprocedimento

procedimento aguardar
var
   a : inteiro
inicio
   escreval("")
   escreval("Tecle 'ENTER' para continuar.")
   leia(a)
fimprocedimento

procedimento enfileirar(numero : inteiro)
inicio
   se controleDaFila < 25 entao
      fila[controleDaFila] <- numero
      controleDaFila <- controleDaFila + 1
      escreval(separador)
      limpatela
      bannerEnfileirado
      escreval("       Adicionado o elemento [", entradaNaFila, " ] na fila.")
      escreval(separador)
   senao
      escreval(separador)
      bannerAlerta
      escreval("             Limite da fila atingida.")
      escreval()
      escreval("Voc� deve remover um elemento e depois pode voltar a adicionar.")
      escreval(separador)
   fimse
fimprocedimento

procedimento desenf
var
   i : inteiro
inicio

   se controleDaFila > 0 entao
      escreval(separador)
      bannerSaiuDaFila
      escreval("          O elemento [", fila[0], " ] saiu da fila.")
      escreval(separador)
      para i de 1 ate capMaxDaFila faca
         fila[i-1] <- fila[i]
      fimpara
      fila[25] <- 0

      controleDaFila <- controleDaFila - 1

   senao
      escreval(separador)
      bannerAlerta
      escreval("N�o � poss�vel remover o primeiro elemento da fila, motivo: ")
      escreval()
      escreval("            =>  A fila est� vazia.")
      escreval(separador)
   fimse
fimprocedimento

procedimento limpar
var
   i : inteiro
inicio
   se controleDaFila > 0 entao
   i <- 0
   para i de 0 ate capMaxDaFila faca
      fila[i] <- 0
   fimpara

   controleDaFila <- 0
   escreval(separador)
   bannerFilaVazia
   escreval("     Todos os elementos da fila sairam com sucesso.")
   escreval(separador)
   
   senao
      escreval(separador)
      bannerAlerta
      escreval("N�o foi poss�vel remover todos elementos da fila, motivo: ")
      escreval()
      escreval("         =>  A fila j� estava vazia. ")
      escreval(separador)
   fimse
fimprocedimento

procedimento listar
var
   i : inteiro
inicio
   se controleDaFila > 0 entao
   i <- 1
   bannerEnfileirados
   escreval("Ordem da fila: ")
   escreval()
   para i de 0 ate capVetorListar1a9 - 1 faca
      escreval(i+1, "� da fila ==> ", fila[i])
   fimpara
   
   para i de capVetorListar1a9 ate capMaxDaFila-1 faca
      escreval(i+1, "� da fila => ", fila[i])
   fimpara
   
   senao
      escreval(separador)
      bannerAlerta
      escreval("           N�o foi poss�vel listar a fila, motivo: ")
      escreval()
      escreval("                     =>  Fila vazia. ")
      escreval(separador)
   fimse
fimprocedimento

procedimento vazia
inicio
   se controleDaFila = 0 entao
      bannerAlerta
      escreval("                    Situa��o da fila: ")
      escreval()
      escreval("               =>  A fila est� vazia.")
      escreval(separador)
      escreval()
      escreval("        *** Voc� pode adicionar novos elementos. ***")
      escreval()
      escreval(separador)
   senao
      bannerMensagem
      escreval("                 Situa��o da fila: ")
      escreval()
      escreval("          A fila cont�m: [", controleDaFila, " ] elemento(s).")
      escreval(separador)
   fimse
fimprocedimento

procedimento menu
inicio
   limpatela
   escreval()
   bannerFila
   escreval("* Sistema exemplifica conceito de Fila em Programa��o. *")
   escreval("-------------- Digite uma das op��es abaixo ------------")
   escreval("  1  => Adicionar.")
   escreval("  2  => Remover o primeiro elemento.")
   escreval("  3  => Remover todos elementos (Deixar a fila vazia).")
   escreval("  4  => Listar a fila completa.")
   escreval("  5  => Verificar se a fila est� vazia.")
   escreval("  0  => (zero) => Fechar o programa.")
   escreval("--------------------------------------------------------")
fimprocedimento

Inicio
   separador <- ("--------------------------------------------------------")
   controleDaFila <- 0
   capMaxDaFila <- 25
   capVetorListar1a9 <- 9
   capMinVetor <- 1

   enquanto opcao <> "0" faca
      mudaCorBranco
      menu
      leia(opcao)

      escolha opcao
      caso "1"
         limpatela
         mudaCorBranco
         escreva("Digite um n�mero para adicionar a fila: ")
         leia(entradaNaFila)
         enfileirar(entradaNaFila)
         aguardar

      caso "2"
         limpatela
         mudaCorBranco
         desenf
         escreval()
         aguardar
         
      caso "3"
         limpatela
         mudaCorBranco
         limpar
         aguardar
         
      caso "4"
         limpatela
         mudaCorBranco
         listar
         aguardar
         
      caso "5"
         limpatela
         mudaCorBranco
         vazia
         aguardar
         
      caso "0"
      limpatela
      escreval(separador)
      escreval("           Voc� escolheu fechar o programa.")
      escreval(separador)
      escreval()
      volteSempre
         
      fimescolha
   fimenquanto
fimalgoritmo