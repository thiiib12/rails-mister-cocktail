class AddDescriptionUrlAndRatingToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :description, :string
    add_column :cocktails, :image_url, :string
    add_column :cocktails, :rating, :integer
  end
end
