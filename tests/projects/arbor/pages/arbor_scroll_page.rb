# encoding: utf-8

class ArborScrollPage
  include PageObject

  PageObject.javascript_framework = :jquery

  def scroll_page scroll_direction
    if scroll_direction == 'Baixo'
      browser.send_keys :page_down
    elsif scroll_direction == 'Cima'
      browser.send_keys :page_up
    end
  end

end
