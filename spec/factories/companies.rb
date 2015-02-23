# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string
#  area_id           :integer
#  representative_id :integer
#  memo              :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :company do
    name "MyString"
area_id 1
representative_id 1
memo "MyText"
  end

end
