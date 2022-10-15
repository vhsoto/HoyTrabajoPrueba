require 'rails_helper'

RSpec.describe Bank, type: :model do
  let(:bank) { 
    Bank.new(bank_name: "test bank")
  }
  
  it "is valid with a name" do    
    expect(bank).to be_valid  
  end

  it "is not valid without a name" do
    expect(bank.bank_name).not_to be_empty
  end

  it "is not valid when the name is longer than 50 characters" do
    expect(bank.bank_name.length).to be < 50
  end  
end
