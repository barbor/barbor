#encoding: utf-8

#int-542
Dado /^que eu estou na página inicial do Portal Grape$/ do
  visit GrapeHomePage
end

#Quando /^eu busco por '(.+)'$/ do |search_term|
#  on GrapeHomePage do |page| page.search_for search_term end
#end

Entao /^eu deveria ver (\d+) resultados$/ do |search_results|
  on GrapeSearchResultsPage do |page|
    page.search_results.should =~ /^.+#{search_results}.+$/
  end
end
