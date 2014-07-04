# encoding: utf-8

class ArborAdminPeopleResultsPage
  include PageObject

  PageObject.javascript_framework = :jquery
  
  direct_url BASE_URL + 'admin/people'

  select_list :vbo_operation, :id => 'edit-operation'
  checkbox :first_user, :id => 'edit-views-bulk-operations-0'
  button :remove_user, :id => 'edit-submit--2'
  button :confirm_remove_user, :name => 'op'
  text_field :user_name_field, :id => 'edit-name'
  button :apply, :id => 'edit-submit-admin-views-user'
  div :confirm_message, :class => 'messages status'

  def delete_user
    wait_for_ajax
    self.check_first_user
    self.vbo_operation = 'Apagar'
    remove_user
    wait_for_ajax
    confirm_remove_user
    wait_for_ajax
  end
  
  def find_user user_name
    self.user_name_field = user_name
    apply
  end
  
end
