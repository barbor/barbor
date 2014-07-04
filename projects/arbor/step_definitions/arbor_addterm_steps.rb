#encoding: utf-8

Quando /^é criado o termo '(.+)'$/ do |taxonomy_term|
  visit ArborAddTermPage do |page| page.add_term taxonomy_term end
end

Dado /^que o administrador adiciona o termo '(.+)' ao vocabulário '(.+)'$/ do |term, vocabulary|
  visit ArborAddTermPage do |page| page.add_term term, vocabulary end
end
