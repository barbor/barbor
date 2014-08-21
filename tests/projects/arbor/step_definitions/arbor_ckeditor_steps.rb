#encoding: utf-8

Quando /^é definido para o Ckeditor com label '(.+)' o valor '(.+)'$/ do |ckeditor_label, ckeditor_value|
  visit ArborCkeditorPage do |page| page.set_ckeditor ckeditor_label, ckeditor_value end
end

# Quando /^é definido para o campo '(.+)' o valor '(.+)'$/ do |field_label, field_value|
#   visit ArborFieldPage do |page| page.set_field field_label, field_value end
# end
#
# Quando /^o botão '(.+)' é pressionado$/ do |button_label|
#   on ArborFieldPage do |button| button.click_button button_label end
# end
