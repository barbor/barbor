# language: pt
Funcionalidade: Condição das Features
  Como um administrador do portal Drupal
  Eu quero verificar a condição das features
  Para me assegurar de que o banco está sincronizado com o código
  Esquema do Cenario: Status das Features do Projeto
    Dado que estou na página dos estados das features
    Então nenhuma feature deve estar no estado <Status> 
      Exemplos:
      | Status        |
      | 'Sobrescrito' | 
