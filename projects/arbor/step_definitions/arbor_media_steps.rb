#encoding: utf-8

Quando /^o botão de mídia é pressionado$/ do 
  visit ArborMediaPage do |page| page.open_media_frame end
end

E /^a aba de Biblioteca é selecionada$/ do
  on ArborMediaPage do |page| page.select_library_tab end
end

E /^a primeira mídia é selecionada$/ do
  on ArborMediaPage do |page| page.select_media end
end

E /^o botão selecionar é pressionado$/ do
  on ArborMediaPage do |page| page.open_media_frame_for_doc end
end

E /^o documento é selecionado$/ do
  on ArborMediaPage do |page| page.select_media_document end
end

E /^clico na aba Biblioteca$/ do
  on ArborMediaPage do |page| page.select_library_tab_for_doc end
end