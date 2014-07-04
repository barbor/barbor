# encoding: utf-8

Dado /^que é inserido no menu '(.+)', o item '(.+)' com destino '(.+)', descrição '(.+)' e peso '(.+)'$/ do |menu, menu_iten, iten_link, iten_description, iten_weight|
  visit ArborMenuPage do |page| page.visit_menu menu end
  on ArborMenuAddItenPage do |page| page.add_menu_iten menu_iten, iten_link, iten_description, iten_weight end
end

Então /^o link '(.+)' é exibido na Página Inicial$/ do |menu_iten|
  visit AppleHomePage
end

Dado /^que é removido o primeiro item do menu '(.+)'$/ do |menu|
  visit ArborMenuPage do |page| page.visit_menu_list menu end
  on ArborMenuRemoveItenPage do |page| page.remove_first_iten end
  on ArborMenuRemoveItenPage do |page| page.agree end
end