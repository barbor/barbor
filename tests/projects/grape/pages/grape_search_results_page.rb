class GrapeSearchResultsPage
  include PageObject
  expected_title /.+ Busca | Grape\./
  expected_element :class => 'view-header'
  div :search_results, :class => 'view-header'
end