#encoding: utf-8

Dado /^que o usuário está registrado com o nome '(.+)' e senha '(.+)'$/ do |user_name,user_pass|  
  visit ArborLoginPage do |page| page.login_user user_name, user_pass end
end

Quando /^ele acessa a página do usuário$/ do
  visit ArborUserPage
end

Então /^ele vê o nome '(.+)'$/ do |user_name|
  on ArborUserPage do |page|
    #page.html.should =~ /.+<title>#{user_name}/
    page.user_name.should =~ /^#{user_name}$/i
  end
end
