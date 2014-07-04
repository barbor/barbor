# language: pt
Funcionalidade: Adição de Publicação
  Como um administrador
  Eu quero cadastrar publicações na central de mídia
  Para que usuários anônimos possam fazer download destas publicações a partir da central de mídias

  Esquema do Cenário: Acesso a página de adição de mídias
    Dado que o usuário visita a página com url relativa <Página de criação de Mídias>
    Exemplos:
      | Página de criação de Mídias |
      | 'node/add/media'            |

  Esquema do Cenário: Preenchimento do formulário de criação de mídia
    Quando é definido para o campo <Campo> o valor <Valor>
#    E o radio-button Publicações é selecionado
    E o botão selecionar é pressionado
    E clico na aba Biblioteca
    E o documento é selecionado
      Exemplos:
        | Campo           | Valor              |
        | 'Nome da mídia' | 'teste publicação' |
        | 'Publicações'   | 'Marcado'          |

  Esquema do Cenário: Submissão do formulário de criação de mídia
    Quando o botão <Botão> é pressionado
    Então é exibida a mensagem <Mensagem>
    Exemplos: 
      | Botão     | Mensagem     |
      | 'Publish' | 'foi criado' |

