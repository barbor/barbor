# encoding: utf-8

class GrapeHomePage 
  include PageObject

  expected_title 'Início | Grape'
  direct_url BASE_URL

  text_field :search_box, :id => 'edit-keywords'
  button :search, :id => 'edit-submit-generic-search'
  div :header, :class => 'region region-header'
  div :footer, :class => 'region region-bottom'

  def search_for search_term
    self.search_box = search_term
    search
  end

  def verify_desktop_lacale_options_available
  	wait_for_ajax
    header_element.html.should =~ /language-link active/
  end

  def verify_mobile_locale_options_not_available
  	wait_for_ajax
    footer_element.should_not =~ /language-link active/
  end

end
