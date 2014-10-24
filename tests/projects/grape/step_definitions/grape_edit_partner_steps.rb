#encoding: utf-8

Quando /^pesquiso pelo parceiro '(.+)'$/ do |partner|
  on GrapeEditPartnerPage do |page| page.search_partner partner end
end

E /^clico no link para editar o parceiro$/ do
  on GrapeEditPartnerPage do |page| page.click_edit_link end
end

Quando /^adiciono um produto que ele representa, dá suporte, instala e revende$/ do
  on GrapeEditPartnerPage do |page| page.add_product end
end
