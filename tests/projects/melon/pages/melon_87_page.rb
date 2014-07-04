# encoding: utf-8

class MelonAdminPeoplePage
  include PageObject

  expected_title 'Pessoas | Vacinação Apple Melon'
  direct_url BASE_URL + 'admin/people'

  #text_field :search_box, :id => 'edit-keywords'
  #button :search, :id => 'edit-submit-generic-search'

  #def search_for search_term
  #  self.search_box = search_term
  #  search
  #end

end


#class GrapeSearchResultsPage
#  include PageObject
#  expected_title /.+ Busca | Grape\./
#  expected_element :class => 'view-header'
#  div :search_results, :class => 'view-header'
#end
