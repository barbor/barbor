# encoding: utf-8

class ArborTaxonomyStatusPage
  include PageObject

  PageObject.javascript_framework = :jquery

  div :term_status, :class => 'messages status'

  def check_message status_message
    wait_for_ajax
    self.term_status.should =~ /#{status_message}/
  end

end
