require 'rails_helper'

RSpec.describe "devices/index", type: :view do
  before(:each) do
    assign(:devices, [
      Device.create!(
        :uuid => "Uuid",
        :model => "Model",
        :memo => "MyText"
      ),
      Device.create!(
        :uuid => "Uuid",
        :model => "Model",
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of devices" do
    render
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
