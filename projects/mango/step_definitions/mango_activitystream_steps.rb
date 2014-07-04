#encoding: utf-8  

Quando /^importa Feeds '(.+)', '(.+)', '(.+)' através da Conta '(.+)'$/ do |activitystream_facebook, activitystream_instagram, activitystream_twitter, activitystream_import_account|
  visit MangoActivitystreamPage do |page| page.import_stream activitystream_facebook, activitystream_instagram, activitystream_twitter, activitystream_import_account end
end

Então /^são importados '(.+)' itens$/ do |imported_feeds_number|
  on MangoActivitystreamResultsPage do |page| page.check_imported_feeds imported_feeds_number end
end


#Quando /^'(.+)' e '(.+)' são declarados$/ do |user_cep, user_sufixo_cep|
#  on MangoCEPPage do |page| page.identify_address user_cep, user_sufixo_cep end
#end

#Então /^o estado '(.+)' é subrepticiamente identificado$/ do |user_state|
#  on MangoStatePage do |page| page.check_state user_state end
#end
