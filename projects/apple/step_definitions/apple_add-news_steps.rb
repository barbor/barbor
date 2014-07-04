#encoding: utf-8

#Dado(/^que é cadastrada uma notícia com Título 'Teste automático da notícia fsi\-(\d+)', sob o foco estratégico 'Sim'$/) do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

Dado /^que é cadastrada uma notícia com Título '(.+)', sob o foco estratégico '(.+)' e corpo '(.+)'$/ do |news_title, focus_term, news_body|
  visit AppleAddNewsPage do |page| page.add_news news_title, focus_term, news_body end
end


#Dado /^que é cadastrada uma notícia com Título '(.+)', sob o foco estratégico '(.+)'$/ do |news_title, focus_term|
#  visit AppleAddNewsPage do |page| page.add_news news_title, focus_term end
#end
