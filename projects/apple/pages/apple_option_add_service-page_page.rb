# encoding: utf-8

class AppleAddServiceOptionPage 
  include PageObject

  #label :informatica_label, :text => 'Informatica'

  div :full_content, :id => 'content'
  
  #def select informatica
  def select option

    #informatica_id = self.informatica_label_element.html.match(/for=".+"/).to_s.sub('for="','').chop
    
    option_id = self.full_content_element.html.match(/for=".+">#{option}/).to_s.sub('for="','').sub(">#{option}",'').chop

    #puts option_id
 
    #if informatica == 'Sim'
    #  self.execute_script("document.getElementById('" + informatica_id  + "').checked = true;") 
    #elsif informatica == 'Não'
    #  self.execute_script("document.getElementById('" + informatica_id  + "').checked = false;") 
    #end

    #if informatica == 'Sim'
    self.execute_script("document.getElementById('" + option_id + "').checked = true;")
    #elsif informatica == 'Não'
    #  self.execute_script("document.getElementById('" + informatica_id  + "').checked = false;")
    #end



  end
end
