# encoding: utf-8

class ArborMenuRemoveItenPage
  include PageObject

  PageObject.javascript_framework = :jquery
  
  link :remove_first_iten_link, :text => "apagar", :index => 1
  
  button :agree, :value => 'Confirmar'
  
  def remove_first_iten
    wait_for_ajax
    remove_first_iten_link
    wait_for_ajax
  end
  
  def remove_first_iten_agree
    wait_for_ajax
    agree
    wait_for_ajax
  end

end
