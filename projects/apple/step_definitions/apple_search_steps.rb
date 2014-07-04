#encoding: utf-8

Dado /^que eu estou na página inicial do Portal FIESC$/ do
  visit AppleHomePage
end

Quando /^eu busco por '(.+)'$/ do |search_term|
  on AppleHomePage do |page| page.search_for search_term end
end

Então /^eu deveria ver '(.+)' em primeiro lugar nos resultados$/ do |search_term|
  visit AppleSearchResultsPage do |page|
    page.search_results.should =~ /^#{search_term}/
  end
end
