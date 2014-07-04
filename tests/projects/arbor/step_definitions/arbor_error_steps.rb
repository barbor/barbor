#encoding: utf-8

Dado /^que o usuário visita a página com url relativa '(.+)'$/ do |relative_url|
  visit ArborErrorPage do |page| page.visit_page relative_url end
end

Então /^ele NÃO deve ver a mensagem '(.+)'$/ do |arbor_message|
  on ArborErrorPage do |page|
    page.html.should_not =~ /^.+#{Arbor_message}.+$/
  end
end
