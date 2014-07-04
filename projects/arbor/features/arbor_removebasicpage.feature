# language: pt

Funcionalidade: Remoção da Página Básica
  Enquanto administrador gostaria de gerenciar 
  as Páginas Básicas
  Esquema do Cenario: Remoção da Página Básica
    Dado que o usuário visita a página com url relativa <Página Básica>
    Quando a Página Básica é removida
    Então é exibida a mensagem <Mensagem de Status>
    Exemplos:
      | Página Básica                       | Mensagem de Status |
      | 'teste-automatico-da-pagina-basica' | 'foi apagado'      |
