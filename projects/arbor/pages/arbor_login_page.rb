# encoding: utf-8

class ArborLoginPage
  include PageObject

  direct_url BASE_URL + 'user'

  text_field :user_name_field, :id => 'edit-name'
  text_field :user_pass_field, :id => 'edit-pass'
#  button :login, :value => 'Entrar'
  button :login, :name => 'op'  

  def login_user user_name,user_pass
    self.user_name_field = user_name
    self.user_pass_field = user_pass
    login
  end
end
