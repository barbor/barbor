#encoding: utf-8

#vs-88
Dado /^visito a a lista de usuários do sistema$/ do
  visit MelonAdminPeoplePage
end

#Dado /^que eu estou na página inicial do Portal Grape$/ do
#  visit GrapeHomePage
#end


#Dado /^que eu cadastro um produto com Título '(.+)' Subtítulo '(.+)'$/ do |product_title, product_subtitle|
#Dado /^que eu cadastro um produto com: Título '(.+)', Subtítulo '(.+)', SKU '(.+)', Etiqueta Especial '(.+)', Descrição '(.+)',$/ do |product_title, product_subtitle, product_sku, product_special_tag, product_description|
#Dado /^que eu cadastro um produto com: Título '(.+)', Subtítulo '(.+)', Destaque '(.+)', SKU '(.+)', Etiqueta Especial '(.+)', Residencial '(.+)', Descrição '(.+)', Lançamento '(.+)', Representante '(.+)', Suporte '(.+)', Instalador '(.+)', Revendedor '(.+)', Título de Benefício '(.+)', Benefício '(.+)'$/ do |product_title, product_subtitle, product_highlight, product_sku, product_special_tag, product_residential, product_description, product_release, product_representante, product_suporte, product_instalador, product_revendedor, product_benefittitle, product_benefit|
 # visit GrapeAddProductPage do |page| page.add_product product_title, product_subtitle, product_highlight, product_sku, product_special_tag, product_residential, product_description, product_release, product_representante, product_suporte, product_instalador, product_revendedor, product_benefittitle, product_benefit end
#end

#E /^cadastro Subtítulo com '(.+)'$/do |product_subtitle| 


#Dado /^que o usuário autenticado está na página com url relativa '(.+)'$/ do 
#  visit GrapeAddProductPage
#end

#Dado /^que o usuário está registrado com o nome '(.+)' e senha '(.+)'$/ do |user_name,user_pass|  
#  visit ArborLoginPage do |page| page.login_user user_name, user_pass end
#end
