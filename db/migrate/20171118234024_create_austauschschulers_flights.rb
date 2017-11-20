class CreateAustauschschulersFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :austauschschulers_flights, id: false do |t|
      t.integer :austauschschuler_id
      t.integer :flight_id
    end

    add_index :austauschschulers_flights, :austauschschuler_id
    add_index :austauschschulers_flights, :flight_id
  end
end
