# encoding: utf-8

class AppleAddServiceOptionPage
  include PageObject

  #div :full_content, :id => 'content'

  def select option

    #option_id = self.full_content_element.html.match(/for=".+">#{option}/).to_s.sub('for="','').sub(">#{option}",'').chop
    option_id = self.html.match(/for=".+">#{option}/).to_s.sub('for="','').sub(">#{option}",'').chop
    self.execute_script("document.getElementById('" + option_id + "').checked = true;")

  end
end
