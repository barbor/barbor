#encoding: utf-8

Quando /^preencho os campos obrigatórios$/ do
  on GrapeContactUsPage do |page| page.fill_mandatory_fields end
end

E /^pressiono o botão Enviar$/ do
  on GrapeContactUsPage do |page| page.click_send_button end
end

Então /^vejo a mensagem informando sobre os campos obrigatórios$/ do
  on GrapeContactUsPage do |page| page.verify_mandatory_fields_message end
end

E /^não vejo a mensagem informando sobre os campos obrigatórios$/ do
  on GrapeContactUsPage do |page| page.verify_mandatory_fields_message_not_displayed end
end

E /^não vejo a mensagem de sucesso$/ do
  on GrapeContactUsPage do |page| page.verify_success_message_not_displayed end
end

E /^também não vejo mensagens no formulário de subscription$/ do
  on GrapeContactUsPage do |page| page.verify_no_messages_displayed_on_subscription_form end
end

E /^também não vejo mensagens no formulário de fale conosco$/ do
  on GrapeContactUsPage do |page| page.verify_no_messages_displayed_on_contact_us_form end
end