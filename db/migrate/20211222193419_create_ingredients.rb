class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :nom
      t.string :quantite
      t.string :marque
      t.integer :note
      t.string :prix
      t.text :description
      t.references :recette, null: false, foreign_key: true

      t.timestamps
    end
  end
end
