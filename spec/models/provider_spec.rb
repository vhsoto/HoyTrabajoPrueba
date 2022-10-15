require 'rails_helper'

RSpec.describe Provider, type: :model do
  let(:provider) { 
    Provider.new(
      provider_name: "test provider",
      contact_name: "test contact",
      contact_tel: "3654789588",
      number_bank_account: "789654123654",
      dni: "901362343-4",
    )
  }
  
  it "is not valid without a provider name and contact name" do
    expect(provider.provider_name).not_to be_empty
    expect(provider.contact_name).not_to be_empty
  end

  it "is not valid when the contact telephone is longer than 10 characters" do
    expect(provider.contact_tel.length).to be <= 10
  end  
  
  it "is not valid when the number account is longer than 15 characters" do
    expect(provider.number_bank_account.length).to be <= 15
  end 

  it "is NIT valid if it matches with the format" do
    expect(provider.dni).to match(/(\d{9}).\d?/)
  end 
end
