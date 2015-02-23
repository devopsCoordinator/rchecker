require 'rails_helper'

RSpec.describe "devices/show", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :uuid => "Uuid",
      :model => "Model",
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uuid/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/MyText/)
  end
end
