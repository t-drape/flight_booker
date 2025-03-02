class CreatePassengers < ActiveRecord::Migration[8.0]
  def change
    create_table :passengers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps
    end
  end
end
