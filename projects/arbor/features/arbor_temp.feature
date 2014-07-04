# language: pt
Funcionalidade: Lista de iniciativas
  Enquanto usuário gostaria de ver uma lista 
  com todas as iniciativas 
  porque gostaria de conhecê-las de forma geral

  Esquema do Cenario: Links para as iniciativas
    Dado que o usuário visita a página com url relativa <Página de Iniciativas>
    Então é exibido um link para um conteúdo do tipo <Tipo do Conteúdo>
    Exemplos:
      | Página de Iniciativas | Tipo do Conteúdo |
      | 'iniciativas'         | 'iniciativa'     |

  Esquema do Cenario: Envio de mensagem pelo formulário de contato
    Dado que o usuário com o nome <Nome>, email <Email> envia a mensagem <Mensagem>
    Então é exibida a mensagem <Mensagem de Status>
    E não é exibida a mensagem de erro <Mensagem de Erro>
    Exemplos:
      | Nome      | Email                   | Mensagem | Mensagem de Status                | Mensagem de Erro                  |
      | 'Rodrigo' | 'rodrigo@taller.net.br' | 'Teste'  | 'Your submission has been saved.' | 'Não foi possível enviar e-mail'  | 

   Esquema do Cenário: Acesso à página de login
     Dado que o usuário visita a página com url relativa <Página de Login>
     Exemplos:
       | Página de Login |
       | 'user'          |

   Esquema do Cenário: Preenchimento de campos de usuário e senha
     Quando é definido para o campo <Campo> o valor <Valor>
     Exemplos:
       | Campo     | Valor    |
       | 'Usuário' | 'admin'  |
       | 'Senha'   | '123123' |

   Esquema do Cenário: Submissão de formulário de login
     Quando o botão <Botão> é pressionado
     Exemplos:
       | Botão    |
       | 'Entrar' |

  Esquema do Cenario: Adição do termo ao vocabulário
    Dado que o usuário visita a página com url relativa <Criação de Termo>
    Quando é criado o termo <Termo>
    Então é exibida a mensagem <Mensagem>
    Exemplos:
      | Criação de Termo                            | Termo                                   | Mensagem     |
      | 'admin/structure/taxonomy/city_region/add'  | '1 Teste Automático de Cidade'          | 'foi criado' |
      | 'admin/structure/taxonomy/service_type/add' | '1 Teste Automático de Tipo de Serviço' | 'foi criado' |


  Esquema do Cenario: Acesso à página de adição do serviço
    Dado que o usuário visita a página com url relativa <Adição do Serviço>
    Exemplos:
      | Adição do Serviço    |
      | 'node/add/services'  |
  
  Esquema do Cenario: Configuração do serviço
    Quando é selecionada a opção <Opção>
    Exemplos:
      | Opção                                   |
      | '1 Teste Automático de Cidade'          |
      | '1 Teste Automático de Tipo de Serviço' |
  
  Esquema do Cenario: Inserção do Serviço
    E que é cadastrado um Serviço com o título <Título do Serviço> e frame <Frame>
    Então é exibida a mensagem <Mensagem>
    Exemplos:
      | Título do Serviço             | Frame            | Mensagem     |
      | 'Teste automático de serviço' | 'Teste de Frame' | 'foi criado' |
  
  Esquema do Cenario: Logout no Portal Drupal
    Dado que o usuário está deslogado
    Quando tenta acessar a administração
    Então ele vê a mensagem <Mensagem de Restrição>
    Exemplos:
      | Mensagem de Restrição |
      | 'Acesso negado'       |
  
  Esquema do Cenario: Busca do Serviço por Tipo e Cidade
     Dado que o usuário visita a página com url relativa <Busca por Serviços>
     Quando é selecionado o Serviço do tipo <Tipo> na região <Região>
     Então é exibida a página com o título <Título do Serviço>
     Exemplos:
     | Busca por Serviços            | Tipo                                    | Região                         | Título do Serviço             |
     | 'teste-manual-de-basic-page'  | '1 Teste Automático de Tipo de Serviço' | '1 Teste Automático de Cidade' | 'TESTE AUTOMÁTICO DE SERVIÇO' |
  
  Esquema do Cenario: Login no Portal Drupal
    Dado que o usuário está registrado com o nome <Nome> e senha <Senha>
    Quando ele acessa a página do usuário
    Então ele vê o nome <Nome>
    Exemplos:
      | Nome    | Senha    |
      | 'admin' | '123123' |
  
  Esquema do Cenario: Remoção do Serviço
    Dado que o usuário visita a página com url relativa <URL Relativa>
    Quando a Página do Serviço é excluída
    Então é exibida a mensagem <Mensagem>
    Exemplos:
      | URL Relativa                                                                                     |  Mensagem     |
      | '1-teste-automatico-de-tipo-de-servico/1-teste-automatico-de-cidade/teste-automatico-de-servico' | 'foi apagado' |
  
  Esquema do Cenario: Remoção do termo do vocabulário
    Dado que o usuário visita a página com url relativa <Remoção do Termo>
    Quando o termo é removido
    Então é exibida a mensagem <Mensagem de Status>
    Exemplos:
      | Remoção do Termo                                        | Mensagem de Status |
      | 'cidade-ou-regiao/1-teste-automatico-de-cidade'         | 'foi apagado'      |
      | 'tipo-de-servico/1-teste-automatico-de-tipo-de-servico' | 'foi apagado'      |

