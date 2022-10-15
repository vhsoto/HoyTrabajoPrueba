require 'rails_helper'

RSpec.describe "providers/new", type: :view do
  before(:each) do
    assign(:provider, Provider.new(
      provider_name: "MyString",
      dni: "MyString",
      contact_name: "MyString",
      contact_tel: "MyString",
      number_bank_account: "MyString",
      bank: nil
    ))
  end

  it "renders new provider form" do
    render

    assert_select "form[action=?][method=?]", providers_path, "post" do

      assert_select "input[name=?]", "provider[provider_name]"

      assert_select "input[name=?]", "provider[dni]"

      assert_select "input[name=?]", "provider[contact_name]"

      assert_select "input[name=?]", "provider[contact_tel]"

      assert_select "input[name=?]", "provider[number_bank_account]"

      assert_select "input[name=?]", "provider[bank_id]"
    end
  end
end
