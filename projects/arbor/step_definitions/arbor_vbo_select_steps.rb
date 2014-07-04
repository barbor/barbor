#encoding: utf-8

Dado /^que o administrador busca um usuário pelo nome '(.+)'$/ do |user_name|
  visit ArborAdminPeoplePage do |page| page.find_user user_name end
end