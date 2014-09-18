#encoding: utf-8

E /^o usuário aguarda '(.+)' segundos$/ do |seconds|
  on ArborAjaxPage do |page| page.sleeps_seconds seconds end
end
