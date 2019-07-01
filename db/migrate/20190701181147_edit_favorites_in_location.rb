class EditFavoritesInLocation < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :favorites, :integer, default: 0
  end
end
