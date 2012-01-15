class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :content
      t.string :lat
      t.string :lng
      t.references :city

      t.timestamps
    end
    add_index :destinations, :city_id
  end
end
