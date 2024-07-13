class AddPriceToService < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :price, :string
  end
end
