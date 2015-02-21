require 'rails_helper'

RSpec.describe "representatives/new", type: :view do
  before(:each) do
    assign(:representative, Representative.new(
      :name => "MyString",
      :email => "MyString",
      :mobile => "MyString",
      :area_id => 1,
      :memo => "MyText"
    ))
  end

  it "renders new representative form" do
    render

    assert_select "form[action=?][method=?]", representatives_path, "post" do

      assert_select "input#representative_name[name=?]", "representative[name]"

      assert_select "input#representative_email[name=?]", "representative[email]"

      assert_select "input#representative_mobile[name=?]", "representative[mobile]"

      assert_select "input#representative_area_id[name=?]", "representative[area_id]"

      assert_select "textarea#representative_memo[name=?]", "representative[memo]"
    end
  end
end
