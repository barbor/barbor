# encoding: utf-8  

Dado /^que o conteudista publica a crônica '(.+)' com URL amigável '(.+)', sob '(.+)' e corpo '(.+)' e '(.+)' e '(.+)'$/ do |chronicle_title, chronicle_url, chronicle_campaign, chronicle_body, chronicle_print_flag, chronicle_share_flag|
  visit MangoPublishChroniclePage do |page| page.publish_chronicle chronicle_title, chronicle_url,chronicle_campaign,chronicle_body, chronicle_print_flag, chronicle_share_flag end
end

Então /^o '(.+)' deve ser visível em destaque$/ do |chronicle_title|
  on MangoPublishedChroniclePage do |page| 
    page.published_chronicle_title.should =~ /#{chronicle_title}$/
  end
end

#Entao /^eu deveria ver (\d+) resultados$/ do |search_results|
#  on GrapeSearchResultsPage do |page|
#    page.search_results.should =~ /^.+#{search_results}.+$/
#  end
#end


#Dado /^que o conteudista publica a Página de Campanha '(.+)' com URL amigável '(.+)'$/ do |campaign_title,campaign_url|
#  visit MangoPublishCampaignPage do |page| page.publish_campaign campaign_title,campaign_url end
#end

#Dado /^que o conteudista publica a Página de Campanha '(.+)' com URL amigável '(.+)'$/ do |campaign_title,campaign_url|
#  visit MangoPublishCampaignPage |page| page.publish_campaign campaign_title, campaign_url end
#end


#Dado /^que o conteudista cria a Página de Campanha '(.+)'$/ do |campaign_title|
#  visit MangoAddCampaignPage do |page| page.add_campaign campaign_title end
#end

#Dado /^que escolhe o layout Moscone$/ do
  #pending # express the regexp above with the code you wish you had
#  on MangoLayoutCampaignPage do |page| page.change_layout end
#  on MangoChooseLayoutCampaignPage do |page| page.choose_moscone_layout end
#end


#Dado /^que escolhe o layout Moscone$/ do
#  on MangoLayoutCampaignPage do |page| page.change_layout end 
#  on MangoChooseLayoutCampaignPage do |page| page.choose_moscone_layout end
#end

#Dado /^que define o '(.+)'$/ do |campaign_layout|
#  on MangoLayoutCampaignPage do |page| page.change_layout end
#end

    #E define o <Layout>,
    #E adiciona um Pane do tipo 'Add text', com o conteúdo <Conteúdo>
    #Quando o usuário anônimo visita <Título>
    #Então é exibido o <Conteúdo>

#Dado /^que o conteudista cria a Página de Campanha '(.+)' com layout '(.+)'$/ do |campaing_title, campaing_layout|
#  visit MangoCampaignPage do |page| page.add_campaign campaing_title, campaign_layout
#end

#Dado /^que o conteudista cria a Página de Campanha '(.+)'$/ do |campaign_title|
#  visit PortalCalroAddCampaignPage do |page| page.add_campaign campaign_title
#end

#Quando /^'(.+)' e '(.+)' são declarados$/ do |user_cep, user_sufixo_cep|
#  on MangoCEPPage do |page| page.identify_address user_cep, user_sufixo_cep end
#end

#Então /^o estado '(.+)' é subrepticiamente identificado$/ do |user_state|
#  on MangoStatePage do |page| page.check_state user_state end
#end
