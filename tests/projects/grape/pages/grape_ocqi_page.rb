# encoding: utf-8

class GrapeOcqiPage
  include PageObject

  PageObject.javascript_framework = :jquery

  link :tooltip, :href => "#"
  text_field :produt_or_segment_text_field, :id => 'token-input-edit-populate'
  image :tooltip_icon, :class => 'tooltipformatter'
  div :result_content, :class => 'token-input-dropdown'
  #text_field :product_search, :id => 'token-input-edit-populate'
  #text_field :product_segment_field, :name => 'token-input-edit-populate'
  #text_field :product_segment_field, :id => 'token-input-edit-populate'

  def select_productorsegment product_segment
    browser.send_keys :escape
    self.tooltip
    #product_search = 'wrn 300 - 2'
    browser.send_keys :space
    #self.execute_script("document.getElementById('token-input-edit-populate').value = 'teste';")
    #self.execute_script("document.getElementById('token-input-edit-populate').value = 'teste teste teste';")
    #product_segment_field
    #browser.send_keys :space
    #browser.send_keys :space
  end

  def select_city ocqi_city
    self.execute_script("document.getElementById('edit-field-geolocation-latlon-autocomplete').value = '" + ocqi_city + "';")
  end

  def fill_product_segment_field term
    wait_for_ajax
    tooltip
    self.produt_or_segment_text_field = term
  end

  def verify_autocomplete_search_result result
    wait_for_ajax
    sleep 5
    result_content_element.html.should =~ /#{result}/
  end

end
