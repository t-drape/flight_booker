class PassengerBelongsTo < ActiveRecord::Migration[8.0]
  def change
    drop_table :passengers
    create_table "passengers", force: :cascade do |t|
      t.string "name", null: false
      t.string "email", null: false
      t.belongs_to :booking
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
