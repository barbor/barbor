# encoding: utf-8

class GrapeContactUsPage 
  include PageObject

  PageObject.javascript_framework = :jquery

  text_field :name_text_field,              :id => 'edit-field-contact-name-und-0-value'
  text_field :email_text_field,             :id => 'edit-field-email-und-0-email'
  text_field :subject_text_field,           :id => 'edit-field-subject-und-0-value'
  text_field :type_your_message_text_field, :id => 'edit-field-message-pt-br-0-value'

  div    :error_messages,       :class => 'messages error'

  element :sidebar,       :aside, :class => 'sidebars'
  div :contact_us_form,   :id            => 'block-entityform-block-contact-form'

  def fill_mandatory_fields
  	wait_for_ajax
  	self.name_text_field = 'Fulana de Tal'
  	self.email_text_field = 'fulano@test.com'
  	self.subject_text_field = 'Informações empresariais'
  	self.type_your_message_text_field = 'Olá, gostaria de informações de serviços e preços. Obrigado.'
  end

  def click_send_button
  	wait_for_ajax
    self.execute_script "jQuery('.entitytype-contact_form-form').trigger('submit');"
  end

  def verify_mandatory_fields_message
  	wait_for_ajax
  	error_messages_element.html.should =~ /é obrigatório/
  end

  def verify_mandatory_fields_message_not_displayed
  	wait_for_ajax
  	self.html.should_not =~ /messages error/
  	# self.html.should_not =~ /é obrigatório/
  end

  def verify_success_message_not_displayed
  	wait_for_ajax
  	self.html.should_not =~ /messages status/
  	self.html.should_not =~ /Your submission has been saved./
  end

  def verify_no_messages_displayed_on_subscription_form
    wait_for_ajax
    sidebar_element.html.should_not =~ /messages status/
    sidebar_element.html.should_not =~ /messages error/
  end

  def verify_no_messages_displayed_on_contact_us_form
    wait_for_ajax
    contact_us_form_element.html.should_not =~ /messages status/
    contact_us_form_element.html.should_not =~ /messages error/
  end

end