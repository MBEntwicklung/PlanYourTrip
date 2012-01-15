class CreateCityReferences < ActiveRecord::Migration
  def change
    create_table :city_references do |t|
      t.references :point
      t.references :city

      t.timestamps
    end
    add_index :city_references, :point_id
    add_index :city_references, :city_id
  end
end
