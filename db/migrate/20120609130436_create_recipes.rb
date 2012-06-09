class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :author
      t.string :category
      t.text :instructions
      t.string :image

      t.timestamps
    end
  end
end
