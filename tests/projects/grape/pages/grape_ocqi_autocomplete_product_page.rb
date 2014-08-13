# encoding: utf-8

class GrapeOcqiAutocompleteProductPage
  include PageObject
  
  PageObject.javascript_framework = :jquery
  
  #link :tooltip, :href => "#"
  
  #   browser.send_keys :space
  
  text_field :product_segment_field, :id => 'token-input-edit-populate'

  def autocomplete_productorsegment
    
    #wait_for_ajax
    
    
    #browser.send_keys :space
    
    #browser.send_keys :escape
    
    #self.tooltip
    
    #self.execute_script("document.getElementById('token-input-edit-populate').value = '" + product_segment + "';")
    
    #product_segment_field
    
    #browser.send_keys :space
    
  end
  
  #def select_city ocqi_city
  #  
  #  self.execute_script("document.getElementById('edit-field-geolocation-latlon-autocomplete').value = '" + ocqi_city + "';")
  #  
  #end
  
end