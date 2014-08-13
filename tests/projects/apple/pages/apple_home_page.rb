# encoding: utf-8

class AppleHomePage 
  include PageObject

  PageObject.javascript_framework = :jquery

  #expected_title 'Início | Grape'
  direct_url BASE_URL

  text_field :search_box, :id => 'edit-keywords'
  button :search, :id => 'edit-submit-generic-search'  
  #button :search, :id => 'edit-submit-search'

  def search_for search_term

    wait_for_ajax

    self.search_box = search_term
    search

    wait_for_ajax

  end

end
