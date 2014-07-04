#encoding: utf-8

#Dado /^que o administrador busca um usuário pelo nome '(.+)'$/ do |user_name|
#  visit ArborAdminPeoplePage do |page| page.find_user user_name end
#end

Quando /^o usuário localizado é removido$/ do
  on ArborAdminPeopleResultsPage do |page| page.delete_user end
end

Então /^é exibida a mensagem '(.+)'$/ do |message|
  #pending # express the regexp above with the code you wish you had
  on ArborAdminPeopleResultsPage do |page|
    sleep(1)
    page.confirm_message.should =~ /#{message}/
  end
end


#Então /^é exibida e mensagem '(.+)'$/ do |message|
  #pending # express the regexp above with the code you wish you had
#  on ArborAdminPeopleResultsPage do |page|
#    page.confirm_message.should =~ /#{message}/
#  end
#end
