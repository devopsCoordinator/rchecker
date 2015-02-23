require 'rails_helper'

RSpec.describe "representatives/edit", type: :view do
  before(:each) do
    @representative = assign(:representative, Representative.create!(
      :name => "MyString",
      :email => "MyString",
      :mobile => "MyString",
      :area_id => 1
    ))
  end

  it "renders the edit representative form" do
    render

    assert_select "form[action=?][method=?]", representative_path(@representative), "post" do

      assert_select "input#representative_name[name=?]", "representative[name]"

      assert_select "input#representative_email[name=?]", "representative[email]"

      assert_select "input#representative_mobile[name=?]", "representative[mobile]"

      assert_select "input#representative_area_id[name=?]", "representative[area_id]"
    end
  end
end
