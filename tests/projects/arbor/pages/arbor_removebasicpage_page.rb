# encoding: utf-8

class ArborRemoveBasicpagePage
  include PageObject

  PageObject.javascript_framework = :jquery

  button :remove, :value => 'Apagar'

  def remove_basicpage 
    wait_for_ajax

    remove

    wait_for_ajax

    remove

    wait_for_ajax
  end
end
