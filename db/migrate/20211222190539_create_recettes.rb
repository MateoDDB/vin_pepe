class CreateRecettes < ActiveRecord::Migration[6.0]
  def change
    create_table :recettes do |t|
      t.string :nom
      t.string :time
      t.string :difficulte
      t.integer :note
      t.text :description

      t.timestamps
    end
  end
end
