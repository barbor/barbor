# encoding: utf-8

E /^excluo o parceiro$/ do
  on GrapeRemovePartnerPage do |page| page.click_remove_link end
  on GrapeRemovePartnerPage do |page| page.click_remove_button end
end