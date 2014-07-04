#encoding: utf-8

Dado /^que eu escolho a operação '(.+)' sobre o usuário com nome '(.+)'$/ do |vbo_operation, user_name|
  visit ArborVboSlectUserPage do |page| page.find_user user_name end
  on ArborVboOperateUserPage do |page| page.operate_user vbo_operation end
end

Dado /^que eu escolho a operação '(.+)' sobre o conteúdo com título '(.+)'$/ do |vbo_operation, content_title|
  visit ArborVboSlectContentPage do |page| page.find_content content_title end
end

Quando /^edito a propriedade Status para a opção '(.+)'$/ do |status_option|
  on ArborVboPropertiesUserPage do |page| page.edit_status status_option end
end

Então /^é exibida e mensagem de status '(.+)'$/ do |status_message|  
   on ArborVboPropertiesUserPage do |page|
    page.confirm_message.should =~ /#{status_message}/
  end
end


