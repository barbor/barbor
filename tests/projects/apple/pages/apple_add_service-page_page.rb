# encoding: utf-8

class AppleAddServicePage 
  include PageObject

  PageObject.javascript_framework = :jquery

  #direct_url BASE_URL + 'node/add/services'

  #div :full_content, :id => 'content'

  #label :field_label, :text => 'Informatica'

  text_field :node_title_field, :name => 'title'

  #checkbox :service_type, :class => 'form-checkbox', :index => 7

  #checkbox :service_region, :class => 'form-checkbox', :index => 9

  button :submit, :name => 'op'
  
  def add_service service_title, service_frame

    #puts 'teste'    

    #puts self.full_content_element.html
    
    #puts self.html  

    wait_for_ajax

    self.node_title_field = service_title
    #self.check_service_type
    #self.check_service_region

    #if strategic_focus == 'Sim'
    #  self.check_strategic_focus_field
    #elsif strategic_focus_field == 'Não'
    #  self.uncheck_strategic_focus_field
    #end



    self.execute_script("CKEDITOR.instances['edit-body-und-0-value'].setData('" + service_frame + "');")

    submit

    wait_for_ajax

  end
end
