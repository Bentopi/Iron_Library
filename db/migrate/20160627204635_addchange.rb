class Addchange < ActiveRecord::Migration
  def change
    change_column :books, :price, :float
  end
end
