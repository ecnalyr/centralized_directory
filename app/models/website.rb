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

class Website < ActiveRecord::Base
  has_attached_file :logo
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
