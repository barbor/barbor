#encoding: utf-8

E /^a tecla de identificador '(.+)' é pressionada$/ do |key_id|
  visit ArborKeyboardPage do |page| page.press key_id end
end
