require 'rails_helper'

RSpec.describe "providers/show", type: :view do
  before(:each) do
    assign(:provider, Provider.create!(
      provider_name: "Provider Name",
      dni: "Dni",
      contact_name: "Contact Name",
      contact_tel: "Contact Tel",
      number_bank_account: "Number Bank Account",
      bank: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Provider Name/)
    expect(rendered).to match(/Dni/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Tel/)
    expect(rendered).to match(/Number Bank Account/)
    expect(rendered).to match(//)
  end
end
