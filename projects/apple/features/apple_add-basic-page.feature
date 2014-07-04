# language: pt
Funcionalidade: Adiçao da Página Básica
  Enquanto administrador gostaria de gerenciar as páginas básicas
  e garantir que não ocorre duplicação do menus na página inicial

  Esquema do Cenario: Inserção da Página Básica
    Dado que é cadastrada uma Página Básica com o título <Titulo>
    Então é exibida a mensagem <Mensagem>
    
    Exemplos:
      | Titulo                              | Mensagem     |
      | 'Teste automático da página básica' | 'foi criado' |

  Esquema do Cenario: Não deve existir link para a Página Básica
    #Dado que é cadastrada uma Página Básica com o título <Titulo>
    Então não deve ser exibido item de menu para o <Link para Página Básica>

    Exemplos:
      | Link para Página Básica             |
      | 'teste-automatico-da-pagina-basica' |

