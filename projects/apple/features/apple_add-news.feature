# language: pt
Funcionalidade: Adiçao da notícia
  Enquanto administrador gostaria de gerenciar as notícias
  para organizar as notícias (fsi-4)

  Esquema do Cenario: Inserção da notícia
    Dado que é cadastrada uma notícia com Título <Titulo>, sob o foco estratégico <Termo Automático> e corpo <Corpo da Notícia>
    Então é exibida a mensagem <Mensagem>
    Exemplos:
      | Titulo                             | Termo Automático | Mensagem     | Corpo da Notícia |
      | 'Teste automático da notícia fsi4' | 'Sim'            | 'foi criado' | 'Teste de corpo' |
