#encoding: utf-8

Então /^não vejo a imagem do banner$/ do
  on GrapeGeneralSearchPage do |page| page.banner_hidden end
end

Então /^a região da busca deve possuir cor de fundo no tom de verde padrão$/ do
  on GrapeGeneralSearchPage do |page| page.check_background_color end
end
