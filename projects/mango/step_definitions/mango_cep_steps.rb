#encoding: utf-8  

Quando /^'(.+)' e '(.+)' são declarados$/ do |user_cep, user_sufixo_cep|
  on MangoCEPPage do |page| page.identify_address user_cep, user_sufixo_cep end
end

Então /^o estado '(.+)' é subrepticiamente identificado$/ do |user_state|
  on MangoStatePage do |page| page.check_state user_state end
end
