#encoding: utf-8

Dado /^que o LDAP está no estado '(.+)'$/ do |ldap_state|
  visit AppleAdminConfigPeopleLdapPage do |page| page.switch_ldap ldap_state end
end

#Dado /^que o usuário está registrado com o nome '(.+)' e senha '(.+)'$/ do |user_name,user_pass|  
#  visit ArborLoginPage do |page| page.login_user user_name, user_pass end
#end

#Quando /^ele acessa a página do usuário$/ do
#  visit ArborUserPage
#end

#Então /^ele vê o nome '(.+)'$/ do |user_name|
#  on ArborUserPage do |page|
#    page.html.should =~ /.+<title>#{user_name}/
#  end
#end
