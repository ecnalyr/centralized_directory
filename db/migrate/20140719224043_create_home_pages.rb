class CreateHomePages < ActiveRecord::Migration
  def change
    create_table :home_pages do |t|
      t.string :call_to_action
      t.string :header
      t.text :content
      t.references :website, index: true

      t.timestamps
    end
  end
end
