# encoding: utf-8

class ArborRemoveTermPage
  include PageObject

  PageObject.javascript_framework = :jquery

  button :remove, :value => 'Apagar'

  def remove_term 
    wait_for_ajax
    remove
    wait_for_ajax
    remove
    wait_for_ajax
  end
end
