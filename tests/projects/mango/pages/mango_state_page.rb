# encoding: utf-8

class MangoStatePage
  include PageObject

  span :identified_user_state, :class => 'grupo-regional'

  def check_state user_state
    self.identified_user_state.should =~ /#{user_state}/
  end
end
