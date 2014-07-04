# encoding: utf-8

class AppleAdminConfigPeopleLdapPage
  include PageObject

  PageObject.javascript_framework = :jquery

  direct_url BASE_URL + 'admin/config/people/ldap'

  checkbox :switch_ldap_field, :name => 'ldap_access_by_pass'

  #text_field :user_name_field, :id => 'edit-name'
  #text_field :user_pass_field, :id => 'edit-pass'
  button :save, :value => 'Salvar configurações'

  def switch_ldap ldap_state

    wait_for_ajax

    if ldap_state == 'Habilitado'
      self.check_switch_ldap_field
    elsif ldap_state == 'Desabilitado'
      self.uncheck_switch_ldap_field
    end

    #self.user_name_field = user_name
    #self.user_pass_field = user_pass
    save

    wait_for_ajax

  end
end
