#encoding: utf-8

Dado /^que o usuário está deslogado$/ do
  visit ArborLogoutPage
end

Quando /^tenta acessar a administração$/ do
  visit ArborAdminPage
end

Então /^ele vê a mensagem '(.+)'$/ do |access_denied_message|
  on ArborAdminPage do |page|
    #page.access_denied_message.should =~ /^#{access_denied_message}$/i
    page.html.should =~ /#{access_denied_message}/i
  end
end

Então /^ele vê pelo tema FIESC a mensagem '(.+)'$/ do |access_denied_message|
  on ArborAdminPage do |page|
    page.bootstrap_status_message.should =~ /#{access_denied_message}/
  end
end

