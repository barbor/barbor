# encoding: utf-8

class ArborTextFieldPage 
  include PageObject

  div :full_content, :id => 'content'

  def set_text field_label, field_value
    field_id = self.full_content_element.html.match(/for=".+">#{field_label}/).to_s.sub('for="','').sub(">#{field_label}",'').chop
    self.execute_script("document.getElementById('" + field_id + "').value = '" + field_value + "';")
  end
end
