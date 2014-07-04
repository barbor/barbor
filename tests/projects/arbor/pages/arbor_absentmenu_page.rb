# encoding: utf-8

class ArborAbsentMenuPage 
  include PageObject

  div :menu_block, :id => 'block-menu-block-1'

  
  def menu_absent basicpage_link
    self.menu_block_element.html.should_not =~ /#{basicpage_link}/
  end

end
