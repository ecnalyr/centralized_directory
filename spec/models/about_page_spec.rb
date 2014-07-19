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

require 'rails_helper'

RSpec.describe AboutPage, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
