#encoding: utf-8

Quando /^clico no botão Buscar Produto Por Nome$/ do
  on AppleSearchProductByCategoryOnSupportPagesPage do |page| page.click_on_search_by_product_name_button end
end

Então /^vejo o campo texto para preenchimento da busca e o botão buscar desabilitado$/ do
  visit AppleSearchProductByNameOnSupportPagesPage do |page| page.verify_filter end
end

E /^já selecionei um produto '(.+)'$/ do |product|
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.select_product product end
end

Quando /^realizo uma busca incompleta de localidade$/ do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.fill_location end
end

Então /^devo poder selecionar uma sugestão de localidade$/ do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.click_on_search_by_location_button end
end

E /^ao limpar o campo de localidade$/ do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.clear_location end
end

Então /^o botão de buscar localidade deve ser desabilitado$/ do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.verify_search_by_location_button_after_clear_search_by_location_text_field end
end

Quando /^acesso a seção '(.+)'$/  do |section|
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.select_section section end
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.remove_ocqi_form section end
end

Quando /^digito e seleciono um produto '(.+)'$/ do |product|
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.fill_and_select_product product end
end

Então /^o botão Buscar é habilitado$/ do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.verify_search_by_product_name_button_is_enabled end
end

Quando /^limpo o campo para busca de produto$/ do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.clean_search_by_product_name_field end
end

Então /^o botão Buscar é desabilitado$/ do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.verify_search_by_product_name_button_is_disabled end
end