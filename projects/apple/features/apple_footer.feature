# language: pt
Funcionalidade: Configuração do Rodapé
  Enquanto usuário gostaria de ver o rodapé 
  para eu poder acessar outros portais da fiesc e 
  também ver o endereço (fsi-31)
  Esquema do Cenario: Inserção de dados textuais no rodapé.
    Dado que são inseridos <Localização> e <Telefone> no rodapé
    E que eu estou na página inicial do Portal FIESC
    Então é exibido o texto <Localização> 
    E é exibido o texto <Telefone>
    Exemplos:
      | Localização                                                                  | Telefone                     |
      | 'FIESC - Rodovia Admar Gonzaga, 26975 Itacorubi. 88060-225. Florianóposli/SC'| '48 3231 4100 - 0800 481212' |
