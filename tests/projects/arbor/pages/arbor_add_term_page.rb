# encoding: utf-8

class ArborAddTermPage
  include PageObject
  
  text_field :taxonomy_term_field, :id => 'edit-name'
  button :add, :value => 'Salvar'

  #def add_term term, vocabulary
  #  navigate_to BASE_URL + 'admin/structure/taxonomy/' + vocabulary + '/add'
  #end
  
  def add_term taxonomy_term
    self.taxonomy_term_field = taxonomy_term
    add
  end
end
