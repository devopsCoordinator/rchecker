require 'rails_helper'

RSpec.describe "devices/edit", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :uuid => "MyString",
      :model => "MyString",
      :department => "MyString",
      :location => "MyString",
      :memo => "MyText"
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input#device_uuid[name=?]", "device[uuid]"

      assert_select "input#device_model[name=?]", "device[model]"

      assert_select "input#device_department[name=?]", "device[department]"

      assert_select "input#device_location[name=?]", "device[location]"

      assert_select "textarea#device_memo[name=?]", "device[memo]"
    end
  end
end
