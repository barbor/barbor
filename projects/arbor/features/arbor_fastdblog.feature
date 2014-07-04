# language: pt
Funcionalidade: Registros do sistema fsi-38
  Enquanto administrador gostaria de gerenciar 
  os logs do portal para saber o que os usuários estão fazendo

  Esquema do Cenario: Exibição dos usuários nos registros 
    Dado que o usuário visita a página com url relativa <Página de Registros>
    Então a coluna Usuário é gerenciada pelo módulo <Módulo de Gerenciamento de Registros>
    Exemplos:
      | Página de Registros        | Módulo de Gerenciamento de Registros |
      | 'admin/reports/fast-dblog' | 'fast-dblog'                         |
