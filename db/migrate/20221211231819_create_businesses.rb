class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :category
      t.string :one_liner
      t.string :business_email
      t.string :business_phone
      t.text :description
      t.string :logo_url
      t.boolean :shop_online
      t.string :website

      t.timestamps
    end
  end
end
