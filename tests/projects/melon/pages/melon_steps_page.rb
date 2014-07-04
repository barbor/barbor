# encoding: utf-8

class MelonFirstAcessStepsPage
  include PageObject

  #PageObject.javascript_framework = :jquery
  
  button :submit, :name => 'op'  

  text_field :user_pass_field, :id => 'edit-pass-pass1'
  text_field :user_pass_confirm_field, :id => 'edit-pass-pass2'
  
  def confirm_and_signup user_password

    #entrance
    self.submit
   
    self.user_pass_field = user_password
    self.user_pass_confirm_field = user_password
 
    #confirm password
    self.submit

    #self.submit
    #self.submit
    #wait_for_ajax
    #self.submit 
    #confirm industry information
    #self.submit

  end

end
