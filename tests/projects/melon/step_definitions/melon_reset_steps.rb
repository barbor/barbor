#encoding: utf-8

Dado /^que o anônimo acessa o link de reset de senha do último usuário desbloqueado$/ do
  visit MelonTabelaIndustriasPage do |page| page.reset_password
  end
end

Então /^se le a mensagem de Boas Vindas '(.+)'$/ do |welcome_message|
  on MelonOpenningStepsPage do |page| 
    page.initial_steps_message.should =~ /#{welcome_message}/ 
  end
end
