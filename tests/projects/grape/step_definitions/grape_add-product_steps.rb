#encoding: utf-8

#Dado /^que eu cadastro um produto com Título '(.+)' Subtítulo '(.+)'$/ do |product_title, product_subtitle|
#Dado /^que eu cadastro um produto com: Título '(.+)', Subtítulo '(.+)', SKU '(.+)', Etiqueta Especial '(.+)', Descrição '(.+)',$/ do |product_title, product_subtitle, product_sku, product_special_tag, product_description|


E /^é cadastrado o produto com título '(.+)', sob o segmento '(.+)', descrição '(.+)'$/ do |product_title, product_residential, product_description|
  visit GrapeAddProductPage do |page| page.add_product product_title, product_residential, product_description end
end

E /^a descrição é do tipo '(.+)'$/ do |product_description_type|
  on GrapeAddProductPage do |page| page.add_product_description_type product_description_type end
end

E /^a imagem '(.+)'$/ do |product_image|
  on GrapeAddProductPage do |page| page.add_product product_image end
end

#Dado /^que eu cadastro um produto com: Título '(.+)', Subtítulo '(.+)', Destaque '(.+)'$/ do |product_title, product_subtitle, product_highlight|
#  visit GrapeAddProductPage do |page| page.add_product product_title, product_subtitle, product_highlight end
#end


#Dado /^que eu cadastro um produto com: Título '(.+)', Subtítulo '(.+)', Destaque '(.+)', Etiqueta Especial '(.+)', Residencial '(.+)', Descrição '(.+)', Lançamento '(.+)', Representante '(.+)', Suporte '(.+)', Instalador '(.+)', Revendedor '(.+)', Título de Benefício '(.+)', Benefício '(.+)'$/ do |product_title, product_subtitle, product_highlight, product_special_tag, product_residential, product_description, product_release, product_representante, product_suporte, product_instalador, product_revendedor, product_benefittitle, product_benefit|
#  visit GrapeAddProductPage do |page| page.add_product product_title, product_subtitle, product_highlight, product_special_tag, product_residential, product_description, product_release, product_representante, product_suporte, product_instalador, product_revendedor, product_benefittitle, product_benefit end
#end

#E /^cadastro Subtítulo com '(.+)'$/do |product_subtitle|


#Dado /^que o usuário autenticado está na página com url relativa '(.+)'$/ do
#  visit GrapeAddProductPage
#end

#Dado /^que o usuário está registrado com o nome '(.+)' e senha '(.+)'$/ do |user_name,user_pass|
#  visit ArborLoginPage do |page| page.login_user user_name, user_pass end
#end
