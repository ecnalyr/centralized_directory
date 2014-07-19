class AddAttachmentBannerToHomePages < ActiveRecord::Migration
  def self.up
    change_table :home_pages do |t|
      t.attachment :banner
    end
  end

  def self.down
    remove_attachment :home_pages, :banner
  end
end
