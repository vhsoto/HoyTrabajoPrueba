# frozen_string_literal: true

class DashboardComponent < ViewComponent::Base
  def initialize(item:, msg:)
    @item = item
    @msg = msg
  end
end
