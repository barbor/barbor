#encoding: utf-8

Quando /^o link com texto '(.+)' é clicado$/ do |link_text|
  visit ArborLinkPage do |page| page.hit_link link_text end
end

# Quando /^é definido para o campo '(.+)' o valor '(.+)'$/ do |field_label, field_value|
#   visit ArborFieldPage do |page| page.set_field field_label, field_value end
# end
#
# Quando /^o botão '(.+)' é pressionado$/ do |button_label|
#   on ArborFieldPage do |button| button.click_button button_label end
# end
