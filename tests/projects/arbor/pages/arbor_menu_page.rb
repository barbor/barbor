# encoding: utf-8

class ArborMenuPage
  include PageObject

  PageObject.javascript_framework = :jquery
  
  def visit_menu menu
    wait_for_ajax
    navigate_to BASE_URL + 'admin/structure/menu/manage/' + menu + '/add'
    wait_for_ajax
  end

  def visit_menu_list menu
    wait_for_ajax
    navigate_to BASE_URL + 'admin/structure/menu/manage/' + menu
    wait_for_ajax
  end

end
