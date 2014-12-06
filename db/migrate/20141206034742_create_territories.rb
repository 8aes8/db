class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.string :territory_description
      t.references :region, index: true

      t.timestamps
    end
  end
end
