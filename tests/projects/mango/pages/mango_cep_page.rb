# encoding: utf-8

class MangoCEPPage
  include PageObject

  PageObject.javascript_framework = :jquery

  #direct_url BASE_URL + 'user'
  #direct_url BASE_URL
  #direct_url BASE_URL

  text_field :user_cep_field, :id => 'edit-cep-part1'
  text_field :user_sufixo_cep_field, :id => 'edit-cep-part2'
  button :identify, :value => 'Confirmar'

  def identify_address user_cep, user_sufixo_cep
    self.user_cep_field = user_cep
    self.user_sufixo_cep_field = user_sufixo_cep
    identify
  
    wait_for_ajax
 
  end
end
