# encoding: utf-8

class AppleAddBasicpagePage
  include PageObject

  PageObject.javascript_framework = :jquery

  direct_url BASE_URL + 'node/add/basic-page'


  text_field :node_title_field, :name => 'title'

  #checkbox :strategic_focus_field, :class => 'form-checkbox', :index => 10

  button :submit, :name => 'op'
  
  def add_basicpage basicpage_title

    wait_for_ajax
    
    self.node_title_field = basicpage_title

    wait_for_ajax
    
    #if strategic_focus == 'Sim'
    #  self.check_strategic_focus_field
    #elsif strategic_focus_field == 'Não'
    #  self.uncheck_strategic_focus_field
    #end



    #self.execute_script("CKEDITOR.instances['edit-field-benefits-ref-und-form-body-und-0-value'].setData('" + product_benefit + "');")

    submit
  end
end
