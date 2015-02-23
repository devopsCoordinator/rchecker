require 'rails_helper'

RSpec.describe "devices/new", type: :view do
  before(:each) do
    assign(:device, Device.new(
      :uuid => "MyString",
      :model => "MyString",
      :memo => "MyText"
    ))
  end

  it "renders new device form" do
    render

    assert_select "form[action=?][method=?]", devices_path, "post" do

      assert_select "input#device_uuid[name=?]", "device[uuid]"

      assert_select "input#device_model[name=?]", "device[model]"

      assert_select "textarea#device_memo[name=?]", "device[memo]"
    end
  end
end
