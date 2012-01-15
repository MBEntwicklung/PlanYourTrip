class CreateTravelTypes < ActiveRecord::Migration
  def change
    create_table :travel_types do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
