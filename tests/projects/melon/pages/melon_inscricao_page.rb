# encoding: utf-8

class MelonRegisterPage
  include PageObject

  direct_url BASE_URL + 'user/register'

  text_field :user_cnpj_field, :id => 'edit-field-single-cnpj-und-0-value'
  text_field :user_mail_field, :id => 'edit-mail'
  button :register, :name => 'op'

  def register_user user_cnpj,user_mail
    self.user_cnpj_field = user_cnpj
    self.user_mail_field = user_mail
    register
  end
end
