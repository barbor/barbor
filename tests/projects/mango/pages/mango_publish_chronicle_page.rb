# encoding: utf-8

class MangoPublishChroniclePage
  include PageObject

  direct_url BASE_URL + 'node/add/nelson-chronicle'

  text_field :chronicle_title_field, :id => 'edit-title'
  text_field :chronicle_url_field, :id => 'edit-path-alias'
  text_field :chronicle_campaign_field, :id => 'edit-field-campaign-und'

  checkbox :chronicle_print_field, :name => 'field_options[und][print]'

  checkbox :chronicle_share_field, :name => 'field_options[und][share]'

  button :publish_chronicle_button, :value => 'Publicar'

  def publish_chronicle chronicle_title,chronicle_url,chronicle_campaign,chronicle_body,chronicle_print_flag,chronicle_share_flag
    self.chronicle_title_field = chronicle_title
    self.chronicle_url_field = chronicle_url
    self.chronicle_campaign_field = chronicle_campaign
    self.execute_script("CKEDITOR.instances['edit-body-und-0-value'].setData('" + chronicle_body + "');")

    if chronicle_print_flag == 'Sim'
      self.check_chronicle_print_field
    elsif chronicle_print_flag == 'Não'
      self.uncheck_chronicle_print_field
    end

    if chronicle_share_flag == 'Sim'
      self.check_chronicle_share_field
    elsif chronicle_share_flag == 'Não'
      self.uncheck_chronicle_share_field
    end

    publish_chronicle_button
  end
end
