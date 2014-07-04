# encoding: utf-8

class ArborVboPropertiesUserPage
  include PageObject

  PageObject.javascript_framework = :jquery

  checkbox :propertie_status, :id => 'edit-properties-show-value-status'
  select_list :user_status, :id => 'edit-properties-status'
  
  button :vbo_submit, :name => 'op'
  
  div :confirm_message, :class => 'messages status'
  
  def edit_status status_option
    wait_for_ajax    
    self.check_propertie_status
    wait_for_ajax
    self.user_status = status_option
    wait_for_ajax
    vbo_submit
    wait_for_ajax
  end
end
