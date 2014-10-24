# encoding: utf-8

class GrapeEditProductTabsPage
  include PageObject

  PageObject.javascript_framework = :jquery

  div :full_content, :id => 'content'
  button :save_button, :id => 'edit-submit--3'

  def verify_if_general_information_tab_and_its_fields_are_visible
    wait_for_ajax
    full_content_element.html.should =~ /^.*Nome do produto.*$/
  end

  def verify_if_fields_from_other_tabs_are_not_visible
    wait_for_ajax
    full_content_element.html.should_not =~ /^.*Especificações técnicas.*$/
    full_content_element.html.should_not =~ /^.*Instaladores.*$/
    full_content_element.html.should_not =~ /^.*Representantes.*$/
    full_content_element.html.should_not =~ /^.*Revendedores.*$/
    full_content_element.html.should_not =~ /^.*Assistências técnicas.*$/
  end

  def click_save_button
    wait_for_ajax
    save_button
  end

end
