class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string  :name, required: true, unique: true
    end
  end
end
