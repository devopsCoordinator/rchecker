# == Schema Information
#
# Table name: devices
#
#  id         :integer          not null, primary key
#  uuid       :string
#  model      :string
#  memo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :device do
    uuid "MyString"
model "MyString"
memo "MyText"
  end

end
