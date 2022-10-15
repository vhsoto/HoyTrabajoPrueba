require 'rails_helper'

RSpec.describe "providers/index", type: :view do
  before(:each) do
    assign(:providers, [
      Provider.create!(
        provider_name: "Provider Name",
        dni: "Dni",
        contact_name: "Contact Name",
        contact_tel: "Contact Tel",
        number_bank_account: "Number Bank Account",
        bank: nil
      ),
      Provider.create!(
        provider_name: "Provider Name",
        dni: "Dni",
        contact_name: "Contact Name",
        contact_tel: "Contact Tel",
        number_bank_account: "Number Bank Account",
        bank: nil
      )
    ])
  end

  it "renders a list of providers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Provider Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Dni".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Contact Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Contact Tel".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Number Bank Account".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
