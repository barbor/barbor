# encoding: utf-8

class GrapeOcqiPage
  include PageObject
  
  PageObject.javascript_framework = :jquery
  
  link :tooltip, :href => "#"
  
  #text_field :product_segment_field, :name => 'token-input-edit-populate'
  
  #text_field :product_segment_field, :id => 'token-input-edit-populate'

  def select_productorsegment product_segment
    
    browser.send_keys :escape
    
    self.tooltip
    
    self.execute_script("document.getElementById('token-input-edit-populate').value = '" + product_segment + "';")
    
    #self.execute_script("jQuery(document).click(function(){confirm('teste');});")
    
    #funciona
    self.execute_script("jQuery(document).click(function(){document.querySelector('#token-input-edit-populate').value = Date();});")
    
    #self.execute_script("document.onclick= 'alert('Hello world!')'
    
    #self.execute_script("jQuery(document).click(function(){document.querySelector('#token-input-edit-populate').dispatchEvent(click();)};);")
    
    #self.execute_script("jQuery(document).click(function(){document.querySelector('#token-input-edit-populate').click();};")
    
    #$(selector).keypress(function) 
    
    #jQuery(document).click(function(){alert('asdf');});
   
    #.onclick=function(){myScript}
    
    #aqui
    self.execute_script("document.querySelector('#token-input-edit-populate').click();")
    
    #self.execute_script("document.querySelector('#token-input-edit-populate').click();")
    
    
    
    #.onkeypress=function(){SomeJavaScriptCode}
    
    #self.execute_script("document.querySelector('#token-input-edit-populate').keypress('35');")
    
    #self.execute_script("document.getElementById('token-input-edit-populate').value = 'teste';")
    #
    #self.execute_script("document.getElementById('token-input-edit-populate').value = 'teste teste teste';")
    
    #product_segment_field
    
    #browser.send_keys :space
    
    #browser.send_keys :space
    
    #browser.send_keys :space
    
  end
  
  def select_city ocqi_city
    
    self.execute_script("document.getElementById('edit-field-geolocation-latlon-autocomplete').value = '" + ocqi_city + "';")
    
  end
  
end
