# encoding: utf-8

class ArborTaxonomyTermPage
  include PageObject

  PageObject.javascript_framework = :jquery

  text_field :term_name_field, :id => 'edit-name'
  button :save, :name => 'op'

  def edit_term term_final
    self.term_name_field = term_final
    save
    wait_for_ajax
  end

end
