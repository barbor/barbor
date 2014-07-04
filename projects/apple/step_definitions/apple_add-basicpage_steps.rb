#encoding: utf-8

#Dado(/^que é cadastrada uma notícia com Título 'Teste automático da notícia fsi\-(\d+)', sob o foco estratégico 'Sim'$/) do |arg1|
#  pending # express the regexp above with the code you wish you had
#end

Dado /^que é cadastrada uma Página Básica com o título '(.+)'$/ do |basicpage_title|
  visit AppleAddBasicpagePage do |page| page.add_basicpage basicpage_title end
end

#Então(/^não deve existir item de menu para a 'teste\-automatico\-da\-pagina\-basica'$/) do
#  pending # express the regexp above with the code you wish you had
#end

#Então /^não deve ser exibido item de menu para o '(.+)'$/ do |basicpage_link|


Então /^não deve ser exibido item de menu para o '(.+)'$/ do |basicpage_link|
  visit ArborAbsentMenuPage do |page| page.menu_absent basicpage_link end
end

#Dado /^que é cadastrada uma notícia com Título '(.+)', sob o foco estratégico '(.+)'$/ do |news_title, focus_term|
#  visit AppleAddNewsPage do |page| page.add_news news_title, focus_term end
#end
