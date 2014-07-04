#encoding: utf-8

Dado /^que eu estou na lista das iniciativas$/ do
  visit AppleListInitiativesPage
end

Então /^é exibido um link para um conteúdo do tipo '(.+)'$/ do |content_type|
  visit AppleListInitiativesResultsPage do |page|
    page.list_results_element.html.should =~ /\/#{content_type}/
  end
end

