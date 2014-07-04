# encoding: utf-8

class MelonAgreementPage
  include PageObject

  #PageObject.javascript_framework = :jquery

  #direct_url BASE_URL + 'admin/people/exportacao/industrias'
  
  #button :submit, :name => 'op'  

  #text_field :user_pass_field, :id => 'edit-pass-pass1'
  #text_field :user_pass_confirm_field, :id => 'edit-pass-pass2'

  checkbox :assign_term, :name => 'agreement'

  button :agree, :value => 'Confirmar' 
  
  #link :admin, :link_text => 'admin'  
  #link :logout, :link_text => 'Sair'
  
  def agree_term

    #self.submit
   
    #self.user_pass_field = user_password
    #self.user_pass_confirm_field = user_password
 
    #self.submit

    #wait_for_ajax
  
    #self.submit

    #wait_for_ajax

    self.check_assign_term

    self.agree

    #wait_for_ajax

    #self.agree

    #stored_reset_object = self.reset_link_element.html
    #reset_end_link = stored_reset_object.match(/"(.+)"/)[1]

    #self.admin
    #wait_for_ajax
    #self.logout
    #wait_for_ajax   

    #navigate_to reset_end_link

  end

end
