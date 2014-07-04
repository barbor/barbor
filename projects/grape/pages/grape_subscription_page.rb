# encoding: utf-8

class GrapeSubscriptionPage
  include PageObject

  text_field :newsletter_mail_field, :id => 'edit-field-subscription-email-und-0-email'
  button :subscription, :name => 'op'

  def subscribe_newsletter subscription_email, subcription_product, subscription_service
    self.newsletter_mail_field = subscription_email

    if subcription_product == 'Sim'
      self.execute_script("document.getElementById('edit-field-subscription-term-und-3806').checked = true;")
    elsif subcription_product == 'Não'
      self.execute_script("document.getElementById('edit-field-subscription-term-und-3806').checked = false;")
    end

    if subscription_service == 'Sim'
      self.execute_script("document.getElementById('edit-field-subscription-term-und-3805').checked = true;")
    elsif subcription_product == 'Não'
      self.execute_script("document.getElementById('edit-field-subscription-term-und-3805').checked = false;")
    end
    
    subscription
  end
end
