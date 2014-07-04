# language: pt

Funcionalidade: Remoção de foco estratégico
  Enquanto administrador gostaria de gerenciar 
  os termos do vocabulário Foco Estratégico
  Esquema do Cenario: Remoção do termo do vocabulário 
    Dado que o usuário visita a página com url relativa <Remoção do Termo>
    Quando o termo é removido
    Então é exibida a mensagem <Mensagem de Status>
    Exemplos:
      | Remoção do Termo                    | Mensagem de Status |
      | 'foco-estrategico/termo-automatico' | 'foi apagado'      |
