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
  has_one :home_page, dependent: :destroy
  accepts_nested_attributes_for :home_page

  has_one :about_page, dependent: :destroy
  accepts_nested_attributes_for :about_page

  has_one :contact_page, dependent: :destroy
  accepts_nested_attributes_for :contact_page

  has_attached_file :logo,
    bucket: Rails.application.secrets.s3_bucket,
    :s3_credentials => {
                      access_key_id: Rails.application.secrets.AWS_ACCESS_KEY_ID,
                      secret_access_key: Rails.application.secrets.AWS_SECRET_ACCESS_KEY
                    }
  validates_attachment_content_type :logo, :content_type => ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

  
  before_save :default_values

private
  def default_values
    self.home_page = home_page.presence || self.build_home_page
    self.about_page = about_page.presence || self.build_about_page
    self.contact_page = contact_page.presence || self.build_contact_page
  end
end
