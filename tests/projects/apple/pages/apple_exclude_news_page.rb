# encoding: utf-8

class AppleExcludeNewsPage
  include PageObject

  PageObject.javascript_framework = :jquery

  #link :edit_campaign, :text => 'Editar'  
  #button :exclude_news_button, :value => 'Excluir'
  button :exclude_news_button, :value => 'Apagar'

  def news_exclude

    wait_for_ajax

    exclude_news_button

    wait_for_ajax

    exclude_news_button

    wait_for_ajax

  end

end
