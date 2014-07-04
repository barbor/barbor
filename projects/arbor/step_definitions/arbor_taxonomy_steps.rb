#encoding: utf-8

Dado /^que o '(.+)' é editado$/ do |term_initial|
  visit ArborTaxonomyPage do |page| page.access_term term_initial end
end

Quando /^o renomeio para '(.+)'$/ do |term_final|
  on ArborTaxonomyTermPage do |page| page.edit_term term_final end
end

Então /^vejo a mensagem '(.+)'$/ do |status_message|
  on ArborTaxonomyStatusPage do |page| page.check_message status_message end
end
