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

class AboutPage < ActiveRecord::Base
  belongs_to :website

  has_attached_file :avatar
  bucket: Rails.application.secrets.s3_bucket,
  s3_credentials: {
                    access_key_id: Rails.application.secrets.AWS_ACCESS_KEY_ID,
                    secret_access_key: Rails.application.secrets.AWS_SECRET_ACCESS_KEY
                  }
  validates_attachment_content_type :logo, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
end
