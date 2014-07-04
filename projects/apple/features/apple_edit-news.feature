# language: pt
Funcionalidade: Gestão de notícias

  Esquema do Cenário: Edição de notícia
    Dado que o usuário visita a página com url relativa <URL Relativa>
    Quando a Página da Notícia é editada
    Então é exibida a mensagem <Mensagem>
    Exemplos:
      | URL Relativa                               | Mensagem         |
      | 'noticia/teste-automatico-da-noticia-fsi4' | 'foi atualizado' |
