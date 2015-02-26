# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  company_id :integer
#  device_id  :integer
#  department :string
#  place      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :location do
    company_id 1
device_id 1
department "MyText"
place "MyText"
  end

end
