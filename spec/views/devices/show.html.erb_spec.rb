require 'rails_helper'

RSpec.describe "devices/show", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :uuid => "Uuid",
      :model => "Model",
      :department => "Department",
      :location => "Location",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uuid/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
  end
end
