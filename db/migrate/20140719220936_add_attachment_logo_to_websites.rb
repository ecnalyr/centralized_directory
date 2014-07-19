class AddAttachmentLogoToWebsites < ActiveRecord::Migration
  def self.up
    change_table :websites do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :websites, :logo
  end
end
