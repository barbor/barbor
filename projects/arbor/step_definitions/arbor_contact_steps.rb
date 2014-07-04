#encoding: utf-8

Dado /^que o usuário com o nome '(.+)', email '(.+)' envia a mensagem '(.+)'$/ do |message_name, message_mail, message_text|
  visit ArborContactPage do |page| page.send_message message_name, message_mail, message_text end
end

Então /^não é exibida a mensagem de erro '(.+)'$/ do |arbor_message|
  on ArborContactPage do |page|    
    page.html.sub(/^.+messages error/, '').should_not =~ /#{arbor_message}/
  end
end
