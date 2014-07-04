# encoding: utf-8

class MangoPublishCampaignPage
  include PageObject

  direct_url BASE_URL + 'node/add/campaign-page'

  text_field :campaign_title_field, :id => 'edit-title'
  text_field :campaign_url_field, :id => 'edit-path-alias'
  text_field :campaign_theme_field, :id => 'edit-field-campaign-und'

  checkbox :skip_regionalization_field, :name => 'field_skip_regionalization[und]'

  button :publish_campaign_button, :value => 'Publicar'

  def publish_campaign campaign_title,campaign_url,campaign_theme,campaign_skipregionalization
    self.campaign_title_field = campaign_title
    self.campaign_url_field = campaign_url
    self.campaign_theme_field = campaign_theme

    if campaign_skipregionalization == 'Desativada'
      self.check_skip_regionalization_field
    elsif campaign_skipregionalization == 'Ativada'
      self.uncheck_skip_regionalization_field
    end

    publish_campaign_button
  end
end
