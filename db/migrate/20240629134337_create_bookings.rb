class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.datetime :date
      t.references :service, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
