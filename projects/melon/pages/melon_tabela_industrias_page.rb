# encoding: utf-8

class MelonTabelaIndustriasPage
  include PageObject

  PageObject.javascript_framework = :jquery

  direct_url BASE_URL + 'admin/people/exportacao/industrias'
  
  link :reset_link, :link_text => 'Recuperar senha'  
  link :admin, :link_text => 'admin'  
  link :logout, :link_text => 'Sair'
  
  def reset_password

    stored_reset_object = self.reset_link_element.html
    reset_end_link = stored_reset_object.match(/"(.+)"/)[1]

    self.admin
    wait_for_ajax
    self.logout
    wait_for_ajax   

    navigate_to reset_end_link

  end

end
