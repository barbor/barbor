# encoding: utf-8

class ArborMenuAddItenPage
  include PageObject
  
  text_field :iten_title_field, :name => 'link_title'
  text_field :iten_path_field, :name => 'link_path'
  text_field :iten_description_field, :name => 'description'
  select_list :iten_weight_field, :id => 'edit-weight'
  
  button :add, :value => 'Salvar'

  def add_menu_iten menu_iten, iten_link, iten_description, iten_weight
    self.iten_title_field = menu_iten
    self.iten_path_field = iten_link
    self.iten_description_field = iten_description    
    
    self.execute_script("document.getElementById('edit-weight').style.display = 'block';")
    self.iten_weight_field = iten_weight
    self.execute_script("document.getElementById('edit-weight').style.display = 'none';")

    add
  end

end
