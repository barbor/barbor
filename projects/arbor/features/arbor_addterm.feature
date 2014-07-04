# language: pt

Funcionalidade: Adição de Foco Estratégico
  Enquanto administrador gostaria de gerenciar 
  os termos do vocabulário Foco Estratégico
  Esquema do Cenario: Adição do termo ao vocabulário 
    Dado que o usuário visita a página com url relativa <Criação de Termo>
    Quando é criado o termo <Termo>
    Exemplos:
      | Criação de Termo                              | Termo              |
      | 'admin/structure/taxonomy/strategy_focus/add' | 'Termo Automático' |
