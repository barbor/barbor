#encoding: utf-8

Dado /^que o usuário anônimo se inscreve com CNPJ '(.+)' e e-mail '(.+)'$/ do |user_cnpj,user_mail|
  visit MelonRegisterPage do |page| page.register_user user_cnpj, user_mail end
end

Então /^ele vê a mensagem de confirmação de inscrição '(.+)'$/ do |register_message|
  on MelonInscricaoResultPage do |page|
   page.register_message.should =~ /#{register_message}/
  end
end

#Dado /^que o usuário está registrado com o nome '(.+)' e senha '(.+)'$/ do |user_name,user_pass|  
#  visit ArborLoginPage do |page| page.login_user user_name, user_pass end
#end

#Quando /^ele acessa a página do usuário$/ do
#  visit ArborUserPage
#end

#Então /^ele vê o nome '(.+)'$/ do |user_name|
#  on ArborUserPage do |page|
#    page.user_name.should =~ /^#{user_name}$/
#  end
#end
