class RenameColumnPosterRl < ActiveRecord::Migration[7.0]
  def change
    rename_column :movies, :poster_rl, :poster_url
  end
end
