# language: pt
Funcionalidade: Mídia Center - Aba Publicações
  Como um visitante anônimo do Portal FIESC
  Eu quero baixar publicações no Mídia Center
  Para poder lê-las off-line

Esquema do Cenário: Download de publicação
  Dado que o usuário visita a página com url relativa <Página de Publicações>
  Quando clico no link de uma publicaçao
  Então ele NÃO deve ver a mensagem <Mensagem>
  Exemplos:
    | Página de Publicações           | Mensagem         |
    | 'central-de-midias/publicacoes' | 'Page not found' |
#    | 'pt-br/node/45'                 | 'Page not found' |
