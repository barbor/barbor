# language: pt
Funcionalidade: Redimensionamento da janela do navegador
  Como um usuário do navegador web
  Eu quero definir diferentes dimensões
  Para simular a utilização de diferentes dispositivos
  #Observações sobre "Considerações com base no invision.pdf"
  #p.1 item 3:
  #O menu principal contradiz o Invision, onde há bordas laterais.
  #De qualquer forma, atualmente, o menu principal já ocupa toda 
  #área abaixo da linha de marcação acima do menu.
  #p.2, item 7.i
  #vídeo funciona nas últimas duas versões de IE
    
  Esquema do Cenario: Redimensionamento da janela do navegador
    Dado que a janela mede <Largura> pixeis de largura e <Altura> pixeis de altura
    Exemplos:
      | Largura | Altura |  
      | '520'   | '1024' |
