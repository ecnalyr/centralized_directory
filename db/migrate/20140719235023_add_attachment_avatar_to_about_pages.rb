class AddAttachmentAvatarToAboutPages < ActiveRecord::Migration
  def self.up
    change_table :about_pages do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :about_pages, :avatar
  end
end
