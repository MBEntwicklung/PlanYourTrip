class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.references :trip

      t.timestamps
    end
    add_index :points, :trip_id
  end
end
