require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :company_id => 1,
      :device_id => 1,
      :department => "MyText",
      :place => "MyText"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_company_id[name=?]", "location[company_id]"

      assert_select "input#location_device_id[name=?]", "location[device_id]"

      assert_select "textarea#location_department[name=?]", "location[department]"

      assert_select "textarea#location_place[name=?]", "location[place]"
    end
  end
end
