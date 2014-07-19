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

require 'rails_helper'

RSpec.describe HomePage, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
