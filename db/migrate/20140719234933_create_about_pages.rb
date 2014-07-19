class CreateAboutPages < ActiveRecord::Migration
  def change
    create_table :about_pages do |t|
      t.string :header
      t.text :content
      t.references :website, index: true

      t.timestamps
    end
  end
end
