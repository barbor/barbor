# encoding: utf-8

class GrapeHomePage 
  include PageObject

  expected_title 'Início | Grape'
  direct_url BASE_URL

  text_field :search_box, :id => 'edit-keywords'
  button :search, :id => 'edit-submit-generic-search'  

  def search_for search_term
    self.search_box = search_term
    search
  end

end
