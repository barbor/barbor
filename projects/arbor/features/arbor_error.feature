# language: pt
Funcionalidade: Comportamento Padrão
  Como um visitante do Drupal
  Eu quero visitar uma página
  E não quero ver mensagens de erro
  Esquema do Cenario: Acesso e leitura
    Dado que o usuário visita a página de interesse
    Então ele NÃO deve ver a mensagem de erro com <Mensagem>
      Exemplos:
      | Mensagem |  
      | 'Notice' |
