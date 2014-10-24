# encoding: utf-8

class GrapeEditPartnerPage
  include PageObject

  PageObject.javascript_framework = :jquery

  text_field :title_field, :id => 'edit-title--2'
  button :apply_button, :id => 'edit-submit-custom-admin-views-node'
  select_list :partner_select_list, :id => 'edit-type'
  a :edit_link, :text => 'editar'

  text_field :products_it_represents, :id => 'edit-field-products-reps-ref-und-0-target-id'
  text_field :products_it_supports, :id => 'edit-field-products-support-ref-und-0-target-id'
  text_field :products_it_installs, :id => /edit-field-products-instalation-ref-und-0-target-id/
  text_field :prodcuts_it_resells, :id => 'edit-field-products-resale-ref-und-0-target-id'

  def search_partner partner
  	wait_for_ajax
  	self.title_field = partner
  	self.partner_select_list = 'Parceiro'
  	apply_button
  end

  def click_edit_link
    wait_for_ajax
    edit_link
  end

  def add_product
    product = 'Sanduíche de ovo'

    wait_for_ajax

    self.products_it_represents = product
    sleep 2
    self.products_it_represents_element.send_keys :arrow_down
    self.products_it_represents_element.send_keys :enter

    self.products_it_supports = product
    sleep 2
    self.products_it_supports_element.send_keys :arrow_down
    self.products_it_supports_element.send_keys :enter

    self.products_it_installs = product
    sleep 2
    self.products_it_installs_element.send_keys :arrow_down
    self.products_it_installs_element.send_keys :enter

    self.prodcuts_it_resells = product
    sleep 2
    self.prodcuts_it_resells_element.send_keys :arrow_down
    self.prodcuts_it_resells_element.send_keys :enter

    sleep 1
  end

end