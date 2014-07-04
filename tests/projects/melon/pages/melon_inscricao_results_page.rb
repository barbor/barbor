class MelonInscricaoResultPage
  include PageObject
  #expected_title /.+ Busca | Grape\./
  expected_element :class => 'alert-success'
  div :register_message, :class => 'alert-success'
end
