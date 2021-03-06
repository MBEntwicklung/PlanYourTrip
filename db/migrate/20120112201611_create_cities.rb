class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.text :content
      t.string :lat
      t.string :lng
      t.references :country

      t.timestamps
    end
    add_index :cities, :country_id
  end
end
