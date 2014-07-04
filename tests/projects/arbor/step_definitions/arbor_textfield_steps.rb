#encoding: utf-8

Quando /^é preenchido no campo '(.+)' o valor '(.+)'$/ do |field_label, field_value|
  visit ArborTextFieldPage do |page| page.set_text field_label field_value end
end