# encoding: utf-8

class ArborMailPage
  include PageObject

  require 'mail'

  def check_mail receiver_mail, receiver_password, sender_mail

    Mail.defaults do
      retriever_method :pop3, :address    => "pop.gmail.com",
                              :port       => 995,
                              :user_name  => receiver_mail,
                              :password   => receiver_password,
                              :enable_ssl => true
    end

    if Mail.all.each do |target_message|
        if target_message[:From].to_s.include? sender_mail
        else
          exit
        end
      end
    else
      exit
    end

  end

end
