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
