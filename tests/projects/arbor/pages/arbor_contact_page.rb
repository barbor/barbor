# encoding: utf-8

class ArborContactPage
  include PageObject

  PageObject.javascript_framework = :jquery

  direct_url BASE_URL + 'contato'

  text_field :message_name_field, :id => 'edit-field-name-und-0-value'
  text_field :message_mail_field, :id => 'edit-field-email-und-0-email'
  text_field :message_text_field, :id => 'edit-field-message-und-0-value'

  button :send, :id => 'edit-submit'

  def send_message message_name, message_mail, message_text
    self.message_name_field = message_name
    self.message_mail_field = message_mail
    self.message_text_field = message_text
    send
    wait_for_ajax
  end
end
