class CreateAustauschschulersFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :austauschschulers_flights, id: false do |t|
      t.belongs_to :austauschschuler, index: true
      t.belongs_to :flight, index: true
    end
  end
end
