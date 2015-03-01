require 'rails_helper'

RSpec.describe "supplies/show", type: :view do
  before(:each) do
    @supply = assign(:supply, Supply.create!(
      :uuid => "Uuid",
      :elapsed_time => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uuid/)
    expect(rendered).to match(/1.5/)
  end
end
