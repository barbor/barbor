# language: pt
Funcionalidade: Logout no Portal Drupal
  Como um visitante autenticado do Drupal
  Eu quero me deslogar
  Para voltar a ser um visitante anônimo
  Esquema do Cenario: Logout no Portal Drupal
    Dado que o usuário está deslogado
    Quando tenta acessar a administração
    Então ele vê a mensagem <Mensagem de Restrição>
    Exemplos:
      | Mensagem de Restrição |
      | 'Acesso negado'       |
