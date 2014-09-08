#encoding: utf-8

E /^o usuário aguarda pelo carregamento do ajax$/ do
  on ArborAjaxPage do |page| page.contains_ajax end
end
