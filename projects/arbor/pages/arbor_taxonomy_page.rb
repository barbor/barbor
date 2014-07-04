# encoding: utf-8

class ArborTaxonomyPage
  include PageObject

  link :edit_term, :text => 'Editar'

  def access_term term_initial
    navigate_to BASE_URL + term_initial
    edit_term
  end

end
