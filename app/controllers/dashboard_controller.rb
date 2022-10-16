class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @providers = Provider.count
    @banks = Bank.count
    @last_bank = Bank.last
    @last_provider = Provider.last
  end
end
