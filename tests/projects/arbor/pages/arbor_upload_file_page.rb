# encoding: utf-8

class ArborUploadPage
  include PageObject

  PageObject.javascript_framework = :jquery

  def upload upload_file
    puts upload_file
  end

  # def scroll_page scroll_direction
  #   if scroll_direction == 'Baixo'
  #     browser.send_keys :page_down
  #   elsif scroll_direction == 'Cima'
  #     browser.send_keys :page_up
  #   end
  # end

end
