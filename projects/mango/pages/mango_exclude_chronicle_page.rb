# encoding: utf-8

class MangoExcludeChroniclePage
  include PageObject

  #link :edit_campaign, :text => 'Editar'  
  button :exclude_chronicle_button, :value => 'Excluir'

  def chronicle_exclude
    exclude_chronicle_button
    exclude_chronicle_button
  end

end
