class RemoveRatingFromCocktail < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :rating
  end
end
