class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :name
      t.integer :park

      t.timestamps
    end
  end
end
