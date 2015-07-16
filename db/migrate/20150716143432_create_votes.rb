class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :candidate, index: true
      t.datetime   :since

      t.timestamps null: false
    end
  end
end
