# encoding: utf-8

class MangoConfirmExcludeChroniclePage
  include PageObject

  #link :edit_campaign, :text => 'Editar'  
  button :exclude_chronicle_button, :value => 'Excluir'

  def chronicle_exclude
    exclude_chronicle_button
  end

end
