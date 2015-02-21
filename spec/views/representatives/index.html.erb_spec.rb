require 'rails_helper'

RSpec.describe "representatives/index", type: :view do
  before(:each) do
    assign(:representatives, [
      Representative.create!(
        :name => "Name",
        :email => "Email",
        :mobile => "Mobile",
        :area_id => 1,
        :memo => "MyText"
      ),
      Representative.create!(
        :name => "Name",
        :email => "Email",
        :mobile => "Mobile",
        :area_id => 1,
        :memo => "MyText"
      )
    ])
  end

  it "renders a list of representatives" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
