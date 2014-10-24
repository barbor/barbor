# encoding: utf-8

class GrapeProductOcqiPage
  include PageObject

  PageObject.javascript_framework = :jquery

  a      :give_your_opinion_link,      :text  => 'Dê a sua opinião'
  form   :give_your_opinion_form,      :id    => 'partner-feedback-entityform-edit-form'
  h1     :product_title,               :class => 'product-title'
  a      :close_link,                  :class => 'close'
  button :send_button,                 :class => 'form-submit ajax-processed'
  div    :give_your_opinion_container, :class => 'partner-feedback-form-container'
  div    :success_message,             :class => 'ds-1col entity entity-entityform entityform-partner-feedback view-mode-full clearfix'
  div    :partner_field,               :class => 'views-row'
  div    :first_partner_field,         :class => 'views-row views-row-1 views-row-odd views-row-first'
  div    :second_partner_field,        :class => 'views-row views-row-2 views-row-even'

  text_field :give_name,        :id => 'edit-field-contact-name-und-0-value'
  text_field :give_cpf,         :id => 'edit-field-cpf-cnpj-und-0-value'
  text_field :give_email,       :id => 'edit-field-email-und-0-email'
  text_field :give_description, :id => 'edit-field-description-und-0-value'

  def click_on_give_your_opinion_from_partner_link
    wait_for_ajax
    give_your_opinion_link
  end

  def verify_x_button_is_shown_on_give_your_feedback_form
    wait_for_ajax
    give_your_opinion_container_element.html.should =~ /class="close"/
    give_your_opinion_form_element.html.should_not =~ /Your view/
  end

  def click_out_of_the_give_your_opinion_form
    wait_for_ajax
    product_title_element.click
  end

  def verify_that_give_your_opinion_form_is_still_opened
    wait_for_ajax
    give_your_opinion_form_element.exists?
  end

  def open_second_partner_form
    wait_for_ajax
    self.execute_script "jQuery('.views-row-2 .field-name-partner-feedback a').click();"
  end

  def which_form_is_opend_and_closed
    wait_for_ajax
    first_partner_field_element.html.should_not =~ /partner-feedback-form-container/
    second_partner_field_element.html.should =~ /partner-feedback-form-container/ 
  end

  def close_button_click
    wait_for_ajax
    close_link_element.click
  end

  def form_closed
    wait_for_ajax
    partner_field_element.should_not =~ /partner-feedback-form-container/
  end

  def send_give_your_opnion_form
    wait_for_ajax
    send_button
  end

  def verify_form_error
    wait_for_ajax
    give_your_opinion_container_element.html.should =~ /class="messages error"/
    give_your_opinion_container_element.html.should =~ /<\/form><div class="messages error">/
  end

  def fill_form
    wait_for_ajax
    self.give_name = 'Jaiminho'
    self.give_cpf = '11111111111'
    self.give_email = 'jaiminho@chaves.com'
    self.give_description = 'teste'
  end

  def verify_success_message
    wait_for_ajax
    success_message_element.html.should =~ /Obrigado  por dar sua opiniao sobre nosso parceiro/
  end

  def verify_form_not_opened
    give_your_opinion_container_element.html.should_not =~ /partner-feedback-entityform-edit-form/
  end

end
