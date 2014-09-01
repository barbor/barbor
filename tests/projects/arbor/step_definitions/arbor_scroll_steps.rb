#encoding: utf-8

Quando /^é rolada a página para '(.+)'$/ do |scroll_direction|
  visit ArborScrollPage do |page| page.scroll_page scroll_direction end
end
