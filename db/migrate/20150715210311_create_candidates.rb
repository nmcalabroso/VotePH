class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :last_name, required: true
      t.string :first_name, required: true
      t.text   :slogan
      t.references :position, index: true
    end
  end
end
