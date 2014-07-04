# encoding: utf-8

class MangoExcludeCampaignPage
  include PageObject

  #link :edit_campaign, :text => 'Editar'  
  button :exclude_campaign_button, :value => 'Excluir'

  def campaign_exclude
    exclude_campaign_button
    exclude_campaign_button
  end

end
