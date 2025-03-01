class AddDuration < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :duration, :time
    add_column :flights, :duration, :float
  end
end
