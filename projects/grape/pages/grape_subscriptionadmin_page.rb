# encoding: utf-8

class GrapeSubscriptionAdminPage 
  include PageObject

  PageObject.javascript_framework = :jquery

  checkbox :first_user, :id => 'edit-views-bulk-operations-0'

  link :first_user_mail, :class => 'mailto'

  button :remove, :name => 'op'

  def remove_subscription subscription_email
   
    self.first_user_mail_element.html.should =~ /#{subscription_email}/

    self.check_first_user
    
    remove

    wait_for_ajax

    remove

    #wait_for_ajax

  end
end
