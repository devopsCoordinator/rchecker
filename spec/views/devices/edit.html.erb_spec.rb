require 'rails_helper'

RSpec.describe "devices/edit", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :uuid => "MyString",
      :model => "MyString",
      :memo => "MyText"
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input#device_uuid[name=?]", "device[uuid]"

      assert_select "input#device.model_type[name=?]", "device.model_type]"

      assert_select "textarea#device_memo[name=?]", "device[memo]"
    end
  end
end
