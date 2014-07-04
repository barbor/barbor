#encoding: utf-8

Dado /^que estou na página dos estados das features$/ do
  visit ArborFeaturesPage
end  

Então /^nenhuma feature deve estar no estado '(.+)'$/ do |features_status|
  on ArborFeaturesPage do |page|
    #page.html.should_not =~ /^.+#{features_status}<\/a><\/td>.+$/
    page.check_features_status features_status
  end
end
