# == Schema Information
#
# Table name: about_pages
#
#  id                  :integer          not null, primary key
#  header              :string(255)
#  content             :text
#  website_id          :integer
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :about_page do
    header "MyString"
    content "MyText"
  end
end
