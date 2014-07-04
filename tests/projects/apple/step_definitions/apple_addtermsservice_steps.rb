#encoding: utf-8

Quando /^a Página do Serviço é excluída$/ do
  on AppleExcludeEditServicePage do |page| page.service_edit_exclude end
  on AppleExcludeServicePage do |page| page.service_exclude end
end

#E /^é selecionada a opção '(.+)'$/ do |informatica|
#  on AppleAddServiceOptionPage do |page| page.select informatica end
#end

E /^é selecionada a opção '(.+)'$/ do |option|
  on AppleAddServiceOptionPage do |page| page.select option end
end


Dado /^que é cadastrado um Serviço com o título '(.+)' e frame '(.+)'$/ do |service_title, service_frame|
  on AppleAddServicePage do |page| page.add_service service_title, service_frame end
end

E /^são selecionados o tipo de serviço '(.+)'$/ do |service_type|
  pending # express the regexp above with the code you wish you had
end

Quando /^é selecionado o Serviço do tipo '(.+)' na região '(.+)'$/ do |service_type, service_region|
  visit AppleSelectServicePage do |page| page.select_service service_type, service_region end
end

Então /^é exibida a página com o título '(.+)'$/ do |service_title|
  #pending # express the regexp above with the code you wish you had
  visit AppleServicePage do |page| page.check_service service_title end
end


