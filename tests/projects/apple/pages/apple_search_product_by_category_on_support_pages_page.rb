# encoding: utf-8

class AppleSearchProductByCategoryOnSupportPagesPage
  include PageObject

  PageObject.javascript_framework = :jquery

  a :search_product_by_name_button, :text => 'Buscar produto por nome'
  div :filter, :id => 'title-filter'
 
  def click_on_search_by_product_name_button
  	wait_for_ajax
    filter_element.html.should =~ /^.*ui-tabs-hide.*$/
  	search_product_by_name_button
  end
  
end