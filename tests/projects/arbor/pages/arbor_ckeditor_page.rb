# encoding: utf-8

class ArborCkeditorPage
  include PageObject

  PageObject.javascript_framework = :jquery

  div :full_content, :id => 'content'

  # The below method receives the label of a button, look for the received value on the HTML page, and then clicks on it.
  # def click_button button_label
  #   wait_for_ajax
  #   self.execute_script "document.querySelector('[value="+button_label+"]').click();"
  #   wait_for_ajax
  # end

  # The below method receives the label of a field and the value that will be changed for that field
  # It already works for the following kind of fields: checkbox, radio button, text and select fields.
  # def set_field field_label, field_value
  #   field_id = self.full_content_element.html.match(/for=".+">#{field_label}/).to_s.sub('for="','').sub(">#{field_label}",'').chop
  #   #field_id = self.html.match(/for=".+">#{field_label}/).to_s.sub('for="','').sub(">#{field_label}",'').chop
  #
  #   if field_value == 'Marcado'
  #     self.execute_script("document.getElementById('" + field_id  + "').checked = true;")
  #   elsif field_value == 'Desmarcado'
  #     self.execute_script("document.getElementById('" + field_id  + "').checked = false;")
  #   else
  #
  #     option_id = self.full_content_element.html.match(/value=".+">#{field_value}/).to_s.sub(/.+="/,'').sub(">#{field_value}",'').chop
  #     #option_id = self.html.match(/value=".+">#{field_value}/).to_s.sub(/.+="/,'').sub(">#{field_value}",'').chop
  #
  #     if option_id == ''
  #       self.execute_script("document.getElementById('" + field_id + "').value = '" + field_value + "';")
  #     else
  #       self.execute_script("document.getElementById('" + field_id + "').value = '" + option_id + "';")
  #     end
  #
  #   end
  # end

  def set_ckeditor ckeditor_label, ckeditor_value
    ckeditor_field_id = self.full_content_element.html.match(/for=".+">#{ckeditor_label}/).to_s.sub('for="','').sub(">#{ckeditor_label}",'').chop    
    self.execute_script("CKEDITOR.instances['" + ckeditor_field_id + "'].setData('" + ckeditor_value + "');")
  end

end