#encoding: utf-8

E /^clico no link Apagar$/ do
  on GrapeRemoveProductPage do |page| page.click_remove_link end
end

E /^clico no botão Excluir$/ do
  on GrapeRemoveProductPage do |page| page.click_remove_button end
end
