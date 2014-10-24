# encoding: utf-8

class GrapeProductSuccessfullyEditedPage
  include PageObject

  PageObject.javascript_framework = :jquery

  div :status_message, :class => 'messages status'

  def verify_successfully_updated_message
    wait_for_ajax
    status_message_element.html.should =~ /^.*foi atualizado.*$/
  end

end
