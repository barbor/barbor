# encoding: utf-8

class AppleExcludeEditNewsPage 
  include PageObject

  PageObject.javascript_framework = :jquery

  link :edit_news, :text => 'Editar'  

  def news_edit_exclude

    wait_for_ajax

    edit_news

    wait_for_ajax

  end

end
