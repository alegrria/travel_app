class CreateAustauschschulers < ActiveRecord::Migration[5.0]
  def change
    create_table :austauschschulers do |t|
      t.string :name
      t.string :family_name
      t.date   :birthday
      t.string :email
      t.string :departure
      t.string :arrival

      t.timestamps
    end
  end
end
