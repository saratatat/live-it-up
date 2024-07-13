class AddDateToServices < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :date, :string
  end
end
