# language: pt
Funcionalidade: Login no Portal Drupal
  Como um visitante anônimo do Drupal
  Eu quero me autenticar
  Para deixar de ser um visitante anônimo
  Esquema do Cenario: Login no Portal Drupal
    Dado que o usuário está registrado com o nome <Nome> e senha <Senha>
    Quando ele acessa a página do usuário
    Então ele vê o nome <Nome>
    Exemplos:
      | Nome    | Senha    |  
      | 'admin' | '123123' |
