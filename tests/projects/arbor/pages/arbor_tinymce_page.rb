# encoding: utf-8

#visit ArborTinymcePage do |page| page.set_tinymce tinymce_label, tinymce_value end

class ArborTinymcePage
  include PageObject

  PageObject.javascript_framework = :jquery

  #div :full_content, :id => 'content'

  def set_tinymce tinymce_label, tinymce_value
    #ckeditor_field_id = self.full_content_element.html.match(/for=".+">#{ckeditor_label}/).to_s.sub('for="','').sub(">#{ckeditor_label}",'').chop
    tinymce_field_id = self.html.match(/for=".+">#{tinymce_label}/).to_s.sub('for="','').sub(">#{tinymce_label}",'').chop
    self.execute_script("tinyMCE.get('" + tinymce_field_id + "').setContent('" + tinymce_value + "');")
  end

end


# class ArborCkeditorPage
#   include PageObject
#
#   PageObject.javascript_framework = :jquery
#
#   #div :full_content, :id => 'content'
#
#   def set_ckeditor ckeditor_label, ckeditor_value
#     #ckeditor_field_id = self.full_content_element.html.match(/for=".+">#{ckeditor_label}/).to_s.sub('for="','').sub(">#{ckeditor_label}",'').chop
#     ckeditor_field_id = self.html.match(/for=".+">#{ckeditor_label}/).to_s.sub('for="','').sub(">#{ckeditor_label}",'').chop
#     self.execute_script("CKEDITOR.instances['" + ckeditor_field_id + "'].setData('" + ckeditor_value + "');")
#   end
#
# end
