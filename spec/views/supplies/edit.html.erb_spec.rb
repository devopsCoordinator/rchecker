require 'rails_helper'

RSpec.describe "supplies/edit", type: :view do
  before(:each) do
    @supply = assign(:supply, Supply.create!(
      :uuid => "MyString",
      :elapsed_time => 1.5
    ))
  end

  it "renders the edit supply form" do
    render

    assert_select "form[action=?][method=?]", supply_path(@supply), "post" do

      assert_select "input#supply_uuid[name=?]", "supply[uuid]"

      assert_select "input#supply_elapsed_time[name=?]", "supply[elapsed_time]"
    end
  end
end
