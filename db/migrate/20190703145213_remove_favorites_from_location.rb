class RemoveFavoritesFromLocation < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :favorites
  end
end
