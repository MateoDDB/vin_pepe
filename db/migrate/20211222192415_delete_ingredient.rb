class DeleteIngredient < ActiveRecord::Migration[6.0]
  def change
    drop_table :ingredients
  end
end
