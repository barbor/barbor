# encoding: utf-8

class AppleServicePage
  include PageObject

  PageObject.javascript_framework = :jquery

  #expected_title /.+ Busca | Grape\./
  #expected_element :class => 'view-header'
  h1 :service_title_data, :class => 'title'

  def check_service service_title

    wait_for_ajax

    self.service_title_data.should =~ /#{service_title}/

    wait_for_ajax

  end

end
