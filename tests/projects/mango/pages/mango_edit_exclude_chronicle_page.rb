# encoding: utf-8

class MangoExcludeEditChroniclePage
  include PageObject

  link :edit_chronicle, :text => 'Editar'  

  def chronicle_edit_exclude
    edit_chronicle
  end

end
