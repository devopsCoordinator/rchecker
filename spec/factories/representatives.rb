# == Schema Information
#
# Table name: representatives
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  mobile     :string
#  area_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :representative do
    name "MyString"
email "MyString"
mobile "MyString"
area_id 1
  end

end
