# language: pt
Funcionalidade: Remoção da Notícia
  Como um administrador do Portal FIESC
  Preciso remover uma página de Ńotícia
  Esquema do Cenario: Remoção da Notícia
    Dado que o usuário visita a página com url relativa <URL Relativa>   
    Quando a Página da Notícia é excluída
    Então é exibida a mensagem <Mensagem>
    Exemplos:
      | URL Relativa                               |  Mensagem     |
      | 'noticia/teste-automatico-da-noticia-fsi4' | 'foi apagado' |
