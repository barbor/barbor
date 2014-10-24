# encoding: utf-8

class GrapeAddPartnerPage
 include PageObject

 PageObject.javascript_framework = :jquery

 text_field :social_reason,	:id => /edit-title--/
 text_field :city, :id => 'edit-field-address-und-0-locality'

 def fill_mandatory_fields partner
 	wait_for_ajax
 	self.social_reason = partner
    self.execute_script "jQuery('.form-checkboxes .form-item-field-partner-type-und-representative > input').click();"
    self.execute_script "jQuery('.form-checkboxes .form-item-field-partner-type-und-technical-support > input').click();"
    self.execute_script "jQuery('.form-checkboxes .form-item-field-partner-type-und-instalation > input').click();"
    self.execute_script "jQuery('.form-checkboxes .form-item-field-partner-type-und-resale > input').click();"
 end

 def fill_city
 	wait_for_ajax
 	self.city = 'Florianópolis'
 end

end
