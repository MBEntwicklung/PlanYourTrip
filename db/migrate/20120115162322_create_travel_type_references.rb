class CreateTravelTypeReferences < ActiveRecord::Migration
  def change
    create_table :travel_type_references do |t|
      t.references :point
      t.references :travelType

      t.timestamps
    end
    add_index :travel_type_references, :point_id
    add_index :travel_type_references, :travelType_id
  end
end
