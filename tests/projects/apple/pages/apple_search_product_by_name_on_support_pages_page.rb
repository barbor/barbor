# encoding: utf-8

class AppleSearchProductByNameOnSupportPagesPage
  include PageObject

  PageObject.javascript_framework = :jquery

  div        :filter,                                     :id    => 'title-filter'
  text_field :search_by_product_name_text_field,          :id    => 'edit-title'
  button     :search_by_product_name_button,              :class => 'global-filter-set-default form-submit form-button-disabled'
  button     :search_by_location_button,                  :id    => 'edit-submit-partners-solr'
  text_field :search_by_location_text_field,              :id    => 'edit-field-geolocation-latlon-autocomplete'
  text_field :search_by_location_text_field_after_search, :id    => 'edit-field-geolocation-latlon--2-autocomplete'
  button     :search_by_location_button_after_search,     :id    => 'edit-submit-partners-solr--2'
  list_item  :ocqi_list_item,                             :text  => /Onde comprar/
  list_item  :technical_assitance_item,                   :text  => 'Assistências técnicas'
  div        :no_results_msg,                             :id    => 'view-empty'
  form       :ocqi_geolocation_form,                      :id    => 'views-exposed-form-partners-solr-product-reseller-installer'

  def verify_filter
  	wait_for_ajax
  	filter_element.html.should_not =~ /ui-tabs-hide/
  end

  def select_product product
  	wait_for_ajax
  	self.search_by_product_name_text_field = product
  	sleep 3
  	search_by_product_name_text_field_element.send_keys :arrow_down
  	search_by_product_name_text_field_element.send_keys :enter
    wait_for_ajax
    self.search_by_product_name_button_element.click
    wait_for_ajax
    sleep 3
  	search_by_location_button_element.html.should =~ /disabled="disabled"/
  end

  def fill_location
  	wait_for_ajax
  	sleep 3
    self.search_by_location_text_field = 'floria'
    sleep 3
    search_by_location_button_element.html.should =~ /disabled="disabled"/
    search_by_location_text_field_element.send_keys :arrow_down
    search_by_location_text_field_element.send_keys :enter
    sleep 3
    search_by_location_button_element.html.should_not =~ /disabled="disabled"/
  end

  def click_on_search_by_location_button
    wait_for_ajax
    search_by_location_button
  end

  def clear_location
    wait_for_ajax
    self.search_by_location_text_field_after_search = ''
  end

  def verify_search_by_location_button_after_clear_search_by_location_text_field
    wait_for_ajax
    search_by_location_button_after_search_element.html.should =~ /disabled="disabled"/
  end

  def select_section section
    wait_for_ajax
    if section == 'OcQi'
      self.ocqi_list_item_element.click
    end
    if section == 'Assistências técnicas'
      self.technical_assitance_item_element.click
    end
  end

  def remove_ocqi_form section
    wait_for_ajax
    if section == 'Assistências técnicas'
      self.execute_script "jQuery('#views-exposed-form-partners-solr-product-reseller-installer').remove();"  
    end
  end

  def fill_and_select_product product
    wait_for_ajax
    self.search_by_product_name_text_field = product
    wait_for_ajax
    sleep 3
    search_by_product_name_text_field_element.send_keys :arrow_down
    search_by_product_name_text_field_element.send_keys :enter
  end

  def verify_search_by_product_name_button_is_enabled
    wait_for_ajax
    sleep 3
    search_by_product_name_button_element.enabled?
  end

  def clean_search_by_product_name_field
    wait_for_ajax
    self.search_by_product_name_text_field = ''
  end

  def verify_search_by_product_name_button_is_disabled
    wait_for_ajax
    sleep 3
    search_by_product_name_button_element.disabled?
  end

  def verify_message_not_displayed
    wait_for_ajax
    no_results_msg_element.visible?
  end

end
