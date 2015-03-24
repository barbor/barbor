# encoding: utf-8

class ArborKeyboardPage
  include PageObject

  PageObject.javascript_framework = :jquery

  def press key_id
    # browser.send_keys :f11
    browser.send_keys key_id.to_sym
    # browser.send_keys :page_down
    # puts 'entrou'
  end

  # def scroll_page scroll_direction
  #   if scroll_direction == 'Baixo'
  #     browser.send_keys :page_down
  #   elsif scroll_direction == 'Cima'
  #     browser.send_keys :page_up
  #   end
  # end

end



# class ArborKeyboardPage
#   include PageObject
#
#   def

# class ArborFieldPage
#   include PageObject
#
#   PageObject.javascript_framework = :jquery
#
#   #div :full_content, :id => 'content'
#
#   def press key
#     self.send_keys key
#     puts key
#   end
#
#   def submit id
#     self.execute_script "jQuery('#" + id + "').trigger('submit');"
#     #self.execute_script "jQuery('#custom-graph-form').click();"
#     #puts id
#
#     #jQuery('#custom-graph-form').trigger('submit');
#     #jQuery('#custom-graph-form').submit();
#
#   end
#
#   # The below method receives the label of a button, look for the received value on the HTML page, and then clicks on it.
#   def click_button button_label
#     sleep 1
#     self.execute_script "document.querySelector('[value=" + '"' + button_label + '"' + "]').click();"
#     #self.execute_script "document.querySelector('[title=" + '"' + button_label + '"' + "]').click();"
#
#   end
#
#   def click_element_by_tag button_tag, button_tag_value
#     sleep 1
#     self.execute_script "document.querySelector('[" + button_tag + '="' + button_tag_value + '"' + "]').click();"
#     #self.execute_script "document.querySelector('[title=" + '"' + button_label + '"' + "]').click();"
#
#   end
#
#   # The below method receives the label of a field and the value that will be changed for that field
#   # It already works for the following kind of fields: checkbox, radio button, text and select fields.
#   def set_field field_label, field_value
#     #field_id = self.full_content_element.html.match(/(for=").+">#{field_label}/).to_s.sub(/^.+<\//,'').sub(/.+for="/,'').sub('for="','').sub(">#{field_label}",'').sub(/".+$/,'').sub('"', '')
#     field_id = self.html.match(/(for=").+">#{field_label}/).to_s.sub(/^.+<\//,'').sub(/.+for="/,'').sub('for="','').sub(">#{field_label}",'').sub(/".+$/,'').sub('"', '')
#     if field_value == 'Marcado'
#       self.execute_script("document.getElementById('" + field_id  + "').checked = true;")
#     elsif field_value == 'Desmarcado'
#       self.execute_script("document.getElementById('" + field_id  + "').checked = false;")
#     else
#
#       #option_id = self.full_content_element.html.match(/value=".+">#{field_value}/).to_s.sub(/.+="/,'').sub(">#{field_value}",'').chop
#       option_id = self.html.match(/value=".+">#{field_value}/).to_s.sub(/.+="/,'').sub(">#{field_value}",'').chop
#
#       if option_id == ''
#         self.execute_script("document.getElementById('" + field_id + "').value = '" + field_value + "';")
#       else
#         self.execute_script("document.getElementById('" + field_id + "').value = '" + option_id + "';")
#       end
#
#     end
#   end
#
#   def choose_by_label field_label, option
#     field_id = self.html.match(/(for=").+">#{field_label}/).to_s.sub(/^.+<\//,'').sub(/.+for="/,'').sub('for="','').sub(">#{field_label}",'').sub(/".+$/,'').sub('"', '')
#     script = "var option_val = jQuery('#" + field_id + " option:contains(\""+  option + "\")\').attr('value');"
#     script.concat("jQuery('#edit-indicator').selectpicker('val', option_val).trigger('change');")
#     self.execute_script(script)
#   end
#
#   def set_element_value_by_tag_content html_tag, tag_content, value
#     self.execute_script "document.querySelector('[" + html_tag + '="' + tag_content + '"' + "]').value = '" + value + "';"
#   end
#
# end
