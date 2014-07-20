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

require 'rails_helper'

RSpec.describe ContactPage, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
