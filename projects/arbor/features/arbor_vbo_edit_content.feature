# language: pt
Funcionalidade: Editar conteúdo
  Como um administrador do Drupal
  Eu quero editar um conteúdo
  Esquema do Cenario: Remover conteúdo
    Dado que eu escolho a operação <Operação> sobre o conteúdo com título <Título>
    #Quando edito a propriedade Status para a opção <Status>
    #Então é exibida e mensagem de status <Mensagem>
    Exemplos:
      | Operação  | Título              | Status  | Mensagem    | 
      | 'Excluir' | 'Teste de campanha' | 'Ativo' | 'Performed' |
