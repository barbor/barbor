# encoding: utf-8

class ArborAjaxPage
  include PageObject

  PageObject.javascript_framework = :jquery

  def contains_ajax
    wait_for_ajax
  end

end
