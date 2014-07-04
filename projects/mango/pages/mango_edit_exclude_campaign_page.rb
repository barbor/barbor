# encoding: utf-8

class MangoExcludeEditCampaignPage
  include PageObject

  link :edit_campaign, :text => 'Editar'  

  def campaign_edit_exclude
    edit_campaign
  end

end
