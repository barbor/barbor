#encoding: utf-8

Quando /^preencho os campos obrigatórios do parceiro '(.+)'$/ do |partner|
  on GrapeAddPartnerPage do |page| page.fill_mandatory_fields partner end
end

E /^indico uma cidade a este parceiro$/ do
  on GrapeAddPartnerPage do |page| page.fill_city end
end