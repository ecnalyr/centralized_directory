# == Schema Information
#
# Table name: contact_pages
#
#  id         :integer          not null, primary key
#  phone      :string(255)
#  address    :string(255)
#  email      :string(255)
#  website_id :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact_page do
    phone "MyString"
    address "MyString"
    email "MyString"
    website nil
  end
end
