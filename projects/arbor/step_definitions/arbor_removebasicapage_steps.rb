#encoding: utf-8

Quando /^a Página Básica é removida$/ do
  visit ArborEditBasicpagePage do |page| page.edit_basicpage end
  visit ArborRemoveBasicpagePage do |page| page.remove_basicpage end
end