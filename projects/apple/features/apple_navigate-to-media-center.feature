# language: pt
Funcionalidade: Navegaçao no menu Imprensa ao Mídia Center
  Como um visitante anônimo do Portal FIESC
  Eu quero ter um menu chamado Imprensa
  Para por meio deste poder navegar pelas páginas do Mídia Center

Esquema do Cenário: Navegação via menu Imprensa para o Mídia Center
  Dado que sou usuário anônimo
  Quando acesso o menu <Menu>
  Então quero ter acesso ao Mídia Center, conforme o menu acessado
  Exemplos:
  | Menu                |
  | 'Fotos/Notícias'    |
  | 'Fotos/Fontes'      |
  | 'Fotos/Gerais'      |
  | 'Rádio'             |
  | 'Newsletter'        |
  | 'Premio Jornalismo' |
  | 'Contato'           |

Esquema do Cenário: Navegação até Contato
