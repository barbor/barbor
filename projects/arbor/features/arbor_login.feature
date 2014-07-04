# language: pt
Funcionalidade: Login no Portal Drupal
  Como um visitante anônimo do Drupal
  Eu quero me autenticar
  Para deixar de ser um visitante anônimo

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
