## encoding: utf-8
#
#class GrapeAddProductPage
#  include PageObject
#
#  direct_url BASE_URL + 'node/add/product'
#  #direct_url 'http://ckeditor.com/demo'
#
#  text_field :node_title_field, :name => 'title'
#  text_field :node_subtitle_field, :name => 'field_subtitle[und][0][value]'
#
#  checkbox :node_highlight_field, :name => 'field_segment_highlighted[und][1]'
#
#  text_field :node_sku_field, :name => 'field_sku[und][0][value]'
#  text_field :node_special_tag_field, :name => 'field_special_tags[und]'
#  
#  checkbox :node_residential_field, :name => 'field_segments[und][0][3499][3499]'
#  
#  #edit-field-product-descriptions-und-0-field-segment-ref  
#    
#  checkbox :node_release_field, :name => 'field_release[und][1]'
#  
#  text_field :node_representante_field, :name => 'field_partner_reps_ref[und][0][target_id]'
#  text_field :node_suporte_field, :name => 'field_partner_support_ref[und][0][target_id]'
#  
#  text_field :node_instalador_field, :name => 'field_partner_instalation_ref[und][0][target_id]'
#  text_field :node_revendedor_field, :name => 'field_partner_resale_ref[und][0][target_id]'
#  
#  text_field :node_benefittitle_field, :name => 'field_benefits_ref[und][form][title]'
#
#  
#  
#  #field_partner_instalation_ref[und][0][target_id]
#  
#  #text_field :node_description_field, :id => 'edit-field-product-descriptions-und-0-field-description-und-0-value'
#  #link :node_toggle_description, :a => 'wysiwyg-toggle-edit-field-product-descriptions-und-0-field-description-und-0-value' 
#  #text_field :user_pass_field, :id => 'edit-pass'
#  button :submit, :name => 'op'
#  
#  def add_product product_title, product_subtitle, product_highlight, product_special_tag, product_residential, product_description, product_release, product_representante, product_suporte, product_instalador, product_revendedor, product_benefittitle, product_benefit
#    
#    self.node_title_field = product_title
#    self.node_subtitle_field = product_subtitle
#    
#    #self.node_highlight_field = product_highlight
#    if product_highlight == 'Sim'
#      self.check_node_highlight_field
#    elsif product_highlight == 'Não'
#      self.uncheck_node_highlight_field
#    end
#    
#    #self.node_sku_field = product_sku
#    self.node_special_tag_field = product_special_tag
#    
#    if product_residential == 'Sim'
#      self.check_node_residential_field
#    elsif product_residential == 'Não'
#      self.uncheck_node_residential_field
#    end
#    
#    
#    #self.goto 'http://ckeditor.com/demo'
#    #self.execute_script("CKEDITOR.instances['edit-field-benefits-ref-und-form-body-und-0-value'].setData('Caralho! Funciona!!');")   
#    
#    
#    self.execute_script("CKEDITOR.instances['edit-field-product-descriptions-und-0-field-description-und-0-value'].setData('" + product_description + "');")
#    
#    #self.execute_script("CKEDITOR.instances['edit-field-benefits-ref-und-form-body-und-0-value'].setData('" + product_description + "');")
#    
#    #self.execute_script("CKEDITOR.instances['textarea.editor'].setData('Caralho! Funciona!!');")
#    #self.frame(:title => 'Rich text editor, editor1, press ALT 0 for help.').send_keys 'hello world again'
#    
#    if product_release == 'Sim'
#      self.check_node_release_field
#    elsif product_release == 'Não'
#      self.uncheck_node_release_field
#    end    
#    
#    
#    self.node_representante_field = product_representante
#    self.node_suporte_field = product_suporte    
#    self.node_instalador_field = product_instalador
#    self.node_revendedor_field = product_revendedor
#    
#    self.node_benefittitle_field = product_benefittitle
#    
#    self.execute_script("CKEDITOR.instances['edit-field-benefits-ref-und-form-body-und-0-value'].setData('" + product_benefit + "');")
#    
#    
#    #self.node_toggle_description
#    #self.link(:a =>'wysiwyg-toggle-edit-field-product-descriptions-und-0-field-description-und-0-value').when_present.click     
#    #click wysiwyg-toggle-edit-field-product-descriptions-und-0-field-description-und-0-value
#    #self.node_description_field = product_description
#    submit
#  end
#end
