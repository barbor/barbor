#encoding: utf-8

Quando /^a Página da Notícia é editada$/ do
  on AppleExcludeEditNewsPage do |page| page.news_edit_exclude end
  on ArborFieldPage do |page| page.set_field 'Sub título', 'teste' end
  on ArborFieldPage do |page| page.click_button 'Salvar' end
end

