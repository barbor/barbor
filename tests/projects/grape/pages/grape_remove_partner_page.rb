# encoding: utf-8

class GrapeRemovePartnerPage
  include PageObject

  PageObject.javascript_framework = :jquery

  a :remove_link, :text => 'apagar'
  button :exclude_button, :id => 'edit-submit--3'

  def click_remove_link
    wait_for_ajax
    remove_link
  end

  def click_remove_button
    wait_for_ajax
    exclude_button
  end

end
