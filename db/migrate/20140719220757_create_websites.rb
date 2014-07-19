class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :name
      t.string :domain_name
      t.string :style

      t.timestamps
    end
  end
end
