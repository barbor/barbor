#encoding: utf-8

E /^realizo uma busca que retorna resultados$/   do
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.fill_location end
  on AppleSearchProductByNameOnSupportPagesPage do |page| page.click_on_search_by_location_button end
end

E /^clico no botão Dê sua opinião na lista de parceiros$/ do
  on GrapeProductOcqiPage do |page| page.click_on_give_your_opinion_from_partner_link end
end

Então /^devo ver o formulário com o mesmo padrão visual do formulário do mapa da página OcQi$/ do
  on GrapeProductOcqiPage do |page| page.verify_x_button_is_shown_on_give_your_feedback_form end
end

Quando /^clico fora do formulário$/ do
  on GrapeProductOcqiPage do |page| page.click_out_of_the_give_your_opinion_form end
end

Então /^o formulário continua aberto$/ do
  on GrapeProductOcqiPage do |page| page.verify_that_give_your_opinion_form_is_still_opened end
end

E /^clico no botão Dê sua opinião para abrir outro formulário$/ do
  on GrapeProductOcqiPage do |page| page.open_second_partner_form end
end

Então /^devo ver o formulário correspondente ser aberto e o que já está aberto ser fechado$/ do
  on GrapeProductOcqiPage do |page| page.which_form_is_opend_and_closed end
end

Quando /^clico no botão x dentro do formulário$/ do
  on GrapeProductOcqiPage do |page| page.close_button_click end
end

Então /^devo ver o formulário correspondente ser fechado$/ do
  on GrapeProductOcqiPage do |page| page.form_closed end
end

Quando /^envio um formulário com erros ou campos obrigatórios não preenchidos$/ do
  on GrapeProductOcqiPage do |page| page.send_give_your_opnion_form end
end

Então /^devo ver as mensagens de erro abaixo dos campos do formulário$/ do
  on GrapeProductOcqiPage do |page| page.verify_form_error end
end

Quando /^envio um formulário com campos obrigatórios preenchidos$/ do
  on GrapeProductOcqiPage do |page| page.fill_form end 
  on GrapeProductOcqiPage do |page| page.send_give_your_opnion_form end
end

Então /^devo ver apenas a mensagem de sucesso$/ do
  on GrapeProductOcqiPage do |page| page.verify_success_message end
  on GrapeProductOcqiPage do |page| page.verify_form_not_opened end
end
