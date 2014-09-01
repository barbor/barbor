#encoding: utf-8

Quando /^é definido para o campo '(.+)' o valor '(.+)'$/ do |field_label, field_value|
  visit ArborFieldPage do |page| page.set_field field_label, field_value end
end

Quando /^o botão '(.+)' é pressionado$/ do |button_label|
  on ArborFieldPage do |button| button.click_button button_label end
end

Quando /^o elemento com a etiqueta '(.+)' com o conteúdo '(.+)' é pressionado$/ do |button_tag, button_tag_value|
  on ArborFieldPage do |button| button.click_element_by_tag button_tag, button_tag_value end
end

Quando /^o botão '(.+)' é pressionado por '(.+)' vezes$/ do |button_label, button_times|
  on ArborFieldPage do |page|
    puts button_times
    times = button_times.to_i
    puts times
    while 0 < times do
      page.click_button button_label end
      times -=1
      puts times
    end
end
