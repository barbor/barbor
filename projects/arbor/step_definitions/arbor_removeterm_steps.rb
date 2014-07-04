#encoding: utf-8

Quando /^o termo é removido$/ do
  visit ArborEditTermPage do |page| page.edit_term end
  visit ArborRemoveTermPage do |page| page.remove_term end
end