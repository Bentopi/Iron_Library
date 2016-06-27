class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :photo_url
      t.integer :price
    end
  end
end
