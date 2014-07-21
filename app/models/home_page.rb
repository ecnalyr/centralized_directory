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

class HomePage < ActiveRecord::Base
  belongs_to :website

  has_attached_file :banner
  bucket: Rails.application.secrets.s3_bucket,
  :s3_credentials => {
                    access_key_id: Rails.application.secrets.AWS_ACCESS_KEY_ID,
                    secret_access_key: Rails.application.secrets.AWS_SECRET_ACCESS_KEY
                  }
  validates_attachment_content_type :logo, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end
