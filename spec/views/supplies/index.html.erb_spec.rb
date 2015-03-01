require 'rails_helper'

RSpec.describe "supplies/index", type: :view do
  before(:each) do
    assign(:supplies, [
      Supply.create!(
        :uuid => "Uuid",
        :elapsed_time => 1.5
      ),
      Supply.create!(
        :uuid => "Uuid",
        :elapsed_time => 1.5
      )
    ])
  end

  it "renders a list of supplies" do
    render
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
