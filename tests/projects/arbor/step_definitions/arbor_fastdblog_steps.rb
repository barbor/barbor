#encoding: utf-8

Então /^a coluna Usuário é gerenciada pelo módulo '(.+)'$/ do |dblog_module|
  visit ArborFastdblogPage do |page|
    page.dblog_results_element.html.should =~ /\/#{dblog_module}/
  end
end

