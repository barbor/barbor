# language: pt
Funcionalidade: Gerenciamento da integração com LDAP
  Como um administrado do Portal FIESC
  Eu gostaria de habilitar o login por LDAP
  Para permitir a autenticação do usuário da FIESC
  Esquema do Cenario: Habilitação do LDAP
    Dado que o LDAP está no estado <Estado>
    Então é exibida a mensagem <Mensagem de Status>
    Exemplos:
      | Estado         | Mensagem de Status               |
      | 'Habilitado'   | 'As configurações foram salvas.' |

  Esquema do Cenario: Logout no Portal Drupal
    Dado que o usuário está deslogado
    Quando tenta acessar a administração
    Então ele vê a mensagem <Mensagem de Restrição>
    Exemplos:
      | Mensagem de Restrição |
      | 'ACESSO NEGADO'       |

  Esquema do Cenario: Login no Portal Drupal
    Dado que o usuário está registrado com o nome <Nome> e senha <Senha>
    Quando ele acessa a página do usuário
    Então ele vê o nome <Nome>
    Exemplos:
      | Nome          | Senha   |
      | 'luis.bassan' | 'teste' |

  Esquema do Cenario: Logout no Portal Drupal
    Dado que o usuário está deslogado
    Quando tenta acessar a administração
    Então ele vê a mensagem <Mensagem de Restrição>
    Exemplos:
      | Mensagem de Restrição |
      | 'ACESSO NEGADO'       |

  Esquema do Cenario: Login no Portal Drupal
    Dado que o usuário está registrado com o nome <Nome> e senha <Senha>
    Quando ele acessa a página do usuário
    Então ele vê o nome <Nome>
    Exemplos:
      | Nome    | Senha    |
      | 'admin' | '123123' |

  Esquema do Cenario: Desabilitação do LDAP
    Dado que o LDAP está no estado <Estado>
    Então é exibida a mensagem <Mensagem de Status>
    Exemplos:
      | Estado         | Mensagem de Status               | 
      | 'Desabilitado' | 'As configurações foram salvas.' |

