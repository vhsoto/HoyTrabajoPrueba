class DashboardController < ApplicationController
  def index
    @providers = Provider.count
    @banks = Bank.count
    @last_bank = Bank.last
    @last_provider = Provider.last
  end
end
