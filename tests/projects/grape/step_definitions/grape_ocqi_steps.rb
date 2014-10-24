#encoding: utf-8

Quando /^seleciono o produto ou segmento '(.+)' em OcQi$/ do |product_segment|
  on GrapeOcqiPage do |page| page.select_productorsegment product_segment end
  on GrapeOcqiAutocompleteProductPage do |page| page.autocomplete_productorsegment end
end

E /^seleciono a cidade '(.+)'$/ do |ocqi_city|
  on GrapeOcqiPage do |page| page.select_city ocqi_city end
end

Quando /^preencho no campo de busca por produto ou segmento o termo '(.+)'$/ do |term|
  on GrapeOcqiPage do |page| page.fill_product_segment_field term end
end

Então /^vejo o resultado '(.+)'$/ do |result|
  on GrapeOcqiPage do |page| page.verify_autocomplete_search_result result end
end
