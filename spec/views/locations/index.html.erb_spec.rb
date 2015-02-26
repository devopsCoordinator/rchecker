require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :company_id => 1,
        :device_id => 2,
        :department => "MyText",
        :place => "MyText"
      ),
      Location.create!(
        :company_id => 1,
        :device_id => 2,
        :department => "MyText",
        :place => "MyText"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
