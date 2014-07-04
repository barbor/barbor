#encoding: utf-8  

Quando /^a Página da Notícia é excluída$/ do
  on AppleExcludeEditNewsPage do |page| page.news_edit_exclude end
  on AppleExcludeNewsPage do |page| page.news_exclude end
end


#Quando /^se realiza a '(.+)' e se confirma a '(.+)'$/ |initial_operation, end_operation|
#  on MangoEditCampaignPage do |page| page.campaign_edit initial_operation, end_

#Quando /^'(.+)' e '(.+)' são declarados$/ do |user_cep, user_sufixo_cep|
#  on MangoCEPPage do |page| page.identify_address user_cep, user_sufixo_cep end
#end

#Então /^o estado '(.+)' é subrepticiamente identificado$/ do |user_state|
#  on MangoStatePage do |page| page.check_state user_state end
#end


#Quando /^realiza a '(.+)' e confirma a '(.+)'$/ 
