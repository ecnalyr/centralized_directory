# == Schema Information
#
# Table name: websites
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  domain_name       :string(255)
#  style             :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :website do
    name "MyString"
    domain_name "MyString"
    style "MyString"
  end
end
