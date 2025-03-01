class ResetAirportIds < ActiveRecord::Migration[8.0]
  def change
    drop_table :airports
    create_table "airports", force: :cascade do |t|
      t.string "code", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
