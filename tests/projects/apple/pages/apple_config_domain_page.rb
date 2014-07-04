# encoding: utf-8

class AppleConfigDomainPage 
  include PageObject

  PageObject.javascript_framework = :jquery

  #expected_title 'Início | Grape'
  direct_url BASE_URL + 'admin/structure/domain/view/1/config'

  text_field :address_field, :id => 'edit-local-address'
  text_field :phone_field, :id => 'edit-phone'

  button :configure_domain, :id => 'edit-submit'

  def config_domain address, phone

    wait_for_ajax

    self.address_field = address
    self.phone_field = phone
    
    configure_domain

    wait_for_ajax

  end

end
