# encoding: utf-8

class ArborEditBasicpagePage
  include PageObject

  PageObject.javascript_framework = :jquery

  link :edit, :text => 'Editar'

  def edit_basicpage
    wait_for_ajax

    edit

    wait_for_ajax
  end
end
