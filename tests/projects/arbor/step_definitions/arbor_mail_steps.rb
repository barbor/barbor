#encoding: utf-8

Então /^é recebida em '(.+)', com senha '(.+)', mensagem de '(.+)'$/ do |receiver_mail, receiver_password, sender_mail|
  on ArborMailPage do |page| page.check_mail receiver_mail, receiver_password, sender_mail end
end
