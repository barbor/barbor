#encoding: utf-8

Quando /^pesquiso pelo produto '(.+)'$/ do |product|
  on GrapeEditProductPage do |page| page.search_product product end
end

E /^clico no link para editar o produto$/ do
  on GrapeEditProductPage do |page| page.click_edit_link end
end

Então /^o sistema apresenta a aba informações gerais selecionada com seus campos visíveis$/ do
  on GrapeEditProductTabsPage do |page| page.verify_if_general_information_tab_and_its_fields_are_visible end
end

E /^não exibe campos de outras abas$/ do
  on GrapeEditProductTabsPage do |page| page.verify_if_fields_from_other_tabs_are_not_visible end
end

Quando /^clico no botão Salvar$/ do
  on GrapeEditProductTabsPage do |page| page.click_save_button end
end

Então /^vejo a mensagem foi atualizado$/ do
  on GrapeProductSuccessfullyEditedPage do |page| page.verify_successfully_updated_message end
end
