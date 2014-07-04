#encoding: utf-8


Dado /^que o cadastro da indústria é confirmado com a senha '(.+)'$/ do |user_password|
#Dado /^que o cadastro da indústria é confirmado, e é assinada a adesão à campanha$/ do
  on MelonFirstAcessStepsPage do |page| page.confirm_and_signup user_password end
  
  on MelonConfirmDataStepsPage do |page| page.confirm_data end
  #end
  #on MelonConfirmDataStepsPage do |page| page.confirm_data end
end

Quando /^o termo de adessão é assinado$/ do
  #on MelonConfirmDataStepsPage do |page| page.confirm_data end
  on MelonAgreementPage do |page| page.agree_term end
end


#Quando /^o termo de adessão é assinado$/ do
  #on MelonAgreementPage do |page| page.agree_term end
#  on MelonConfirmDataStepsPage do |page| page.confirm_data end
#end


#Dado /^que o anônimo acessa o link de reset de senha do último usuário desbloqueado$/ do
#  visit MelonTabelaIndustriasPage do |page| page.reset_password
#  end
#end

#Então /^se le a mensagem de Boas Vindas '(.+)'$/ do |welcome_message|
#  on MelonOpenningStepsPage do |page| 
#    page.initial_steps_message.should =~ /#{welcome_message}/ 
#  end
#end
