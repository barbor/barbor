#encoding: utf-8

E /^o usuário aguarda pelo carregamento do ajax$/ do
  on ArborAjaxPage do |page| page.contains_ajax end
end

E /^o usuário aguarda '(.+)' segundos$/ do |seconds|
  on ArborAjaxPage do |page| page.sleeps_seconds seconds end
end
