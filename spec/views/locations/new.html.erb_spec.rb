require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :company_id => 1,
      :device_id => 1,
      :department => "MyText",
      :place => "MyText"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_company_id[name=?]", "location[company_id]"

      assert_select "input#location_device_id[name=?]", "location[device_id]"

      assert_select "textarea#location_department[name=?]", "location[department]"

      assert_select "textarea#location_place[name=?]", "location[place]"
    end
  end
end
