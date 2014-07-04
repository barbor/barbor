#encoding: utf-8

Dado /^que a janela mede '(.+)' pixeis de largura e '(.+)' pixeis de altura$/ do |width, height|
  visit AppleResizePage do |page| page.resize_window width, height end
end
