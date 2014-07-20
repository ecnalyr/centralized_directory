class CreateContactPages < ActiveRecord::Migration
  def change
    create_table :contact_pages do |t|
      t.string :phone
      t.string :address
      t.string :email
      t.references :website, index: true

      t.timestamps
    end
  end
end
