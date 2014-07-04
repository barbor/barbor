# encoding: utf-8

class AppleExcludeServicePage
  include PageObject

  PageObject.javascript_framework = :jquery

  #link :edit_campaign, :text => 'Editar'  
  #button :exclude_news_button, :value => 'Excluir'
  button :exclude_service_button, :value => 'Apagar'

  def service_exclude
   
    wait_for_ajax

    exclude_service_button

    wait_for_ajax    

    exclude_service_button

    wait_for_ajax

  end

end
