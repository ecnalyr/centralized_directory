# == Schema Information
#
# Table name: home_pages
#
#  id                  :integer          not null, primary key
#  call_to_action      :string(255)
#  header              :string(255)
#  content             :text
#  website_id          :integer
#  created_at          :datetime
#  updated_at          :datetime
#  banner_file_name    :string(255)
#  banner_content_type :string(255)
#  banner_file_size    :integer
#  banner_updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :home_page do
    call_to_action "MyString"
    header "MyString"
    content "MyText"
    website_id nil
  end
end
