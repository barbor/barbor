# language: pt

Funcionalidade: Adiçao de item de menu
  Como um conteudista do Drupal
  Eu quero criar um novo item de menu
  Para facilitar a navegação dos visitantes

  Esquema do Cenario: Inserção do item de menu
    Dado que é inserido no menu <Menu>, o item <Item de Menu> com destino <URL de Destino>, descrição <Descrição> e peso <Peso>
    Então é exibida a mensagem <Mensagem de Status> 
    E o link <Item de Menu> é exibido na Página Inicial
    Exemplos:
      | Menu            | Item de Menu | URL de Destino             | Descrição                  | Peso  | Mensagem de Status           | 
      | 'menu-entities' | 'TALLER'     | 'http://www.taller.net.br' | 'Teste automático de menu' | '-50' |'Sua configuração foi salva.' |

  Esquema do Cenario: Remoção do item de menu
    Dado que é removido o primeiro item do menu <Menu>
    Então é exibida a mensagem <Mensagem de Status> 
    Exemplos:
      | Menu            | Mensagem de Status |
      | 'menu-entities' | 'foi apagado'      |
#
#  Esquema do Cenario: Inserção do item de menu de redes sociais   
#    Dado que é inserido o ícone do menu <Menu>
    #E é inserido o item <Item de Menu> com destino <URL de Destino> e descrição <Descrição>
    #Dado que é inserido, no menu <Menu>, o item <Item de Menu> com destino <URL de Destino> e descrição <Descrição>
    #Então é exibida a mensagem <Mensagem de Status>
    #E o link <Item de Menu> é exibido na Página Inicial
#    Exemplos:
#      | Menu                 | Item de Menu | URL de Destino             | Descrição                  | Peso  | Mensagem de Status           |
#      | 'menu-social-medias' | 'TALLERL'    | 'http://www.taller.net.br' | 'Teste automático de menu' | '-50' |'Sua configuração foi salva.' |

#  Esquema do Cenario: Remoção do item de menu
#    Dado que é removido o primeiro item do menu <Menu>
#    Então é exibida a mensagem <Mensagem de Status>
#    Exemplos:
#      | Menu            | Mensagem de Status |
#      | 'menu-entities' | 'foi apagado'      |


#
#Funcionalidade: Adiçao de item de menu
#  Como um conteudista do Drupal
#  Eu quero criar um novo item de menu
#  Para facilitar a navegação dos visitantes
#
#  Esquema do Cenario: Inserção do item de menu
#    Dado que é inserido, no menu <Menu>, o item <Item de Menu> com destino <URL de Destino> e descrição <Descrição> e peso <Peso>
#    Então é exibida a mensagem <Mensagem de Status> 
#    E o link <Item de Menu> é exibido na Página Inicial
#    Exemplos:
#      | Menu            | Item de Menu | URL de Destino             | Descrição                  | Peso  | Mensagem de Status           | 
#      | 'menu-entities' | 'TALLER'     | 'http://www.taller.net.br' | 'Teste automático de menu' | '-50' |'Sua configuração foi salva.' |
#
#  Esquema do Cenario: Remoção do item de menu
#    Dado que é removido o primeiro item do menu <Menu>
#    Então é exibida a mensagem <Mensagem de Status> 
#    Exemplos:
#      | Menu            | Mensagem de Status |
#      | 'menu-entities' | 'foi apagado'      |
#
#  Esquema do Cenario: Inserção do item de menu de redes sociais   
#    Dado que é inserido o ícone do menu <Menu>
#    #E é inserido o item <Item de Menu> com destino <URL de Destino> e descrição <Descrição>
#    #Dado que é inserido, no menu <Menu>, o item <Item de Menu> com destino <URL de Destino> e descrição <Descrição>
#    #Então é exibida a mensagem <Mensagem de Status>
#    #E o link <Item de Menu> é exibido na Página Inicial
#    Exemplos:
#      | Menu                 | Item de Menu | URL de Destino             | Descrição                  | Peso  | Mensagem de Status           |
#      | 'menu-social-medias' | 'TALLERL'    | 'http://www.taller.net.br' | 'Teste automático de menu' | '-50' |'Sua configuração foi salva.' |
#
#  Esquema do Cenario: Remoção do item de menu
#    Dado que é removido o primeiro item do menu <Menu>
#    Então é exibida a mensagem <Mensagem de Status>
#    Exemplos:
#      | Menu            | Mensagem de Status |
#      | 'menu-entities' | 'foi apagado'      |
#
