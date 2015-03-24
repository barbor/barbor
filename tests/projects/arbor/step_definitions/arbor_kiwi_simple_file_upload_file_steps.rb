#encoding: utf-8

Quando /^o arquivo '(.+)' de colaboradores é enviado$/ do |simple_file_upload_file|
  visit ArborKiwiSimpleFileUploadPage do |page| page.simple_file_upload simple_file_upload_file end
end

# Quando /^o arquivo '(.+)' é enviado$/ do |upload_file|
#   visit ArborUploadPage do |page| page.upload upload_file end
# end



# Quando /^é rolada a página para '(.+)'$/ do |scroll_direction|
#   visit ArborScrollPage do |page| page.scroll_page scroll_direction end
# end
