# encoding: utf-8

class AppleExcludeEditServicePage 
  include PageObject

  PageObject.javascript_framework = :jquery

  link :edit_service, :text => 'Editar'  

  def service_edit_exclude
 
    wait_for_ajax

    edit_service

    wait_for_ajax

  end

end
