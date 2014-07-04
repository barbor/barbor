# encoding: utf-8

class MelonConfirmDataStepsPage
  include PageObject

  #PageObject.javascript_framework = :jquery
  
  #text_field :fax, :id => 'edit-field-fax-contact-und-0-value'
  #text_field :fax, :value => 'Salvar'

  #button :confirm, :name => 'op'  

  button :confirm, :value => 'Salvar'

  #checkbox :assign_term, :id => 'edit-agreement'

  #div :agree, :value => 'Confirmar'


  #text_field :user_pass_field, :id => 'edit-pass-pass1'
  #text_field :user_pass_confirm_field, :id => 'edit-pass-pass2'
  
  def confirm_data

    #entrance
    #wait_for_ajax
    #self.fax = '(48) 3238-2538'
    
    self.confirm

    #self.check_assign_term

    #self.agree
 
    #self.agree
   
    #self.user_pass_field = user_password
    #self.user_pass_confirm_field = user_password
 
    #confirm password
    #self.submit
    #wait_for_ajax
  
    #confirm industry information
    #self.submit

  end

end
