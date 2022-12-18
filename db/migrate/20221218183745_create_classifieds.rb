class CreateClassifieds < ActiveRecord::Migration[7.0]
  def change
    create_table :classifieds do |t|
      t.string :title
      t.string :category
      t.string :contact_info
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
