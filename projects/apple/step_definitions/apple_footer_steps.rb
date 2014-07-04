#encoding: utf-8

Dado /^que são inseridos '(.+)' e '(.+)' no rodapé$/ do |apple_address, apple_telephone|
  visit AppleConfigDomainPage do |page| page.config_domain apple_address, apple_telephone end
end

Então /^é exibido o texto '(.+)'$/ do |text_data|
  on AppleHomePage do |page|
    #@TODO: Restricte below for covering only footer html data.
    page.html.should =~ /#{text_data}/
  end
end

#Dado /^que eu estou na página inicial do Portal FIESC$/ do
#  visit AppleHomePage
#end

#Quando /^eu busco por '(.+)'$/ do |search_term|
#  on AppleHomePage do |page| page.search_for search_term end
#end

#Entao /^eu deveria ver (\d+) resultados$/ do |search_results|
#  on GrapeSearchResultsPage do |page|
#    page.search_results.should =~ /^.+#{search_results}.+$/
#  end
#end
