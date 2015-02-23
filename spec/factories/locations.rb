# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  comapny_id :integer
#  device_id  :integer
#  department :string
#  location   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :location do
    comapny_id 1
device_id 1
department "MyString"
location "MyString"
  end

end
