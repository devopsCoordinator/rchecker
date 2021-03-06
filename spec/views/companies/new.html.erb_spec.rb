require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :area_id => 1,
      :representative_id => 1,
      :memo => "MyText"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_area_id[name=?]", "company[area_id]"

      assert_select "input#company_representative_id[name=?]", "company[representative_id]"

      assert_select "textarea#company_memo[name=?]", "company[memo]"
    end
  end
end
