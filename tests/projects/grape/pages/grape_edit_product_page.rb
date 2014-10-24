# encoding: utf-8

class GrapeEditProductPage
  include PageObject

  PageObject.javascript_framework = :jquery

  text_field :title_field, :id => 'edit-title--2'
  button :apply_button, :id => 'edit-submit-custom-admin-views-node'
  select_list :product_select_list, :id => 'edit-type'
  a :edit_link, :text => 'editar'

  def search_product product
  	wait_for_ajax
  	self.title_field = product
  	self.product_select_list = 'Produto'
  	apply_button
  end

  def click_edit_link
    wait_for_ajax
    edit_link
  end

end
