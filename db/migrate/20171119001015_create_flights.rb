class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :departure
      t.string :arrival
      t.datetime :departure_time
      t.datetime :arrival_date

      t.timestamps
    end
  end
end
