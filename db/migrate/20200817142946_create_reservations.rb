class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :castle, null: false, foreign_key: true
      t.date :starting_date
      t.date :ending_date
      t.float :total_price
      t.string :status

      t.timestamps
    end
  end
end
