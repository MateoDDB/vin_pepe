class CreateBouteilles < ActiveRecord::Migration[6.0]
  def change
    create_table :bouteilles do |t|
      t.string :name
      t.string :year
      t.text :description
      t.string :note
      t.string :quantity

      t.timestamps
    end
  end
end
