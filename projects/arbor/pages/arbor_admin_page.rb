# encoding: utf-8

class ArborAdminPage
  include PageObject

  direct_url BASE_URL + 'admin'

  expected_element :class => 'title'
  h1 :access_denied_message, :class => 'title'
  #h1 :access_denied_message, :class => 'page-header'

  div :access_denied_message, :id => 'page-container'
  
  div :bootstrap_status_message, :class => 'alert alert-block alert-success'

end
