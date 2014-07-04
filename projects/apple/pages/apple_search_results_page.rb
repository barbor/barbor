# encoding: utf-8

class AppleSearchResultsPage
  include PageObject
  #expected_title /.+ Busca | Grape\./
  #expected_element :class => 'view-header'
  div :search_results, :class => 'views-row views-row-1 views-row-odd views-row-first'

end
