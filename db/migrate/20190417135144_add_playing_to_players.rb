class AddPlayingToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :playing, :boolean
  end
end
