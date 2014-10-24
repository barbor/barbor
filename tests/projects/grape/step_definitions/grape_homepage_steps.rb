#encoding: utf-8

Dado /^que estou na página inicial do Portal Intelbras$/ do
  visit GrapeHomePage
end

Então /^vejo o menu de troca de idioma no canto direito superior da página$/ do
  on GrapeHomePage do |page| page.verify_desktop_lacale_options_available end
end

E /^não vejo o menu de troca de idioma ao lado do menu de mídias sociais$/ do
  on GrapeHomePage do |page| page.verify_mobile_locale_options_not_available end
end

Então /^vejo o menu de troca de idioma ao lado do menu de mídias sociais$/ do
  on GrapeHomePageMobilePage do |page| page.verify_mobile_locale_options_available end
end

E /^não vejo o menu de troca de idioma no canto direito superior da página$/ do
  on GrapeHomePageMobilePage do |page| page.verify_desktop_lacale_options_not_available end
end

Quando /^seleciono o idioma '(.+)'$/ do |language|
  on GrapeHomePageMobilePage do |page| page.select_language language end
end

Então /^vejo o texto '(.+)'$/ do |text|
  on GrapeHomePageMobilePage do |page| page.verify_text text end
end

Dado /^que clico no idioma ativo$/ do
  on GrapeHomePageMobilePage do |page| page.active_lang_click end
end

Então /^vejo o menu de troca de idioma com todas as opções$/ do
  on GrapeHomePageMobilePage do |page| page.lang_menu_visible end
end

Dado /^que clico no idioma ativo com o menu aberto$/ do
  on GrapeHomePageMobilePage do |page| page.active_lang_click end
end

Então /^vejo o menu de troca de idiomas fechado novamente$/ do
  on GrapeHomePageMobilePage do |page| page.lang_menu_not_visible end
end

Dado /^que clico em qualquer lugar da tela$/ do
  on GrapeHomePageMobilePage do |page| page.click_anywhere end
end
