# encoding: utf-8

class ArborErrorPage
  include PageObject

  direct_url BASE_URL
  
  def visit_page relative_url
    navigate_to BASE_URL + relative_url
  end

end
