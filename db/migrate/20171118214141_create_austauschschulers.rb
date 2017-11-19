class CreateAustauschschulers < ActiveRecord::Migration[5.0]
  def change
    create_table :austauschschulers do |t|
      t.string :name
      t.string :family_name
      t.date :birthday
      t.string :email
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
