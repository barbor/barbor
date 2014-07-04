# language: pt
Funcionalidade: Formulário de contato
  Como um visitante anônimo do Drupal
  Eu quero entrar em contato com o administrador
  Para fazer conhecer minha opinião
  Esquema do Cenario: Envio de mensagem pelo formulário de contato
    Dado que o usuário com o nome <Nome>, email <Email> envia a mensagem <Mensagem>
    Então é exibida a mensagem <Mensagem de Status>
    E não é exibida a mensagem de erro <Mensagem de Erro>
    Exemplos:
      | Nome      | Email                   | Mensagem | Mensagem de Status                | Mensagem de Erro                  |
      | 'Rodrigo' | 'rodrigo@taller.net.br' | 'Teste'  | 'Your submission has been saved.' | 'Não foi possível enviar e-mail'  | 
