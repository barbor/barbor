# encoding: utf-8

class GrapeGeneralSearchPage
  include PageObject

  PageObject.javascript_framework = :jquery
  image :search_banner , :title => 'banner-busca'
  div   :search_header , :id    => 'content-header'

  def banner_hidden
    wait_for_ajax
    search_banner_element.style('visibility').should =~ /hidden/
  end

  def check_background_color
    wait_for_ajax
    search_header_element.style('background-color').should =~ /51, 175, 46/
  end
end
