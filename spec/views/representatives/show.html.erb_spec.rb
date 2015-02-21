require 'rails_helper'

RSpec.describe "representatives/show", type: :view do
  before(:each) do
    @representative = assign(:representative, Representative.create!(
      :name => "Name",
      :email => "Email",
      :mobile => "Mobile",
      :area_id => 1,
      :memo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
