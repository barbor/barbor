# encoding: utf-8

class ArborVboOperateUserPage
  include PageObject

  PageObject.javascript_framework = :jquery

  checkbox :first_user, :id => 'edit-views-bulk-operations-0'
  select_list :vbo_operation, :id => 'edit-operation'
  
  button :vbo_execute, :id => 'edit-submit--2'

  def operate_user operation
    wait_for_ajax
    self.check_first_user
    wait_for_ajax
    self.vbo_operation = operation        
    wait_for_ajax
    vbo_execute
  end  
end
